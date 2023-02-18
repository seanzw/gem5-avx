microcode = """

def macroop VPSLLQ16_XMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=8, VL=16
};

def macroop VPSLLQ16_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=16
};

def macroop VPSLLQ16_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=16
};

def macroop VPSLLQ32_YMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=8, VL=32
};

def macroop VPSLLQ32_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=32
};

def macroop VPSLLQ32_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=32
};
def macroop VPSLLQ64_ZMM_I {
    vshiftll dest=xmm0v, src=xmm0m, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSLLQ64_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};

def macroop VPSLLQ64_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshiftll dest=xmm0v, src=ufp1, imm8="IMMEDIATE", size=8, VL=64
};
"""
