microcode = """
def macroop VMAXPD_XMM_XMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMAXPD_YMM_YMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VMAXPD_ZMM_ZMM {
    vmaxf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VMAXPD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VMAXPD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vmaxf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

"""
