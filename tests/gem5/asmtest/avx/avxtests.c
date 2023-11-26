#include "op2.h"
#include "op3.h"
#include "inline_asm.h"

int main() {

  avx_test_op2();
  avx_test_op3();
  avx_test_inline_asm();

  printf(">> AVX Passed\n");
  return 0;
}
