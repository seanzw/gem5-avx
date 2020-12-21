microcode = '''

def macroop VCVTDQ2PS_XMM_XMM {
    cvti2f xmm0, xmm0m, size=4, ext=0
    cvti2f xmm1, xmm1m, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PS_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PS_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PS_YMM_YMM {
    cvti2f xmm0, xmm0m, size=4, ext=0
    cvti2f xmm1, xmm1m, size=4, ext=0
    cvti2f xmm2, xmm2m, size=4, ext=0
    cvti2f xmm3, xmm3m, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    cvti2f xmm2, ufp3, size=4, ext=0
    cvti2f xmm3, ufp4, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    cvti2f xmm2, ufp3, size=4, ext=0
    cvti2f xmm3, ufp4, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PS_ZMM_ZMM {
    cvti2f xmm0, xmm0m, size=4, ext=0
    cvti2f xmm1, xmm1m, size=4, ext=0
    cvti2f xmm2, xmm2m, size=4, ext=0
    cvti2f xmm3, xmm3m, size=4, ext=0
    cvti2f xmm4, xmm4m, size=4, ext=0
    cvti2f xmm5, xmm5m, size=4, ext=0
    cvti2f xmm6, xmm6m, size=4, ext=0
    cvti2f xmm7, xmm7m, size=4, ext=0
};

def macroop VCVTDQ2PS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    cvti2f xmm2, ufp3, size=4, ext=0
    cvti2f xmm3, ufp4, size=4, ext=0
    cvti2f xmm4, ufp5, size=4, ext=0
    cvti2f xmm5, ufp6, size=4, ext=0
    cvti2f xmm6, ufp7, size=4, ext=0
    cvti2f xmm7, ufp8, size=4, ext=0
};

def macroop VCVTDQ2PS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    cvti2f xmm0, ufp1, size=4, ext=0
    cvti2f xmm1, ufp2, size=4, ext=0
    cvti2f xmm2, ufp3, size=4, ext=0
    cvti2f xmm3, ufp4, size=4, ext=0
    cvti2f xmm4, ufp5, size=4, ext=0
    cvti2f xmm5, ufp6, size=4, ext=0
    cvti2f xmm6, ufp7, size=4, ext=0
    cvti2f xmm7, ufp8, size=4, ext=0
};
'''