//written by Joseph

K.import("konoha.string");

void test() {
	assert("こんにちは、世界".indexOf("世界") == 6);
	assert("こんにちは、世界".indexOf("せかい") == -1);
	assert("こんにちは、世界".indexOf("世界", 0) == 6);
	assert("こんにちは、世界".indexOf("世界", 5) == 6);
	assert("こんにちは、世界".indexOf("世界", 6) == 6);
	assert("こんにちは、世界".indexOf("世界", 9) == -1);
	//NOTE: The length of "Hello world." is 11
	assert("こんにちは、世界".indexOf("", 7) == 7);
	assert("こんにちは、世界".indexOf("", 8) == 8);
	assert("こんにちは、世界".indexOf("", 9) == 8);
	//Check if a specific string exists within the string.
	assert(("こんにちは、世界".indexOf("世界") != -1) == true);
	assert(("こんにちは、世界".indexOf("せかい") != -1) == false);
}

test();
