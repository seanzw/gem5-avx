microcode = """

def macroop VPSRLQ_ZMM_I {
    vshiftrl dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSRLQ_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshiftrl dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSRLQ_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshiftrl dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};
"""
