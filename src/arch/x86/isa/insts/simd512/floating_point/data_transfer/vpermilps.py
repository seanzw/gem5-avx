microcode = '''

def macroop VPERMILPS_XMM_XMM_I {
    mpermilps dest=ufp1, src1=xmm0m, op2=xmm1m, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=xmm0m, op2=xmm1m, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    movfp xmm0, ufp1, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_XMM_M_I {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    mpermilps dest=xmm0, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_XMM_P_I {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    mpermilps dest=xmm0, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_YMM_YMM_I {
    mpermilps dest=ufp1, src1=xmm0m, op2=xmm1m, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=xmm0m, op2=xmm1m, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    mpermilps dest=ufp2, src1=xmm2m, op2=xmm3m, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm3, src1=xmm2m, op2=xmm3m, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    movfp xmm0, ufp1, dataSize=8
    movfp xmm2, ufp2, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VPERMILPS_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    mpermilps dest=xmm0, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    mpermilps dest=xmm2, src1=ufp3, op2=ufp4, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm3, src1=ufp3, op2=ufp4, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    vclear dest=xmm4, destVL=32
};

def macroop VPERMILPS_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    mpermilps dest=xmm0, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm1, src1=ufp1, op2=ufp2, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    mpermilps dest=xmm2, src1=ufp3, op2=ufp4, size=4, ext="(IMMEDIATE >> 0) & 0xF"
    mpermilps dest=xmm3, src1=ufp3, op2=ufp4, size=4, ext="(IMMEDIATE >> 4) & 0xF"
    vclear dest=xmm4, destVL=32
};

'''