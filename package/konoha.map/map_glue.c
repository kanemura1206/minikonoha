/****************************************************************************
 * Copyright (c) 2012, the Konoha project authors. All rights reserved.
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  * Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 * ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 ***************************************************************************/

#include<minikonoha/minikonoha.h>
#include<minikonoha/sugar.h>
#include<minikonoha/klib.h>

typedef struct kMapVar kMap;
struct kMapVar {
	KonohaObjectHeader h;
	KUtilsHashMap *map;
};

#define Map_isUnboxData(o)    (TFLAG_is(uintptr_t,(o)->h.magicflag,kObject_Local1))
#define Map_setUnboxData(o,b) TFLAG_set(uintptr_t,(o)->h.magicflag,kObject_Local1,b)


static void kMap_init(KonohaContext *kctx, kObject *o, void *conf)
{
	kMap *map = (kMap*)o;
	map->map = KLIB Kmap_init(kctx, 4);
	if(TY_isUnbox(O_p0(map))) {
		Map_setUnboxData(map, true);
	}
}

kObjectVar** KONOHA_reftail(KonohaContext *kctx, size_t size);

static void MapUnboxEntry_reftrace(KonohaContext *kctx, KUtilsHashMapEntry *p, void *thunk)
{
	BEGIN_REFTRACE(1);
	KREFTRACEv(p->stringKey);
	END_REFTRACE();
}

static void MapObjectEntry_reftrace(KonohaContext *kctx, KUtilsHashMapEntry *p, void *thunk)
{
	BEGIN_REFTRACE(2);
	KREFTRACEn(p->stringKey);
	KREFTRACEv(p->objectValue);
	END_REFTRACE();
}

static void kMap_reftrace(KonohaContext *kctx, kObject *o)
{
	kMap *map = (kMap*)o;
	if(TY_isUnbox(O_p0(map))) {
		KLIB Kmap_each(kctx, map->map, NULL, MapUnboxEntry_reftrace);
	}
	else {
		KLIB Kmap_each(kctx, map->map, NULL, MapObjectEntry_reftrace);
	}
}

static void kMap_free(KonohaContext *kctx, kObject *o)
{
	kMap *map = (kMap*)o;
	if (map->map != NULL) {
		KLIB Kmap_free(kctx, map->map, NULL);
	}
}

static void kMap_p(KonohaContext *kctx, KonohaStack *sfp, int pos, KUtilsWriteBuffer *wb, int level)
{
	// TODO
}

/* ------------------------------------------------------------------------ */
/* method */

static uintptr_t String_hashCode(KonohaContext *kctx, kString *s)
{
	return strhash(S_text(s), S_size(s));  // FIXME: slow

}

static KUtilsHashMapEntry* kMap_getEntry(KonohaContext *kctx, kMap *m, kString *key, kbool_t isNewIfNULL)
{
	uintptr_t hcode = String_hashCode(kctx, key);
	const char *tkey = S_text(key);
	size_t tlen = S_size(key);
	KUtilsHashMapEntry *e = KLIB Kmap_get(kctx, m->map, hcode);
	while(e != NULL) {
		if(e->hcode == hcode && tlen == S_size(e->stringKey) && strncmp(S_text(e->stringKey), tkey, tlen) == 0) {
			return e;
		}
		e = e->next;
	}
	if(isNewIfNULL) {
		e = KLIB Kmap_newEntry(kctx, m->map, hcode);
		KINITv(e->stringKey, key);
		if(!Map_isUnboxData(m)) {
			KINITv(e->objectValue, K_NULL);
		}
		return e;
	}
	return NULL;
}

//## method Boolean Map.has(T1 key);
static KMETHOD Map_has(KonohaContext *kctx, KonohaStack *sfp)
{
	kMap *m = (kMap*)sfp[0].asObject;
	KUtilsHashMapEntry *e = kMap_getEntry(kctx, m, sfp[1].asString, false/*new_if_NULL*/);
	RETURNd_((e != NULL));
}

//## T0 Map.get(String key);
static KMETHOD Map_get(KonohaContext *kctx, KonohaStack *sfp)
{
	kMap *m = (kMap*)sfp[0].asObject;
	KUtilsHashMapEntry *e = kMap_getEntry(kctx, m, sfp[1].asString, false/*new_if_NULL*/);
	if(Map_isUnboxData(m)) {
		uintptr_t u = (e == NULL) ? 0 : e->unboxValue;
		RETURNd_(u);
	}
	else if(e != NULL) {
		RETURN_(e->objectValue);
	}
	RETURN_DefaultObjectValue();
}

//## method void Map.set(String key, T0 value);
static KMETHOD Map_set(KonohaContext *kctx, KonohaStack *sfp)
{
	kMap *m = (kMap*)sfp[0].asObject;
	KUtilsHashMapEntry *e = kMap_getEntry(kctx, m, sfp[1].asString, true/*new_if_NULL*/);
	if(Map_isUnboxData(m)) {
		e->unboxValue = sfp[2].unboxValue;
	}
	else {
		KSETv(m, e->objectValue, sfp[2].asObject);
	}
	RETURNvoid_();
}

//## method void Map.remove(String key);
static KMETHOD Map_remove(KonohaContext *kctx, KonohaStack *sfp)
{
	kMap *m = (kMap*)sfp[0].asObject;
	KUtilsHashMapEntry *e = kMap_getEntry(kctx, m, sfp[1].asString, false/*new_if_NULL*/);
	if(e != NULL) {
		KLIB Kmap_remove(m->map, e);
	}
	RETURNvoid_();
}

static void MapEntry_appendKey(KonohaContext *kctx, KUtilsHashMapEntry *p, void *thunk)
{
	kArray *a = (kArray*)thunk;
	KLIB kArray_add(kctx, a, p->stringKey);
}

//## T0[] Map.keys();
static KMETHOD Map_keys(KonohaContext *kctx, KonohaStack *sfp)
{
	kMap *m = (kMap*)sfp[0].asObject;
	KonohaClass *cArray = CT_p0(kctx, CT_Array, O_p0(m));
	kArray *a = (kArray*)(KLIB new_kObject(kctx, cArray, m->map->size));
	KSETv_AND_WRITE_BARRIER(NULL, sfp[K_RTNIDX].asArray, a, GC_NO_WRITE_BARRIER);
	KLIB Kmap_each(kctx, m->map, (void*)a, MapEntry_appendKey);
	RETURN_DefaultObjectValue();
}

////## T0 Map.();
//static KMETHOD Map_(KonohaContext *kctx, KonohaStack *sfp)
//{
//	kMap *m = (kMap*)sfp[0].asObject;
//	int argc = kctx->esp - sfp - 2;   // believe me
//	ksymbol_t methodName = (ksymbol_t)kctx->esp[-1].unboxValue;
//
//}

//static KMETHOD Map_new(KonohaContext *kctx, KonohaStack *sfp)
//{
//	RETURN_(KLIB new_kObject(kctx, O_ct(sfp[K_RTNIDX].o), 0));
//}

/* ------------------------------------------------------------------------ */

#define _Public   kMethod_Public
#define _Const    kMethod_Const
#define _Im       kMethod_Immutable
#define _Coercion kMethod_Coercion
#define _F(F)   (intptr_t)(F)

#define CT_Map cMap
#define TY_Map cMap->typeId
static	kbool_t map_initPackage(KonohaContext *kctx, kNameSpace *ns, int argc, const char**args, kfileline_t pline)
{
	KDEFINE_CLASS defMap = {
		STRUCTNAME(Map),
		.cflag = kClass_Final,
		.init = kMap_init,
		.free = kMap_free,
		.p     = kMap_p,
	};
	KonohaClass *cMap = KLIB Konoha_defineClass(kctx, ns->packageId, PN_konoha, NULL, &defMap, pline);
	KonohaClassVar *ct = (KonohaClassVar *)CT_Map;
	ct->p0 = TY_Object; // default
	KDEFINE_METHOD MethodData[] = {
		_Public, _F(Map_get), TY_0, TY_Map, MN_("get"), 1, TY_String, FN_("key"),
		_Public, _F(Map_set), TY_void, TY_Map, MN_("set"), 2, TY_String, FN_("key"), TY_0, FN_("value"),
//		_Public, _F(Map_new), TY_Map, TY_Map, MN_("new"), 0,
		DEND,
	};
	KLIB kNameSpace_loadMethodData(kctx, ns, MethodData);
	return true;
}

static kbool_t map_setupPackage(KonohaContext *kctx, kNameSpace *ns, isFirstTime_t isFirstTime, kfileline_t pline)
{
	return true;
}

static kbool_t map_initNameSpace(KonohaContext *kctx,  kNameSpace *ns, kfileline_t pline)
{
	// TODO: map literal
	KDEFINE_SYNTAX SYNTAX[] = {
			{ .keyword = KW_END, },
	};
	SUGAR kNameSpace_defineSyntax(kctx, ns, SYNTAX);
	return true;
}

static kbool_t map_setupNameSpace(KonohaContext *kctx, kNameSpace *ns, kfileline_t pline)
{
	return true;
}


KDEFINE_PACKAGE* map_init(void)
{
	static KDEFINE_PACKAGE d = {
		KPACKNAME("map", "1.0"),
		.initPackage = map_initPackage,
		.setupPackage = map_setupPackage,
		.initNameSpace = map_initNameSpace,
		.setupNameSpace = map_setupNameSpace,
	};
	return &d;
}

// --------------------------------------------------------------------------
