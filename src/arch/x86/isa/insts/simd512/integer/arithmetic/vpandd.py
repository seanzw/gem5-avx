microcode = '''
def macroop VPANDD_XMM_XMM {
    vandi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
};

def macroop VPANDD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
};

def macroop VPANDD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
};

def macroop VPANDD_YMM_YMM {
    vandi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
};

def macroop VPANDD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
};

def macroop VPANDD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
};

def macroop VPANDD_ZMM_ZMM {
    vandi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VPANDD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VPANDD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vandi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};
'''