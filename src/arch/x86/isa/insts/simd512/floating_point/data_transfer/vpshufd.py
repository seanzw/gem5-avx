microcode = """

def macroop VPSHUFD_XMM_XMM_I {
    vshuf dest=xmm0, src=xmm0m, size=4, VL=16, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm2, destVL=16
};

def macroop VPSHUFD_XMM_M_I {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vshuf dest=xmm0, src=ufp1, size=4, VL=16, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm2, destVL=16
};

def macroop VPSHUFD_XMM_P_I {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vshuf dest=xmm0, src=ufp1, size=4, VL=16, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm2, destVL=16
};

def macroop VPSHUFD_YMM_YMM_I {
    vshuf dest=xmm0, src=xmm0m, size=4, VL=32, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm4, destVL=32
};

def macroop VPSHUFD_YMM_M_I {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vshuf dest=xmm0, src=ufp1, size=4, VL=32, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm4, destVL=32
};

def macroop VPSHUFD_YMM_P_I {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vshuf dest=xmm0, src=ufp1, size=4, VL=32, imm8="(IMMEDIATE) & 0xFF"
    vclear dest=xmm4, destVL=32
};

def macroop VPSHUFD_ZMM_ZMM_I {
    vshuf dest=xmm0, src=xmm0m, size=4, VL=64, imm8="(IMMEDIATE) & 0xFF"
};

def macroop VPSHUFD_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vshuf dest=xmm0, src=ufp1, size=4, VL=64, imm8="(IMMEDIATE) & 0xFF"
};

def macroop VPSHUFD_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vshuf dest=xmm0, src=ufp1, size=4, VL=64, imm8="(IMMEDIATE) & 0xFF"
};

"""
