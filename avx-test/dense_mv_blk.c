#include <malloc.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#include "immintrin.h"

typedef float Value;

#define CHECK
// #define WARM_CACHE

#define N 256
#define M 1024
#define Bx 16
#define By 4

__attribute__((noinline)) Value foo(Value *A, Value *B, Value *C) {
  // #pragma clang loop vectorize(disable)
  for (uint64_t i = 0; i < N; i += By) {
    Value localSum[By][Bx] = {0};
    for (uint64_t j = 0; j < M; j += Bx) {
      __m512 valB = _mm512_load_ps(B + j);
      for (uint64_t by = 0; by < By; ++by) {
        uint64_t idxA = (i + by) * M + j;
        __m512 valA = _mm512_load_ps(A + idxA);
        __m512 valC = _mm512_load_ps(localSum[by]);
        __m512 valM = _mm512_mul_ps(valA, valB);
        __m512 valS = _mm512_add_ps(valM, valC);
        _mm512_store_ps(localSum[by], valS);
      }
    }
    #pragma GCC unroll 1
    for (uint64_t by = 0; by < By; ++by) {
      __m512 valS = _mm512_load_ps(localSum[by]);
      Value sum = _mm512_reduce_add_ps(valS);
      C[i + by] = sum;
    }
  }
  return 0.0f;
}

#define CACHE_BLOCK_SIZE 64

int main() {

  Value *A = (Value *)aligned_alloc(CACHE_BLOCK_SIZE, N * M * sizeof(Value));
  Value *B = (Value *)aligned_alloc(CACHE_BLOCK_SIZE, M * sizeof(Value));
  Value *C = (Value *)aligned_alloc(CACHE_BLOCK_SIZE, N * sizeof(Value));
  for (int i = 0; i < N * M; ++i) {
    A[i] = 1 % N;
  }
  for (int i = 0; i < M; ++i) {
    B[i] = i;
  }

  printf("Begin foo.\n");
  volatile Value c = foo(A, B, C);
  printf("End foo.\n");

#ifdef CHECK
  int pass = 1;
  for (int i = 0; i < N; ++i) {
    Value expected = 0;
    for (int j = 0; j < M; ++j) {
      expected += A[i * M + j] * B[j];
    }
    if (fabs(expected - C[i]) > 0.001f) {
      printf("Error in result %d, expected %f, got %f.\n", i, expected, C[i]);
      pass = 0;
    }
  }
  if (pass) {
    printf("Passed test.\n");
  }
#endif

  return 0;
}
