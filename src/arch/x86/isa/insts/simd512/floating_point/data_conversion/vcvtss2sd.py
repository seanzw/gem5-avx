microcode = '''

def macroop VCVTSS2SD_XMM_XMM {
    cvtf2f xmm0, xmm0m, destSize=8, srcSize=4, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTSS2SD_XMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=4
    cvtf2f xmm0, ufp1, destSize=8, srcSize=4, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTSS2SD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    cvtf2f xmm0, ufp1, destSize=8, srcSize=4, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

'''