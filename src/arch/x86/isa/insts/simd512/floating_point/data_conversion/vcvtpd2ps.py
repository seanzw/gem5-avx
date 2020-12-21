microcode = '''

def macroop VCVTPD2PS128_XMM_XMM {
    cvtf2f xmm0, xmm0m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, xmm1m, destSize=4, srcSize=8, ext=2
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS128_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS128_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS256_XMM_YMM {
    cvtf2f xmm0, xmm0m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, xmm1m, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, xmm2m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, xmm3m, destSize=4, srcSize=8, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS256_XMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, ufp3, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, ufp4, destSize=4, srcSize=8, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS256_XMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, ufp3, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, ufp4, destSize=4, srcSize=8, ext=2
    vclear dest=xmm2, destVL=16
};

def macroop VCVTPD2PS512_YMM_ZMM {
    cvtf2f xmm0, xmm0m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, xmm1m, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, xmm2m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, xmm3m, destSize=4, srcSize=8, ext=2
    cvtf2f xmm2, xmm4m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm2, xmm5m, destSize=4, srcSize=8, ext=0
    cvtf2f xmm3, xmm6m, destSize=4, srcSize=8, ext=2
    cvtf2f xmm3, xmm7m, destSize=4, srcSize=8, ext=2
    vclear dest=xmm4, destVL=32
};

def macroop VCVTPD2PS512_YMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, ufp3, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, ufp4, destSize=4, srcSize=8, ext=2
    cvtf2f xmm2, ufp5, destSize=4, srcSize=8, ext=0
    cvtf2f xmm2, ufp6, destSize=4, srcSize=8, ext=0
    cvtf2f xmm3, ufp7, destSize=4, srcSize=8, ext=2
    cvtf2f xmm3, ufp8, destSize=4, srcSize=8, ext=2
    vclear dest=xmm4, destVL=32
};

def macroop VCVTPD2PS512_YMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    cvtf2f xmm0, ufp1, destSize=4, srcSize=8, ext=0
    cvtf2f xmm0, ufp2, destSize=4, srcSize=8, ext=2
    cvtf2f xmm1, ufp3, destSize=4, srcSize=8, ext=0
    cvtf2f xmm1, ufp4, destSize=4, srcSize=8, ext=2
    cvtf2f xmm2, ufp5, destSize=4, srcSize=8, ext=0
    cvtf2f xmm2, ufp6, destSize=4, srcSize=8, ext=0
    cvtf2f xmm3, ufp7, destSize=4, srcSize=8, ext=2
    cvtf2f xmm3, ufp8, destSize=4, srcSize=8, ext=2
    vclear dest=xmm4, destVL=32
};

'''