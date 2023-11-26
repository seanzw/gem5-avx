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

void avx_test_inline_asm() {
  avx_test_andnq();
}

#endif
