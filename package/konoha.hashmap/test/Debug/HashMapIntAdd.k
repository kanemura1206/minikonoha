K.import("konoha.hashmap");
K.import("konoha.new");

void f() {
    HashMap[int] m = new HashMap[int]();
    m.set("hoge", 1);
    m.set("ohge", 2); // same hcode
    p(m.get("hoge"));
    p(m.get("ohge"));
}

f();
