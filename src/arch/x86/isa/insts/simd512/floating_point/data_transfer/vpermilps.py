microcode = """

def macroop VPERMILPS_XMM_XMM_I {
    vpermil dest=xmm0, src=xmm0m, imm8="(IMMEDIATE) & 0xFF", size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_XMM_M_I {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_XMM_P_I {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPERMILPS_YMM_YMM_I {
    vpermil dest=xmm0, src=xmm0m, imm8="(IMMEDIATE) & 0xFF", size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPERMILPS_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPERMILPS_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPERMILPS_ZMM_ZMM_I {
    vpermil dest=xmm0, src=xmm0m, imm8="(IMMEDIATE) & 0xFF", size=4, VL=64
};

def macroop VPERMILPS_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=64
};

def macroop VPERMILPS_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vpermil dest=xmm0, src=ufp1, imm8="(IMMEDIATE) & 0xFF", size=4, VL=64
};



"""
