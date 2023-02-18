#ifndef AVX_TEST_OP3_H
#define AVX_TEST_OP3_H

#include "common.h"

#define TEST_PS_OP3_IMPL(INST, INTRIN, REG)                                   \
    __attribute__((noinline)) int INST##_##REG(union vreg a, union vreg b,    \
                                               union vreg c, union vreg d)    \
    {                                                                         \
        union vreg r;                                                         \
        r.REG = INTRIN(a.REG, b.REG, c.REG);                                  \
                                                                              \
        for (int i = 0; i < REG##_ps_cnt; ++i)                                \
        {                                                                     \
            float expected = d.ps[i];                                         \
            float actual = r.ps[i];                                           \
            PRINTF("Get %d %f %f.\n", i, expected, actual);                   \
            if (expected != actual)                                           \
            {                                                                 \
                printf(">> AVX Failed " #INST "_" #REG "\n");                 \
                exit(1);                                                      \
            }                                                                 \
        }                                                                     \
        return 0;                                                             \
    }

#define TEST_PS_OP3(INST, INTRIN) TEST_PS_OP3_IMPL(INST, _mm512_##INTRIN, zmm)

TEST_PS_OP3(vfmaddps, fmadd_ps)
TEST_PS_OP3(vfnmaddps, fnmadd_ps)

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
}

#endif
