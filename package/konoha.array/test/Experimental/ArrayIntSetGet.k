/* written by shinpei */
K.import("konoha.new");
K.import("konoha.assign");
K.import("konoha.array");

void f() {
	Array[int] ia = new int[8];
	ia.set(0, 0);
	int x = ia.get(0);
	assert(x == 0);

	ia.set(5, 5);
	x = ia.get(5);
	assert(x == 5);
}

f();
