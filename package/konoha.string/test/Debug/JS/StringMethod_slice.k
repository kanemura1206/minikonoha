//written by Joseph

K.import("konoha.string");

void test() {
	assert("Hello, world!".slice(1, 5) == "ello");
	assert("Hello, world!".slice(1, -2) == "ello worl");
	assert("Hello, world!".slice(1, -23) == "");

	assert("Hello, world!".slice(5) == ", world!");
	assert("Hello, world!".slice(-5) == "orld!");
	
	assert("Hello, world!".slice(-3, -6) == "");
	assert("Hello, world!".slice(-6, -3) == "wor");
}

test();
