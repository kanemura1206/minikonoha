// written by Masahiro Ide
K.import("openssl");
K.import("konoha");

void f() {
    MD5 md5 = new MD5();
    md5.update("abcd");
    System.p(md5.final());

    SHA1 sha1 = new SHA1();
    sha1.update("abcd");
    System.p(sha1.final());

}

f();
