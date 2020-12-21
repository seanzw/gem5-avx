
microcode = '''
def macroop VSUBPD_XMM_XMM {
    vsubf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=16
};

def macroop VSUBPD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VSUBPD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=16
};

def macroop VSUBPD_YMM_YMM {
    vsubf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=32
};

def macroop VSUBPD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VSUBPD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=32
};

def macroop VSUBPD_ZMM_ZMM {
    vsubf dest=xmm0, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VSUBPD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VSUBPD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vsubf dest=xmm0, src1=xmm0v, src2=ufp1, size=8, VL=64
};

'''
