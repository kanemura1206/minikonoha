/* written by shinpei nakata */

K.import("konoha.bytes");

void test () {
	 assert("hoge".asBytes().encodeTo("EUC-JP").decodeFrom("EUC-JP") == "hoge");
	 assert("ほげほげ".asBytes().encodeTo("EUC-JP").decodeFrom("EUC-JP") == "ほげほげ");
}

test();
