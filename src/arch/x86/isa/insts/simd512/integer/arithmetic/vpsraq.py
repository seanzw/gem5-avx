microcode = """

def macroop VPSRAQ_ZMM_I {
    vshiftra dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSRAQ_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshiftra dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSRAQ_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshiftra dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};
"""
