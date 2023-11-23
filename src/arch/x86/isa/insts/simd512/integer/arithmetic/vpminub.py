microcode = """
def macroop VPMINUB_XMM_XMM {
    vminui dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPMINUB_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPMINUB_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPMINUB_YMM_YMM {
    vminui dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPMINUB_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPMINUB_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPMINUB_ZMM_ZMM {
    vminui dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=64
};

def macroop VPMINUB_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};

def macroop VPMINUB_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vminui dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};
"""
