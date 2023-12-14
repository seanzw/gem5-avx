microcode = """

def macroop VSHUFF32X4_ZMM_ZMM_I {
    vshuf32x4 dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=64
};

def macroop VSHUFF32X4_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshuf32x4 dest=xmm0, src1=xmm0v, src2=ufp1, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=64
};

def macroop VSHUFF32X4_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshuf32x4 dest=xmm0, src1=xmm0v, src2=ufp1, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=64
};

"""
