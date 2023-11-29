#ifndef AVX_TEST_INLINE_ASM_H
#define AVX_TEST_INLINE_ASM_H

#include "common.h"

__attribute__((noinline)) int avx_test_andnq() {

  uint64_t a = 0x0123456789abcdef;
  uint64_t b = 0xfedcba9876543210;
  uint64_t c = 0;
  uint64_t c_expected = b;

  __asm__("andnq %1, %2, %0\n\t" : "=r"(c) : "r"(b), "r"(a) :);

  if (c != c_expected) {
    printf(">> AVX Failed andnq: %#lx expect %#lx\n", c, c_expected);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_shlxq() {

  uint64_t a = 0x1;
  uint64_t b = 0x5;
  uint64_t c = 0;
  uint64_t c_expected = 32;

  __asm__("shlxq %1, %2, %0\n\t" : "=r"(c) : "r"(b), "r"(a) :);

  if (c != c_expected) {
    printf(">> AVX Failed shlxq: %#lx expect %#lx\n", c, c_expected);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_vpcmpgtq_impl(union vreg a, union vreg b,
                                                     int64_t expected) {

  __mmask8 result = _mm512_cmpgt_epi64_mask(a.zmmi, b.zmmi);

  if (result != expected) {
    printf(">> AVX Failed vpcmpgtq: %#hhx expect %#lx\n", result, expected);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_vpcmpgtq() {

  union vreg a, b;

  int64_t expected = 0;

  for (int i = 0; i < zmmi_pi64_cnt; ++i) {
    a.pi64[i] = i;
    b.pi64[i] = zmmi_pi64_cnt - i;
    expected |= (a.pi64[i] > b.pi64[i]) << i;
  }

  avx_test_vpcmpgtq_impl(a, b, expected);

  return 0;
}

__attribute__((noinline)) int avx_test_kunpckbw_impl(union vreg a, union vreg b,
                                                     union vreg expected) {

  __mmask16 result = _mm512_kunpackb(a.mask16, b.mask16);

  if (result != expected.mask16) {
    printf(">> AVX Failed kunpckbw: %#hx expect %#hx\n", result,
           expected.mask16);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_kunpckbw() {

  union vreg a, b, expected;

  a.mask16 = 0xAB;
  b.mask16 = 0xCD;
  expected.mask16 = 0xABCD;

  avx_test_kunpckbw_impl(a, b, expected);

  return 0;
}

void avx_test_inline_asm() {
  avx_test_andnq();
  avx_test_shlxq();
  avx_test_vpcmpgtq();
  avx_test_kunpckbw();
}

#endif
