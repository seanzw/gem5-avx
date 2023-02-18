microcode = """

def macroop VPSRLD_XMM_I {
    vshiftrl dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=4, VL=16
};

def macroop VPSRLD_YMM_I {
    vshiftrl dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=4, VL=32
};

def macroop VPSRLD_ZMM_I {
    vshiftrl dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=4, VL=64
};

def macroop VPSRLD_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshiftrl dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=4, VL=64
};

def macroop VPSRLD_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshiftrl dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=4, VL=64
};
"""
