microcode = """

def macroop VPERM2I128_YMM_YMM_I {
    vperm2f128 dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=32
};

def macroop VPERM2I128_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vperm2f128 dest=xmm0, src1=xmm0v, src2=ufp1, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=32
};

def macroop VPERM2I128_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vperm2f128 dest=xmm0, src1=xmm0v, src2=ufp1, size=4, imm8="(IMMEDIATE >> 0) & 0xFF", VL=32
};

"""
