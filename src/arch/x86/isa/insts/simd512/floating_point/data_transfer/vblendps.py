microcode = """

def macroop VBLENDPS_XMM_XMM_I {
    mblend op1=xmm0, op2=xmm0v, op3=xmm0m, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=xmm1m, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    vclear dest=xmm2, destVL=16
};

def macroop VBLENDPS_XMM_M_I {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    mblend op1=xmm0, op2=xmm0v, op3=ufp1, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=ufp2, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    vclear dest=xmm2, destVL=16
};

def macroop VBLENDPS_XMM_P_I {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    mblend op1=xmm0, op2=xmm0v, op3=ufp1, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=ufp2, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    vclear dest=xmm2, destVL=16
};

def macroop VBLENDPS_YMM_YMM_I {
    mblend op1=xmm0, op2=xmm0v, op3=xmm0m, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=xmm1m, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    mblend op1=xmm2, op2=xmm2v, op3=xmm2m, size=4, ext="(IMMEDIATE >> 4) & 0x3"
    mblend op1=xmm3, op2=xmm3v, op3=xmm3m, size=4, ext="(IMMEDIATE >> 6) & 0x3"
    vclear dest=xmm4, destVL=32
};

def macroop VBLENDPS_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    mblend op1=xmm0, op2=xmm0v, op3=ufp1, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=ufp2, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    mblend op1=xmm2, op2=xmm2v, op3=ufp3, size=4, ext="(IMMEDIATE >> 4) & 0x3"
    mblend op1=xmm3, op2=xmm3v, op3=ufp4, size=4, ext="(IMMEDIATE >> 6) & 0x3"
    vclear dest=xmm4, destVL=32
};

def macroop VBLENDPS_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    mblend op1=xmm0, op2=xmm0v, op3=ufp1, size=4, ext="(IMMEDIATE >> 0) & 0x3"
    mblend op1=xmm1, op2=xmm1v, op3=ufp2, size=4, ext="(IMMEDIATE >> 2) & 0x3"
    mblend op1=xmm2, op2=xmm2v, op3=ufp3, size=4, ext="(IMMEDIATE >> 4) & 0x3"
    mblend op1=xmm3, op2=xmm3v, op3=ufp4, size=4, ext="(IMMEDIATE >> 6) & 0x3"
    vclear dest=xmm4, destVL=32
};

"""
