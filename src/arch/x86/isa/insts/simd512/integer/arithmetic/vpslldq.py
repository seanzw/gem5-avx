microcode = """

def macroop VPSLLDQ16_XMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=16, VL=16
};

def macroop VPSLLDQ16_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=16
};

def macroop VPSLLDQ16_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=16
};

def macroop VPSLLDQ32_YMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=16, VL=32
};

def macroop VPSLLDQ32_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=32
};

def macroop VPSLLDQ32_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=32
};
def macroop VPSLLDQ64_ZMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=16, VL=64
};

def macroop VPSLLDQ64_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=64
};

def macroop VPSLLDQ64_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=16, VL=64
};
"""
