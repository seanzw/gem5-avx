microcode = '''
def macroop VPADDQ_XMM_XMM {
    vaddi dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
};

def macroop VPADDQ_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VPADDQ_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VPADDQ_YMM_YMM {
    vaddi dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
};

def macroop VPADDQ_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VPADDQ_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VPADDQ_ZMM_ZMM {
    vaddi dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VPADDQ_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VPADDQ_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vaddi dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};
'''