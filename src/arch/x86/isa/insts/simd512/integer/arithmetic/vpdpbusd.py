microcode = """
def macroop VPDPBUSD_XMM_XMM {
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=xmm0m, srcSize=1, destSize=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPDPBUSD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPDPBUSD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPDPBUSD_YMM_YMM {
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=xmm0m, srcSize=1, destSize=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPDPBUSD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPDPBUSD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPDPBUSD_ZMM_ZMM {
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=xmm0m, srcSize=1, destSize=4, VL=64
};

def macroop VPDPBUSD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=64
};

def macroop VPDPBUSD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vdotprod dest=xmm0, src1=xmm0, src2=xmm0v, src3=ufp1, srcSize=1, destSize=4, VL=64
};

"""
