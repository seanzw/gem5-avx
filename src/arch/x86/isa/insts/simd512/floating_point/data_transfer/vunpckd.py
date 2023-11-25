microcode = """

def macroop VUNPCKLPD_XMM_XMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
};

def macroop VUNPCKLPD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VUNPCKLPD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VUNPCKLPD_YMM_YMM {
    vunpackl dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
};

def macroop VUNPCKLPD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VUNPCKLPD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackl dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VUNPCKHPD_XMM_XMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
};

def macroop VUNPCKHPD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VUNPCKHPD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VUNPCKHPD_YMM_YMM {
    vunpackh dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
};

def macroop VUNPCKHPD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VUNPCKHPD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vunpackh dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

"""
