// written by kimio kuramitsu

K.import("konoha.class");

class C {
	int x;
	@Virtual int succ() {
		return x;
	}
}

void test() {
	C c = new C();
	assert(c.succ() == 0);
}

test();

