microcode = """
def macroop VMINPD_XMM_XMM {
    vminf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMINPD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMINPD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMINPD_YMM_YMM {
    vminf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMINPD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMINPD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMINPD_ZMM_ZMM {
    vminf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VMINPD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VMINPD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vminf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

"""
