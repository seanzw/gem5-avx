microcode = """
def macroop VPXOR_XMM_XMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPXOR_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPXOR_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPXOR_YMM_YMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPXOR_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPXOR_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPXOR_ZMM_ZMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VPXOR_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VPXOR_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

"""
