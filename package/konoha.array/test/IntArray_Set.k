// written by kimio kuramitsu

K.import("konoha.array");

void test() {
  int[] a = [1, 2, 9];
  a.set(2, 3);
  assert(a.get(0) == 1);
  assert(a.get(1) == 2);
  assert(a.get(2) == 3);
  assert(a.getSize() == 3);
}


test();

