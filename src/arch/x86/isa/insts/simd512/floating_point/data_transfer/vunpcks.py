microcode = """

def macroop VUNPCKLPS_XMM_XMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKLPS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKLPS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKLPS_YMM_YMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKLPS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKLPS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKLPS_ZMM_ZMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VUNPCKLPS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VUNPCKLPS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VUNPCKHPS_XMM_XMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKHPS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKHPS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VUNPCKHPS_YMM_YMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKHPS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKHPS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VUNPCKHPS_ZMM_ZMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VUNPCKHPS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VUNPCKHPS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

"""
