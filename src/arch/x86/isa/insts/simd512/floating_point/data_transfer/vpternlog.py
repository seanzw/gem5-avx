microcode = '''

def macroop VPTERNLOGD_XMM_XMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGD_XMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGD_XMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGD_YMM_YMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGD_YMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGD_YMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGD_ZMM_ZMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=64, size=4
};

def macroop VPTERNLOGD_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=64, size=4
};

def macroop VPTERNLOGD_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=64, size=4
};


def macroop VPTERNLOGQ_XMM_XMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGQ_XMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGQ_XMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VPTERNLOGQ_YMM_YMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGQ_YMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGQ_YMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VPTERNLOGQ_ZMM_ZMM_I {
    vpternlog dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0xFF", VL=64, size=8
};

def macroop VPTERNLOGQ_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=64, size=8
};

def macroop VPTERNLOGQ_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vpternlog dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0xFF", VL=64, size=8
};


'''