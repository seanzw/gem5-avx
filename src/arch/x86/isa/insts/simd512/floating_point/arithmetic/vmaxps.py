microcode = """
def macroop VMAXPS_XMM_XMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPS_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPS_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPS_YMM_YMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPS_ZMM_ZMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VMAXPS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VMAXPS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

"""
