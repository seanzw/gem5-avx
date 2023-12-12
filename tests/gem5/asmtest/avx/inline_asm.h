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

__attribute__((noinline)) int avx_test_fmaddss_impl(union vreg a, union vreg b,
                                                    union vreg c,
                                                    union vreg expected) {

  union vreg result;
  result.xmm = _mm_fmadd_ss(a.xmm, b.xmm, c.xmm);

  if (result.ps[0] != expected.ps[0]) {
    printf(">> AVX Failed fmaddss: %f expect %f\n", result.ps[0],
           expected.ps[0]);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_fmaddss() {

  union vreg a, b, c, expected;

  a.ps[0] = 2.0f;
  b.ps[0] = 3.0f;
  c.ps[0] = 1.0f;
  expected.ps[0] = a.ps[0] * b.ps[0] + c.ps[0];

  avx_test_fmaddss_impl(a, b, c, expected);

  return 0;
}

__attribute__((noinline)) int
avx_test_vbroadcastf64x4_impl(union vreg a, union vreg c, union vreg expected) {

  union vreg result;

  __asm__("vbroadcastf64x4 %1, %%zmm1\n\t"
          "vmovapd %%zmm1, %0\n\t"
          : "=m"(result.zmmd)
          : "m"(a.ymmd)
          : "%zmm1");

  for (int i = 0; i < zmmd_pd_cnt; ++i) {
    if (result.pd[i] != expected.pd[i]) {
      printf(">> AVX Failed vbroadcastf64x4: %d %lf expect %lf\n", i,
             result.pd[i], expected.pd[i]);
      exit(1);
    }
  }

  return 0;
}

__attribute__((noinline)) int avx_test_vbroadcastf64x4() {

  union vreg a, b, c, expected;

  for (int i = 0; i < zmmd_pd_cnt; ++i) {
    a.pd[i] = i;
    expected.pd[i] = a.pd[i & 0x3];
  }

  avx_test_vbroadcastf64x4_impl(a, c, expected);

  return 0;
}

__attribute__((noinline)) int
avx_test_vbroadcastf32x4_impl(union vreg a, union vreg c, union vreg expected) {

  union vreg result;

  __asm__("vbroadcastf32x4 %1, %%zmm1\n\t"
          "vmovapd %%zmm1, %0\n\t"
          : "=m"(result.zmm)
          : "m"(a.xmm)
          : "%zmm1");

  for (int i = 0; i < zmm_ps_cnt; ++i) {
    if (result.ps[i] != expected.ps[i]) {
      printf(">> AVX Failed vbroadcastf32x4: %d %f expect %f\n", i,
             result.pd[i], expected.pd[i]);
      exit(1);
    }
  }

  return 0;
}

__attribute__((noinline)) int avx_test_vbroadcastf32x4() {

  union vreg a, b, c, expected;

  for (int i = 0; i < zmm_ps_cnt; ++i) {
    a.ps[i] = i;
    expected.ps[i] = a.ps[i & 0x3];
  }

  avx_test_vbroadcastf32x4_impl(a, c, expected);

  return 0;
}

__attribute__((noinline)) int avx_test_vmovlps_impl(union vreg a, union vreg c,
                                                    union vreg expected) {

  union vreg result;

  __asm__("movq %1, %%xmm1\n\t"
          "vmovlps %%xmm1, %0\n\t"
          : "=m"(result.pd[0])
          : "r"(a.pd[0])
          : "%zmm1");

  if (result.pd[0] != expected.pd[0]) {
    printf(">> AVX Failed vmovlps: %lf expect %lf\n", result.pd[0],
           expected.pd[0]);
    exit(1);
  }

  // Also test vmovhps.
  __asm__("movhpd %1, %%xmm1\n\t"
          "vmovhps %%xmm1, %0\n\t"
          : "=m"(result.pd[0])
          : "m"(a.pd[0])
          : "%zmm1");

  if (result.pd[0] != expected.pd[0]) {
    printf(">> AVX Failed vmovhps: %lf expect %lf\n", result.pd[0],
           expected.pd[0]);
    exit(1);
  }

  return 0;
}

__attribute__((noinline)) int avx_test_vmovlps() {

  union vreg a, b, c, expected;

  for (int i = 0; i < zmmd_pd_cnt; ++i) {
    a.pd[i] = i;
    expected.pd[i] = a.pd[i];
  }

  avx_test_vmovlps_impl(a, c, expected);

  return 0;
}

void avx_test_inline_asm() {
  avx_test_andnq();
  avx_test_shlxq();
  avx_test_vpcmpgtq();
  avx_test_kunpckbw();
  avx_test_fmaddss();
  avx_test_vbroadcastf64x4();
  avx_test_vbroadcastf32x4();
  avx_test_vmovlps();
}

#endif
