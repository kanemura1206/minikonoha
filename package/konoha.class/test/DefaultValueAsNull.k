// written by kimio

K.import("konoha.class");
K.import("konoha.null");

class C {
	int x;
	int y;
}

void test() {
	C c;  // set to default value of C
	//assert(c.x == 0);
	//assert(c.y == 0);
	assert(c.isNull());
}

test();

