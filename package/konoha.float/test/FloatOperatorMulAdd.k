// generated by kimio kurmaitsu

K.import("konoha.float");

float fabs(float v) {
    if(v < 0.0) return -v;
    return v;
}



void test() {
  int a = 1;
  float fa = 3.14159;
  System.p(0.5 * 0.5 + 0.5); // 0.750000
  System.p(0.5 * 0.5 + a); // 1.250000
  System.p(0.5 * 0.5 + fa); // 3.391590
  System.p(0.5 * 0.5 + fabs(-3.0)); // 3.250000
  System.p(0.5 * 0.5 + 3.14159); // 3.391590
  System.p(0.5 * 0.5 + -fa); // -2.891590
  System.p(0.5 * a + 0.5); // 1.000000
  System.p(0.5 * a + a); // 1.500000
  System.p(0.5 * a + fa); // 3.641590
  System.p(0.5 * a + fabs(-3.0)); // 3.500000
  System.p(0.5 * a + 3.14159); // 3.641590
  System.p(0.5 * a + -fa); // -2.641590
  System.p(0.5 * fa + 0.5); // 2.070795
  System.p(0.5 * fa + a); // 2.570795
  System.p(0.5 * fa + fa); // 4.712385
  System.p(0.5 * fa + fabs(-3.0)); // 4.570795
  System.p(0.5 * fa + 3.14159); // 4.712385
  System.p(0.5 * fa + -fa); // -1.570795
  System.p(0.5 * fabs(-3.0) + 0.5); // 2.000000
  System.p(0.5 * fabs(-3.0) + a); // 2.500000
  System.p(0.5 * fabs(-3.0) + fa); // 4.641590
  System.p(0.5 * fabs(-3.0) + fabs(-3.0)); // 4.500000
  System.p(0.5 * fabs(-3.0) + 3.14159); // 4.641590
  System.p(0.5 * fabs(-3.0) + -fa); // -1.641590
  System.p(0.5 * 3.14159 + 0.5); // 2.070795
  System.p(0.5 * 3.14159 + a); // 2.570795
  System.p(0.5 * 3.14159 + fa); // 4.712385
  System.p(0.5 * 3.14159 + fabs(-3.0)); // 4.570795
  System.p(0.5 * 3.14159 + 3.14159); // 4.712385
  System.p(0.5 * 3.14159 + -fa); // -1.570795
  System.p(0.5 * -fa + 0.5); // -1.070795
  System.p(0.5 * -fa + a); // -0.570795
  System.p(0.5 * -fa + fa); // 1.570795
  System.p(0.5 * -fa + fabs(-3.0)); // 1.429205
  System.p(0.5 * -fa + 3.14159); // 1.570795
  System.p(0.5 * -fa + -fa); // -4.712385
  System.p(a * 0.5 + 0.5); // 1.000000
  System.p(a * 0.5 + a); // 1.500000
  System.p(a * 0.5 + fa); // 3.641590
  System.p(a * 0.5 + fabs(-3.0)); // 3.500000
  System.p(a * 0.5 + 3.14159); // 3.641590
  System.p(a * 0.5 + -fa); // -2.641590
  System.p(a * a + 0.5); // 1.500000
  System.p(a * a + a); // 2
  System.p(a * a + fa); // 4.141590
  System.p(a * a + fabs(-3.0)); // 4.000000
  System.p(a * a + 3.14159); // 4.141590
  System.p(a * a + -fa); // -2.141590
  System.p(a * fa + 0.5); // 3.641590
  System.p(a * fa + a); // 4.141590
  System.p(a * fa + fa); // 6.283180
  System.p(a * fa + fabs(-3.0)); // 6.141590
  System.p(a * fa + 3.14159); // 6.283180
  System.p(a * fa + -fa); // 0.000000
  System.p(a * fabs(-3.0) + 0.5); // 3.500000
  System.p(a * fabs(-3.0) + a); // 4.000000
  System.p(a * fabs(-3.0) + fa); // 6.141590
  System.p(a * fabs(-3.0) + fabs(-3.0)); // 6.000000
  System.p(a * fabs(-3.0) + 3.14159); // 6.141590
  System.p(a * fabs(-3.0) + -fa); // -0.141590
  System.p(a * 3.14159 + 0.5); // 3.641590
  System.p(a * 3.14159 + a); // 4.141590
  System.p(a * 3.14159 + fa); // 6.283180
  System.p(a * 3.14159 + fabs(-3.0)); // 6.141590
  System.p(a * 3.14159 + 3.14159); // 6.283180
  System.p(a * 3.14159 + -fa); // 0.000000
  System.p(a * -fa + 0.5); // -2.641590
  System.p(a * -fa + a); // -2.141590
  System.p(a * -fa + fa); // 0.000000
  System.p(a * -fa + fabs(-3.0)); // -0.141590
  System.p(a * -fa + 3.14159); // 0.000000
  System.p(a * -fa + -fa); // -6.283180
  System.p(fa * 0.5 + 0.5); // 2.070795
  System.p(fa * 0.5 + a); // 2.570795
  System.p(fa * 0.5 + fa); // 4.712385
  System.p(fa * 0.5 + fabs(-3.0)); // 4.570795
  System.p(fa * 0.5 + 3.14159); // 4.712385
  System.p(fa * 0.5 + -fa); // -1.570795
  System.p(fa * a + 0.5); // 3.641590
  System.p(fa * a + a); // 4.141590
  System.p(fa * a + fa); // 6.283180
  System.p(fa * a + fabs(-3.0)); // 6.141590
  System.p(fa * a + 3.14159); // 6.283180
  System.p(fa * a + -fa); // 0.000000
  System.p(fa * fa + 0.5); // 10.369588
  System.p(fa * fa + a); // 10.869588
  System.p(fa * fa + fa); // 13.011178
  System.p(fa * fa + fabs(-3.0)); // 12.869588
  System.p(fa * fa + 3.14159); // 13.011178
  System.p(fa * fa + -fa); // 6.727998
  System.p(fa * fabs(-3.0) + 0.5); // 9.924770
  System.p(fa * fabs(-3.0) + a); // 10.424770
  System.p(fa * fabs(-3.0) + fa); // 12.566360
  System.p(fa * fabs(-3.0) + fabs(-3.0)); // 12.424770
  System.p(fa * fabs(-3.0) + 3.14159); // 12.566360
  System.p(fa * fabs(-3.0) + -fa); // 6.283180
  System.p(fa * 3.14159 + 0.5); // 10.369588
  System.p(fa * 3.14159 + a); // 10.869588
  System.p(fa * 3.14159 + fa); // 13.011178
  System.p(fa * 3.14159 + fabs(-3.0)); // 12.869588
  System.p(fa * 3.14159 + 3.14159); // 13.011178
  System.p(fa * 3.14159 + -fa); // 6.727998
  System.p(fa * -fa + 0.5); // -9.369588
  System.p(fa * -fa + a); // -8.869588
  System.p(fa * -fa + fa); // -6.727998
  System.p(fa * -fa + fabs(-3.0)); // -6.869588
  System.p(fa * -fa + 3.14159); // -6.727998
  System.p(fa * -fa + -fa); // -13.011178
  System.p(fabs(-3.0) * 0.5 + 0.5); // 2.000000
  System.p(fabs(-3.0) * 0.5 + a); // 2.500000
  System.p(fabs(-3.0) * 0.5 + fa); // 4.641590
  System.p(fabs(-3.0) * 0.5 + fabs(-3.0)); // 4.500000
  System.p(fabs(-3.0) * 0.5 + 3.14159); // 4.641590
  System.p(fabs(-3.0) * 0.5 + -fa); // -1.641590
  System.p(fabs(-3.0) * a + 0.5); // 3.500000
  System.p(fabs(-3.0) * a + a); // 4.000000
  System.p(fabs(-3.0) * a + fa); // 6.141590
  System.p(fabs(-3.0) * a + fabs(-3.0)); // 6.000000
  System.p(fabs(-3.0) * a + 3.14159); // 6.141590
  System.p(fabs(-3.0) * a + -fa); // -0.141590
  System.p(fabs(-3.0) * fa + 0.5); // 9.924770
  System.p(fabs(-3.0) * fa + a); // 10.424770
  System.p(fabs(-3.0) * fa + fa); // 12.566360
  System.p(fabs(-3.0) * fa + fabs(-3.0)); // 12.424770
  System.p(fabs(-3.0) * fa + 3.14159); // 12.566360
  System.p(fabs(-3.0) * fa + -fa); // 6.283180
  System.p(fabs(-3.0) * fabs(-3.0) + 0.5); // 9.500000
  System.p(fabs(-3.0) * fabs(-3.0) + a); // 10.000000
  System.p(fabs(-3.0) * fabs(-3.0) + fa); // 12.141590
  System.p(fabs(-3.0) * fabs(-3.0) + fabs(-3.0)); // 12.000000
  System.p(fabs(-3.0) * fabs(-3.0) + 3.14159); // 12.141590
  System.p(fabs(-3.0) * fabs(-3.0) + -fa); // 5.858410
  System.p(fabs(-3.0) * 3.14159 + 0.5); // 9.924770
  System.p(fabs(-3.0) * 3.14159 + a); // 10.424770
  System.p(fabs(-3.0) * 3.14159 + fa); // 12.566360
  System.p(fabs(-3.0) * 3.14159 + fabs(-3.0)); // 12.424770
  System.p(fabs(-3.0) * 3.14159 + 3.14159); // 12.566360
  System.p(fabs(-3.0) * 3.14159 + -fa); // 6.283180
  System.p(fabs(-3.0) * -fa + 0.5); // -8.924770
  System.p(fabs(-3.0) * -fa + a); // -8.424770
  System.p(fabs(-3.0) * -fa + fa); // -6.283180
  System.p(fabs(-3.0) * -fa + fabs(-3.0)); // -6.424770
  System.p(fabs(-3.0) * -fa + 3.14159); // -6.283180
  System.p(fabs(-3.0) * -fa + -fa); // -12.566360
  System.p(3.14159 * 0.5 + 0.5); // 2.070795
  System.p(3.14159 * 0.5 + a); // 2.570795
  System.p(3.14159 * 0.5 + fa); // 4.712385
  System.p(3.14159 * 0.5 + fabs(-3.0)); // 4.570795
  System.p(3.14159 * 0.5 + 3.14159); // 4.712385
  System.p(3.14159 * 0.5 + -fa); // -1.570795
  System.p(3.14159 * a + 0.5); // 3.641590
  System.p(3.14159 * a + a); // 4.141590
  System.p(3.14159 * a + fa); // 6.283180
  System.p(3.14159 * a + fabs(-3.0)); // 6.141590
  System.p(3.14159 * a + 3.14159); // 6.283180
  System.p(3.14159 * a + -fa); // 0.000000
  System.p(3.14159 * fa + 0.5); // 10.369588
  System.p(3.14159 * fa + a); // 10.869588
  System.p(3.14159 * fa + fa); // 13.011178
  System.p(3.14159 * fa + fabs(-3.0)); // 12.869588
  System.p(3.14159 * fa + 3.14159); // 13.011178
  System.p(3.14159 * fa + -fa); // 6.727998
  System.p(3.14159 * fabs(-3.0) + 0.5); // 9.924770
  System.p(3.14159 * fabs(-3.0) + a); // 10.424770
  System.p(3.14159 * fabs(-3.0) + fa); // 12.566360
  System.p(3.14159 * fabs(-3.0) + fabs(-3.0)); // 12.424770
  System.p(3.14159 * fabs(-3.0) + 3.14159); // 12.566360
  System.p(3.14159 * fabs(-3.0) + -fa); // 6.283180
  System.p(3.14159 * 3.14159 + 0.5); // 10.369588
  System.p(3.14159 * 3.14159 + a); // 10.869588
  System.p(3.14159 * 3.14159 + fa); // 13.011178
  System.p(3.14159 * 3.14159 + fabs(-3.0)); // 12.869588
  System.p(3.14159 * 3.14159 + 3.14159); // 13.011178
  System.p(3.14159 * 3.14159 + -fa); // 6.727998
  System.p(3.14159 * -fa + 0.5); // -9.369588
  System.p(3.14159 * -fa + a); // -8.869588
  System.p(3.14159 * -fa + fa); // -6.727998
  System.p(3.14159 * -fa + fabs(-3.0)); // -6.869588
  System.p(3.14159 * -fa + 3.14159); // -6.727998
  System.p(3.14159 * -fa + -fa); // -13.011178
  System.p(-fa * 0.5 + 0.5); // -1.070795
  System.p(-fa * 0.5 + a); // -0.570795
  System.p(-fa * 0.5 + fa); // 1.570795
  System.p(-fa * 0.5 + fabs(-3.0)); // 1.429205
  System.p(-fa * 0.5 + 3.14159); // 1.570795
  System.p(-fa * 0.5 + -fa); // -4.712385
  System.p(-fa * a + 0.5); // -2.641590
  System.p(-fa * a + a); // -2.141590
  System.p(-fa * a + fa); // 0.000000
  System.p(-fa * a + fabs(-3.0)); // -0.141590
  System.p(-fa * a + 3.14159); // 0.000000
  System.p(-fa * a + -fa); // -6.283180
  System.p(-fa * fa + 0.5); // -9.369588
  System.p(-fa * fa + a); // -8.869588
  System.p(-fa * fa + fa); // -6.727998
  System.p(-fa * fa + fabs(-3.0)); // -6.869588
  System.p(-fa * fa + 3.14159); // -6.727998
  System.p(-fa * fa + -fa); // -13.011178
  System.p(-fa * fabs(-3.0) + 0.5); // -8.924770
  System.p(-fa * fabs(-3.0) + a); // -8.424770
  System.p(-fa * fabs(-3.0) + fa); // -6.283180
  System.p(-fa * fabs(-3.0) + fabs(-3.0)); // -6.424770
  System.p(-fa * fabs(-3.0) + 3.14159); // -6.283180
  System.p(-fa * fabs(-3.0) + -fa); // -12.566360
  System.p(-fa * 3.14159 + 0.5); // -9.369588
  System.p(-fa * 3.14159 + a); // -8.869588
  System.p(-fa * 3.14159 + fa); // -6.727998
  System.p(-fa * 3.14159 + fabs(-3.0)); // -6.869588
  System.p(-fa * 3.14159 + 3.14159); // -6.727998
  System.p(-fa * 3.14159 + -fa); // -13.011178
  System.p(-fa * -fa + 0.5); // 10.369588
  System.p(-fa * -fa + a); // 10.869588
  System.p(-fa * -fa + fa); // 13.011178
  System.p(-fa * -fa + fabs(-3.0)); // 12.869588
  System.p(-fa * -fa + 3.14159); // 13.011178
  System.p(-fa * -fa + -fa); // 6.727998
}

test();
