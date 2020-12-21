microcode = '''
def macroop VPMINSD_XMM_XMM {
    vminsi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
};

def macroop VPMINSD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
};

def macroop VPMINSD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
};

def macroop VPMINSD_YMM_YMM {
    vminsi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32
};

def macroop VPMINSD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
};

def macroop VPMINSD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32
};

def macroop VPMINSD_ZMM_ZMM {
    vminsi dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64
};

def macroop VPMINSD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};

def macroop VPMINSD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vminsi dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64
};
'''