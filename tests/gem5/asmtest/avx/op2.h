#ifndef AVX_TEST_OP2_H
#define AVX_TEST_OP2_H

#include "common.h"

#define CHECK_REG(INST, INTRIN, REG, ELEM, TYPE, FORMAT)                      \
    __attribute__((noinline)) int INST##_check_##REG(union vreg r,            \
                                                     union vreg c)            \
    {                                                                         \
        int failed = 0;                                                       \
        _Pragma("clang loop unroll(disable) vectorize(disable)")              \
        for (int i = 0; i < REG##_##ELEM##_cnt; ++i)                          \
        {                                                                     \
            TYPE expected = c.ELEM[i];                                        \
            TYPE actual = r.ELEM[i];                                          \
            PRINTF("Get %d " #FORMAT " " #FORMAT ".\n", i, expected, actual); \
            if (expected != actual)                                           \
            {                                                                 \
                failed = 1;                                                   \
            }                                                                 \
        }                                                                     \
        if (failed)                                                           \
        {                                                                     \
            printf(">> AVX Failed " #INST "_" #REG "\n");                     \
            exit(1);                                                          \
        }                                                                     \
        return 0;                                                             \
    }

#define TEST_OP2_IMPL(INST, INTRIN, REG, ELEM, TYPE, FORMAT)                  \
    CHECK_REG(INST, INTRIN, REG, ELEM, TYPE, FORMAT)                          \
    __attribute__((noinline)) int INST##_##REG(union vreg a, union vreg b,    \
                                               union vreg c)                  \
    {                                                                         \
        union vreg r;                                                         \
        r.REG = INTRIN(a.REG, b.REG);                                         \
                                                                              \
        INST##_check_##REG(r, c);                                             \
        return 0;                                                             \
    }

#define TEST_OP_REGIMM_IMPL(INST, INTRIN, REG, ELEM, TYPE, FORMAT, IMM)       \
    CHECK_REG(INST, INTRIN, REG, ELEM, TYPE, FORMAT)                          \
    __attribute__((noinline)) int INST##_##REG(union vreg a, union vreg c)    \
    {                                                                         \
        union vreg r;                                                         \
        r.REG = INTRIN(a.REG, IMM);                                           \
                                                                              \
        INST##_check_##REG(r, c);                                             \
        return 0;                                                             \
    }

#define TEST_PS_OP2_IMPL(INST, INTRIN, REG)                                   \
    TEST_OP2_IMPL(INST, INTRIN, REG, ps, float, "%f")

#define TEST_PS_OP2(INST, INTRIN)                                             \
    TEST_PS_OP2_IMPL(INST, _mm512_##INTRIN, zmm)                              \
    TEST_PS_OP2_IMPL(INST, _mm256_##INTRIN, ymm)

TEST_PS_OP2(vaddps, add_ps)
TEST_PS_OP2(vsubps, sub_ps)
TEST_PS_OP2(vmulps, mul_ps)
TEST_PS_OP2(vdivps, div_ps)
TEST_PS_OP2(vminps, min_ps)
TEST_PS_OP2(vmaxps, max_ps)
TEST_PS_OP2(vxorps, xor_ps)
TEST_PS_OP2(vandps, and_ps)
TEST_PS_OP2(vunpcklps, unpacklo_ps)

#define TEST_PD_OP2_IMPL(INST, INTRIN, REG)                                   \
    TEST_OP2_IMPL(INST, INTRIN, REG, pd, double, "%lf")

#define TEST_PD_OP2(INST, INTRIN)                                             \
    TEST_PD_OP2_IMPL(INST, _mm512_##INTRIN, zmmd)                             \
    TEST_PD_OP2_IMPL(INST, _mm256_##INTRIN, ymmd)

TEST_PD_OP2(vaddpd, add_pd)
TEST_PD_OP2(vsubpd, sub_pd)
TEST_PD_OP2(vmulpd, mul_pd)
TEST_PD_OP2(vdivpd, div_pd)
TEST_PD_OP2(vmaxpd, max_pd)
TEST_PD_OP2(vminpd, min_pd)
TEST_PD_OP2(vxorpd, xor_pd)

#define TEST_PI8_OP2_IMPL(INST, INTRIN, REG)                                  \
    TEST_OP2_IMPL(INST, INTRIN, REG, pi8, int8_t, "%d")

#define TEST_PI8_OP2(INST, INTRIN)                                            \
    TEST_PI8_OP2_IMPL(INST, _mm512_##INTRIN, zmmi)                            \
    TEST_PI8_OP2_IMPL(INST, _mm256_##INTRIN, ymmi)

TEST_PI8_OP2(vpaddb, add_epi8)
TEST_PI8_OP2(vpaddsb, adds_epi8)

#define TEST_PI16_OP2_IMPL(INST, INTRIN, REG)                                 \
    TEST_OP2_IMPL(INST, INTRIN, REG, pi16, int16_t, "%d")

#define TEST_PI16_OP2(INST, INTRIN)                                           \
    TEST_PI16_OP2_IMPL(INST, _mm512_##INTRIN, zmmi)                           \
    TEST_PI16_OP2_IMPL(INST, _mm256_##INTRIN, ymmi)

TEST_PI16_OP2(vpaddw, add_epi16)
TEST_PI16_OP2(vpaddsw, adds_epi16)
TEST_PI16_OP2(vpmullw, mullo_epi16)

#define TEST_PI32_OP2_IMPL(INST, INTRIN, REG)                                 \
    TEST_OP2_IMPL(INST, INTRIN, REG, pi32, int32_t, "%d")

#define TEST_PI32_OP2(INST, INTRIN)                                           \
    TEST_PI32_OP2_IMPL(INST, _mm512_##INTRIN, zmmi)                           \
    TEST_PI32_OP2_IMPL(INST, _mm256_##INTRIN, ymmi)

TEST_PI32_OP2(vpaddd, add_epi32)
TEST_PI32_OP2_IMPL(vpandd, _mm512_and_epi32, zmmi)
TEST_PI32_OP2(vpminsd, min_epi32)
TEST_PI32_OP2(vpmuldq, mul_epi32)
TEST_PI32_OP2(vpmulld, mullo_epi32)
TEST_PI32_OP2(vpermd, permutexvar_epi32)

#define TEST_PI32_OP_REGIMM_IMPL(INST, INTRIN, REG, IMM)                      \
    TEST_OP_REGIMM_IMPL(INST, INTRIN, REG, pi32, int32_t, "%d", IMM)

#define TEST_PI32_OP_REGIMM(INST, INTRIN, IMM)                                \
    TEST_PI32_OP_REGIMM_IMPL(INST, _mm512_##INTRIN, zmmi, IMM)                \
    TEST_PI32_OP_REGIMM_IMPL(INST, _mm256_##INTRIN, ymmi, IMM)
 
#define SHUFFLE_IMM 0x4b
TEST_PI32_OP_REGIMM(vpshufd, shuffle_epi32, SHUFFLE_IMM)

#define TEST_PI64_OP2_IMPL(INST, INTRIN, REG)                                 \
    TEST_OP2_IMPL(INST, INTRIN, REG, pi64, int64_t, "%ld")

#define TEST_PI64_OP2(INST, INTRIN)                                           \
    TEST_PI64_OP2_IMPL(INST, _mm512_##INTRIN, zmmi)                           \
    TEST_PI64_OP2_IMPL(INST, _mm256_##INTRIN, ymmi)

TEST_PI64_OP2(vpaddq, add_epi64)
TEST_PI64_OP2(vpminsq, min_epi64)

int32_t saturate32(int64_t v)
{
    return v > INT32_MAX ? INT32_MAX : (v < INT32_MIN ? INT32_MIN : v);
}
int16_t saturate16(int64_t v)
{
    return v > INT16_MAX ? INT16_MAX : (v < INT16_MIN ? INT16_MIN : v);
}
int8_t saturate8(int64_t v)
{
    return v > INT8_MAX ? INT8_MAX : (v < INT8_MIN ? INT8_MIN : v);
}

void avx_test_op2()
{

    union vreg a, b, c, d;
    a.zmm = _mm512_set_ps(0, 1, 12, 3, 24, 5, 36, 7, 48, 9, 50, 11, 62, 13, 74,
                          15);
    b.zmm = _mm512_set_ps(1, 11, 2, 23, 4, 35, 6, 47, 8, 59, 10, 61, 12, 73,
                          14, 15);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        c.ps[i] = a.ps[i] + b.ps[i];
    }
    vaddps_zmm(a, b, c);
    vaddps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        c.ps[i] = a.ps[i] - b.ps[i];
    }
    vsubps_zmm(a, b, c);
    vsubps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        c.ps[i] = a.ps[i] * b.ps[i];
    }
    vmulps_zmm(a, b, c);
    vmulps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        c.ps[i] = a.ps[i] / b.ps[i];
    }
    vdivps_zmm(a, b, c);
    vdivps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        float x = a.ps[i];
        float y = b.ps[i];
        c.ps[i] = x < y ? x : y;
    }
    vminps_zmm(a, b, c);
    vminps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        float x = a.ps[i];
        float y = b.ps[i];
        c.ps[i] = x < y ? y : x;
    }
    vmaxps_zmm(a, b, c);
    vmaxps_ymm(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        a.pi32[i] = i;
        b.pi32[i] = i + 20;
        int32_t x = a.pi32[i];
        int32_t y = b.pi32[i];
        c.pi32[i] = x ^ y;
    }
    vxorps_zmm(a, b, c);
    vxorps_ymm(a, b, c);
    vxorpd_zmmd(a, b, c);
    vxorpd_ymmd(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        a.pi32[i] = i;
        b.pi32[i] = i + 20;
        int32_t x = a.pi32[i];
        int32_t y = b.pi32[i];
        c.pi32[i] = x & y;
    }
    vandps_zmm(a, b, c);
    vandps_ymm(a, b, c);
    vpandd_zmmi(a, b, c);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        a.ps[i] = i;
        b.ps[i] = i + 20;
        
        int offset = i % 4;
        switch (offset)
        {
            case 0: c.ps[i] = a.ps[i-0]; break;
            case 1: c.ps[i] = b.ps[i-1]; break;
            case 2: c.ps[i] = a.ps[i-1]; break;
            case 3: c.ps[i] = b.ps[i-2]; break;
        }
    }
    vunpcklps_ymm(a, b, c);

    for (int i = 0; i < zmmi_pi8_cnt; ++i)
    {
        a.pi8[i] = -i;
        b.pi8[i] = i * 2;
        c.pi8[i] = i;
    }
    vpaddb_zmmi(a, b, c);
    vpaddb_ymmi(a, b, c);

    for (int i = 0; i < zmmi_pi8_cnt; ++i)
    {
        int x, y;
        if (i % 2 == 0)
        {
            x = i;
            y = i + 1;
        }
        else
        {
            x = -i;
            y = -i - 1;
        }
        a.pi8[i] = x;
        b.pi8[i] = y;
        c.pi8[i] = saturate8(x + y);
    }
    vpaddsb_zmmi(a, b, c);
    vpaddsb_ymmi(a, b, c);

    for (int i = 0; i < zmmi_pi16_cnt; ++i)
    {
        a.pi16[i] = -i;
        b.pi16[i] = i * 100;
        c.pi16[i] = i * 99;
    }
    vpaddw_zmmi(a, b, c);
    vpaddw_ymmi(a, b, c);

    for (int i = 0; i < zmmi_pi16_cnt; ++i)
    {
        int x, y;
        if (i % 2 == 0)
        {
            x = i + 32700;
            y = i + 1;
        }
        else
        {
            x = -i - 32700;
            y = -i - 1;
        }
        a.pi16[i] = x;
        b.pi16[i] = y;
        c.pi16[i] = saturate16(x + y);
    }
    vpaddsb_zmmi(a, b, c);
    vpaddsb_ymmi(a, b, c);

#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi16_cnt; ++i)
    {
        int64_t x = i;
        int64_t y = i;
        a.pi16[i] = x;
        b.pi16[i] = y;
        c.pi16[i] = x * y;
    }
    vpmullw_zmmi(a, b, c);
    vpmullw_ymmi(a, b, c);

    a.zmmi = _mm512_set_epi32(0, 1, -12, 3, 24, 5, 36, 7, 48, 9, 50, 11, 62,
                              13, 74, 15);
    b.zmmi = _mm512_set_epi32(1, 11, 2, 23, -4, 35, 6, 47, 8, 59, 10, 61, 12,
                              73, 14, 15);

    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        c.pi32[i] = a.pi32[i] + b.pi32[i];
    }
    vpaddd_zmmi(a, b, c);
    vpaddd_ymmi(a, b, c);

    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        int32_t x = a.pi32[i];
        int32_t y = b.pi32[i];
        c.pi32[i] = x < y ? x : y;
    }
    vpminsd_zmmi(a, b, c);
    vpminsd_ymmi(a, b, c);

#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi64_cnt; ++i)
    {
        int64_t x = a.pi32[i * 2];
        int64_t y = b.pi32[i * 2];
        c.pi64[i] = x * y;
    }
    vpmuldq_zmmi(a, b, c);
    vpmuldq_ymmi(a, b, c);

#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        int64_t x = a.pi32[i];
        int64_t y = b.pi32[i];
        c.pi32[i] = x * y;
    }
    vpmulld_zmmi(a, b, c);
    vpmulld_ymmi(a, b, c);

#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        int64_t index = a.pi32[i];
        c.pi32[i] = b.pi32[index & 0xF];
    }
    vpermd_zmmi(a, b, c);
#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        int64_t index = a.pi32[i];
        c.pi32[i] = b.pi32[index & 0x7];
    }
    vpermd_ymmi(a, b, c);

    const int8_t shuffle_index = SHUFFLE_IMM;
#pragma clang loop vectorize(disable) unroll(disable)
    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        int32_t base = (i >> 2) << 2;
        int32_t offset = i & 0x3;
        int32_t index = (shuffle_index >> (offset * 2)) & 0x3;
        c.pi32[i] = a.pi32[base + index];
    }
    vpshufd_zmmi(a, c);
    vpshufd_ymmi(a, c);

    a.zmmd = _mm512_set_pd(0, 1, 12, 3, 24, 5, 36, 7);
    b.zmmd = _mm512_set_pd(1, 11, 2, 23, 4, 35, 6, 47);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        c.pd[i] = a.pd[i] + b.pd[i];
    }
    vaddpd_zmmd(a, b, c);
    vaddpd_ymmd(a, b, c);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        c.pd[i] = a.pd[i] - b.pd[i];
    }
    vsubpd_zmmd(a, b, c);
    vsubpd_ymmd(a, b, c);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        c.pd[i] = a.pd[i] * b.pd[i];
    }
    vmulpd_zmmd(a, b, c);
    vmulpd_ymmd(a, b, c);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        c.pd[i] = a.pd[i] / b.pd[i];
    }
    vdivpd_zmmd(a, b, c);
    vdivpd_ymmd(a, b, c);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        double x = a.pd[i];
        double y = b.pd[i];
        c.pd[i] = x < y ? y : x;
    }
    vmaxpd_zmmd(a, b, c);
    vmaxpd_ymmd(a, b, c);

    for (int i = 0; i < zmmd_pd_cnt; ++i)
    {
        double x = a.pd[i];
        double y = b.pd[i];
        c.pd[i] = x < y ? x : y;
    }
    vminpd_zmmd(a, b, c);
    vminpd_ymmd(a, b, c);

    a.zmmi = _mm512_set_epi64(0, 1, 12, 3, 24, 5, 36, 7);
    b.zmmi = _mm512_set_epi64(1, 11, 2, 23, 4, 35, 6, 47);

    for (int i = 0; i < zmmi_pi64_cnt; ++i)
    {
        c.pi64[i] = a.pi64[i] + b.pi64[i];
    }
    vpaddq_zmmi(a, b, c);
    vpaddq_ymmi(a, b, c);

    a.zmmi = _mm512_set_epi64(0, 1, -12, 3, 24, 5, 36, 7);
    b.zmmi = _mm512_set_epi64(1, -11, 2, 23, 4, 35, 6, 47);

    for (int i = 0; i < zmmi_pi64_cnt; ++i)
    {
        int64_t x = a.pi64[i];
        int64_t y = b.pi64[i];
        c.pi64[i] = x < y ? x : y;
    }
    vpminsq_zmmi(a, b, c);
    vpminsq_ymmi(a, b, c);
}

#endif
