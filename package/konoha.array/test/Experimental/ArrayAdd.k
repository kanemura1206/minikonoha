// written by shinpei

K.import("konoha.array");
K.import("konoha.class");
void f () {
	int[] ia = new int[0];
	ia.add(4);
	ia.add(3);
	assert(ia[0] == 4);
	assert(ia[1] == 3);
}

f();
