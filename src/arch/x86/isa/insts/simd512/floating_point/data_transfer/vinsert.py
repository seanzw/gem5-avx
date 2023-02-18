microcode = """

def macroop VINSERT128_YMM_XMM_I {
    vinsert dest=xmm0, src1=xmm0m, src2=xmm0v, srcVL=16, destVL=32, size=8, imm8="IMMEDIATE"
};

def macroop VINSERT128_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vinsert dest=xmm0, src1=ufp1, src2=xmm0v, srcVL=16, destVL=32, size=8, imm8="IMMEDIATE"
};

def macroop VINSERT128_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vinsert dest=xmm0, src1=ufp1, src2=xmm0v, srcVL=16, destVL=32, size=8, imm8="IMMEDIATE"
};

def macroop VINSERT256_ZMM_YMM_I {
    vinsert dest=xmm0, src1=xmm0m, src2=xmm0v, srcVL=32, destVL=64, size=8, imm8="IMMEDIATE"
};

def macroop VINSERT256_ZMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vinsert dest=xmm0, src1=ufp1, src2=xmm0v, srcVL=32, destVL=64, size=8, imm8="IMMEDIATE"
};

def macroop VINSERT256_ZMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vinsert dest=xmm0, src1=ufp1, src2=xmm0v, srcVL=32, destVL=64, size=8, imm8="IMMEDIATE"
};

"""
