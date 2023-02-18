#include "op2.h"
#include "op3.h"

int main() {

  avx_test_op2();
  avx_test_op3();

  printf(">> AVX Passed\n");
  return 0;
}
