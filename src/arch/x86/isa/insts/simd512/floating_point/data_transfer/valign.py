microcode = '''

def macroop VALIGND_XMM_XMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x1", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VALIGND_XMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VALIGND_XMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1", VL=16, size=4
    vclear dest=xmm2, destVL=16
};

def macroop VALIGND_YMM_YMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x3", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VALIGND_YMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x3", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VALIGND_YMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x3", VL=32, size=4
    vclear dest=xmm4, destVL=32
};

def macroop VALIGND_ZMM_ZMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x7", VL=64, size=4
};

def macroop VALIGND_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x7", VL=64, size=4
};

def macroop VALIGND_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x7", VL=64, size=4
};

def macroop VALIGNQ_XMM_XMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x1", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VALIGNQ_XMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VALIGNQ_XMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1", VL=16, size=8
    vclear dest=xmm2, destVL=16
};

def macroop VALIGNQ_YMM_YMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x3", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VALIGNQ_YMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x3", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VALIGNQ_YMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x3", VL=32, size=8
    vclear dest=xmm4, destVL=32
};

def macroop VALIGNQ_ZMM_ZMM_I {
    valign dest=xmm0, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x7", VL=64, size=8
};

def macroop VALIGNQ_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x7", VL=64, size=8
};

def macroop VALIGNQ_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    valign dest=xmm0, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x7", VL=64, size=8
};


'''