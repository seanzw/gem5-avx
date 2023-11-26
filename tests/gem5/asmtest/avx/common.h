#ifndef AVX_TEST_COMMON_H
#define AVX_TEST_COMMON_H

#include <immintrin.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#define zmm_ps_cnt 16
#define ymm_ps_cnt 8
#define zmmd_pd_cnt 8
#define ymmd_pd_cnt 4
#define zmmi_pi8_cnt 64
#define ymmi_pi8_cnt 32
#define zmmi_pi16_cnt 32
#define ymmi_pi16_cnt 16
#define zmmi_pi32_cnt 16
#define ymmi_pi32_cnt 8
#define zmmi_pi64_cnt 8
#define ymmi_pi64_cnt 4
union vreg
{
    __m512 zmm;
    __m512d zmmd;
    __m512i zmmi;
    __m256 ymm;
    __m256d ymmd;
    __m256i ymmi;
    float ps[zmm_ps_cnt];
    double pd[zmmd_pd_cnt];
    int8_t pi8[zmmi_pi8_cnt];
    int16_t pi16[zmmi_pi16_cnt];
    int32_t pi32[zmmi_pi32_cnt];
    int64_t pi64[zmmi_pi64_cnt];
};

#ifdef VERBOSE
#define PRINTF(...) printf(__VA_ARGS__)
#else
#define PRINTF(...)
#endif

#endif
