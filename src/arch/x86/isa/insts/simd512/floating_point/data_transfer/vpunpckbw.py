microcode = """

def macroop VPUNPCKLBW_XMM_XMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKLBW_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKLBW_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKLBW_YMM_YMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKLBW_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKLBW_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKLBW_ZMM_ZMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=64
};

def macroop VPUNPCKLBW_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};

def macroop VPUNPCKLBW_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};

def macroop VPUNPCKHBW_XMM_XMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKHBW_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKHBW_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPUNPCKHBW_YMM_YMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKHBW_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKHBW_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPUNPCKHBW_ZMM_ZMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=1, VL=64
};

def macroop VPUNPCKHBW_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};

def macroop VPUNPCKHBW_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=1, VL=64
};

"""
