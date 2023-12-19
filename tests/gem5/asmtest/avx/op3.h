#ifndef AVX_TEST_OP3_H
#define AVX_TEST_OP3_H

#include "common.h"

#define TEST_OP3_IMPL(INST, INTRIN, REG, ELEM, TYPE, FORMAT)                  \
    CHECK_REG(INST, REG, ELEM, TYPE, FORMAT)                                  \
    __attribute__((noinline)) int INST##_##REG(union vreg a, union vreg b,    \
                                               union vreg c, union vreg d)    \
    {                                                                         \
        union vreg r;                                                         \
        r.REG = INTRIN(a.REG, b.REG, c.REG);                                  \
                                                                              \
        INST##_check_##REG(r, d);                                             \
        return 0;                                                             \
    }

#define TEST_PS_OP3_IMPL(INST, INTRIN, REG)                                   \
    TEST_OP3_IMPL(INST, INTRIN, REG, ps, float, "%f")

#define TEST_PS_OP3(INST, INTRIN)                                             \
    TEST_PS_OP3_IMPL(INST, _mm512_##INTRIN, zmm)                              \
    TEST_PS_OP3_IMPL(INST, _mm256_##INTRIN, ymm)

TEST_PS_OP3(vfmaddps, fmadd_ps)
TEST_PS_OP3(vfnmaddps, fnmadd_ps)

#define TEST_PI32_OP3_IMPL(INST, INTRIN, REG)                                 \
    TEST_OP3_IMPL(INST, INTRIN, REG, pi32, int32_t, "%d")

#define TEST_PI32_OP3(INST, INTRIN)                                           \
    TEST_PI32_OP3_IMPL(INST, _mm512_##INTRIN, zmmi)                           \
    TEST_PI32_OP3_IMPL(INST, _mm256_##INTRIN, ymmi)

TEST_PI32_OP3(vpdpbusd, dpbusd_epi32)

void avx_test_op3()
{

    union vreg a, b, c, d;

    a.zmm = _mm512_set_ps(0, 1, 12, 3, 24, 5, 36, 7, 48, 9, 50, 11, 62, 13, 74,
                          15);
    b.zmm = _mm512_set_ps(1, 11, 2, 23, 4, 35, 6, 47, 8, 59, 10, 61, 12, 73,
                          14, 15);
    c.zmm = _mm512_set_ps(11, 10, 23, 2, 44, 3, 5, 470, 19, 39, 14, 65, 92, 63,
                          4, 0);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        float x = a.ps[i];
        float y = b.ps[i];
        float z = c.ps[i];
        d.ps[i] = x * y + z;
    }
    vfmaddps_zmm(a, b, c, d);

    a.zmm = _mm512_set_ps(0, 1, 12, 3, 24, 5, 36, 7, 48, 9, 50, 11, 62, 13, 74,
                          15);
    b.zmm = _mm512_set_ps(1, 11, 2, 23, 4, 35, 6, 47, 8, 59, 10, 61, 12, 73,
                          14, 15);
    c.zmm = _mm512_set_ps(11, 10, 23, 2, 44, 3, 5, 470, 19, 39, 14, 65, 92, 63,
                          4, 0);

    for (int i = 0; i < zmm_ps_cnt; ++i)
    {
        float x = a.ps[i];
        float y = b.ps[i];
        float z = c.ps[i];
        d.ps[i] = -(x * y) + z;
    }
    vfnmaddps_zmm(a, b, c, d);

#pragma clang loop unroll(disable) vectorize(disable) interleave(disable)
    for (int i = 0; i < zmmi_pi8_cnt; ++i)
    {
        a.pi8[i] = i;
        b.pi8[i] = -i;
    }

#pragma clang loop unroll(disable) vectorize(disable) interleave(disable)
    for (int i = 0; i < zmmi_pi32_cnt; ++i)
    {
        c.pi32[i] = i;
        d.pi32[i] = c.pi32[i] +
            a.pu8[i * 4 + 0] * b.pi8[i * 4 + 0] +
            a.pu8[i * 4 + 1] * b.pi8[i * 4 + 1] +
            a.pu8[i * 4 + 2] * b.pi8[i * 4 + 2] +
            a.pu8[i * 4 + 3] * b.pi8[i * 4 + 3];
    }
    vpdpbusd_zmmi(c, a, b, d);
    vpdpbusd_ymmi(c, a, b, d);
}

#endif
