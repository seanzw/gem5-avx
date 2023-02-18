microcode = """
def macroop VXORPS_XMM_XMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VXORPS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 8", dataSize=8
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VXORPS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VXORPS_YMM_YMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VXORPS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VXORPS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VXORPS_ZMM_ZMM {
    vxor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VXORPS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VXORPS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vxor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

"""
