microcode = '''

def macroop VCVTSI2SD_XMM_R {
    mov2fp ufp1, regm, destSize=dsz, srcSize=dsz
    cvti2f xmm0, ufp1, destSize=8, srcSize=dsz, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTSI2SD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=dsz
    cvti2f xmm0, ufp1, destSize=8, srcSize=dsz, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTSI2SD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=dsz
    cvti2f xmm0, ufp1, destSize=8, srcSize=dsz, ext=Scalar
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

'''