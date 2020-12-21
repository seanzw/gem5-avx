microcode = '''

def macroop VCVTUSI2SS_XMM_R {
    mov2fp ufp1, regm, destSize=dsz, srcSize=dsz
    cvtui2f xmm0, ufp1, destSize=4, srcSize=dsz, ext=Scalar
    movfph2h xmm0, xmm0v, dataSize=4
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTUSI2SS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=dsz
    cvtui2f xmm0, ufp1, destSize=4, srcSize=dsz, ext=Scalar
    movfph2h xmm0, xmm0v, dataSize=4
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VCVTUSI2SS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=dsz
    cvtui2f xmm0, ufp1, destSize=4, srcSize=dsz, ext=Scalar
    movfph2h xmm0, xmm0v, dataSize=4
    movfp  xmm1, xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

'''