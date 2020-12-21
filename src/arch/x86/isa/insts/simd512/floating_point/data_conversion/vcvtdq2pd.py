microcode = '''

def macroop VCVTDQ2PD_XMM_XMM {
    cvti2f xmm0, xmm0m, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, xmm0m, destSize=8, srcSize=4, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PD_XMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=8
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTDQ2PD_YMM_XMM {
    cvti2f xmm0, xmm0m, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, xmm0m, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, xmm1m, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, xmm1m, destSize=8, srcSize=4, ext=2
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PD_YMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, ufp2, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, ufp2, destSize=8, srcSize=4, ext=2
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PD_YMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, ufp2, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, ufp2, destSize=8, srcSize=4, ext=2
    vclear dest=xmm4, destVL=32
};

def macroop VCVTDQ2PD_ZMM_YMM {
    cvti2f xmm0, xmm0m, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, xmm0m, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, xmm1m, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, xmm1m, destSize=8, srcSize=4, ext=2
    cvti2f xmm4, xmm2m, destSize=8, srcSize=4, ext=0
    cvti2f xmm5, xmm2m, destSize=8, srcSize=4, ext=2
    cvti2f xmm6, xmm3m, destSize=8, srcSize=4, ext=0
    cvti2f xmm7, xmm3m, destSize=8, srcSize=4, ext=2
};

def macroop VCVTDQ2PD_ZMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, ufp2, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, ufp2, destSize=8, srcSize=4, ext=2
    cvti2f xmm4, ufp3, destSize=8, srcSize=4, ext=0
    cvti2f xmm5, ufp3, destSize=8, srcSize=4, ext=2
    cvti2f xmm6, ufp4, destSize=8, srcSize=4, ext=0
    cvti2f xmm7, ufp4, destSize=8, srcSize=4, ext=2
};

def macroop VCVTDQ2PD_ZMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    cvti2f xmm0, ufp1, destSize=8, srcSize=4, ext=0
    cvti2f xmm1, ufp1, destSize=8, srcSize=4, ext=2
    cvti2f xmm2, ufp2, destSize=8, srcSize=4, ext=0
    cvti2f xmm3, ufp2, destSize=8, srcSize=4, ext=2
    cvti2f xmm4, ufp3, destSize=8, srcSize=4, ext=0
    cvti2f xmm5, ufp3, destSize=8, srcSize=4, ext=2
    cvti2f xmm6, ufp4, destSize=8, srcSize=4, ext=0
    cvti2f xmm7, ufp4, destSize=8, srcSize=4, ext=2
};
'''