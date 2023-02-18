microcode = """
def macroop VPSADBW_XMM_XMM {
    msad xmm0, xmm0, xmm0m, srcSize=1, destSize=2
    msad xmm1, xmm1, xmm1m, srcSize=1, destSize=2
};

def macroop VPSADBW_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
};

def macroop VPSADBW_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
};

def macroop VPSADBW_YMM_YMM {
    msad xmm0, xmm0, xmm0m, srcSize=1, destSize=2
    msad xmm1, xmm1, xmm1m, srcSize=1, destSize=2
    msad xmm2, xmm2, xmm2m, srcSize=1, destSize=2
    msad xmm3, xmm3, xmm3m, srcSize=1, destSize=2
};

def macroop VPSADBW_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
    msad xmm2, xmm2, ufp3, srcSize=1, destSize=2
    msad xmm3, xmm3, ufp4, srcSize=1, destSize=2
};

def macroop VPSADBW_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
    msad xmm2, xmm2, ufp3, srcSize=1, destSize=2
    msad xmm3, xmm3, ufp4, srcSize=1, destSize=2
};

def macroop VPSADBW_ZMM_ZMM {
    msad xmm0, xmm0, xmm0m, srcSize=1, destSize=2
    msad xmm1, xmm1, xmm1m, srcSize=1, destSize=2
    msad xmm2, xmm2, xmm2m, srcSize=1, destSize=2
    msad xmm3, xmm3, xmm3m, srcSize=1, destSize=2
    msad xmm4, xmm4, xmm4m, srcSize=1, destSize=2
    msad xmm5, xmm5, xmm5m, srcSize=1, destSize=2
    msad xmm6, xmm6, xmm6m, srcSize=1, destSize=2
    msad xmm7, xmm7, xmm7m, srcSize=1, destSize=2
};

def macroop VPSADBW_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
    msad xmm2, xmm2, ufp3, srcSize=1, destSize=2
    msad xmm3, xmm3, ufp4, srcSize=1, destSize=2
    msad xmm4, xmm4, ufp5, srcSize=1, destSize=2
    msad xmm5, xmm5, ufp6, srcSize=1, destSize=2
    msad xmm6, xmm6, ufp7, srcSize=1, destSize=2
    msad xmm7, xmm7, ufp8, srcSize=1, destSize=2
};

def macroop VPSADBW_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    msad xmm0, xmm0, ufp1, srcSize=1, destSize=2
    msad xmm1, xmm1, ufp2, srcSize=1, destSize=2
    msad xmm2, xmm2, ufp3, srcSize=1, destSize=2
    msad xmm3, xmm3, ufp4, srcSize=1, destSize=2
    msad xmm4, xmm4, ufp5, srcSize=1, destSize=2
    msad xmm5, xmm5, ufp6, srcSize=1, destSize=2
    msad xmm6, xmm6, ufp7, srcSize=1, destSize=2
    msad xmm7, xmm7, ufp8, srcSize=1, destSize=2
};
"""
