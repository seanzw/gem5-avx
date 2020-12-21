microcode = '''

def macroop VBROADCASTSD_YMM_XMM {
    movfp dest=xmm0, src1=xmm0m, dataSize=8
    movfp dest=xmm1, src1=xmm0m, dataSize=8
    movfp dest=xmm2, src1=xmm0m, dataSize=8
    movfp dest=xmm3, src1=xmm0m, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    movfp dest=xmm0, src1=ufp1, dataSize=8
    movfp dest=xmm1, src1=ufp1, dataSize=8
    movfp dest=xmm2, src1=ufp1, dataSize=8
    movfp dest=xmm3, src1=ufp1, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    movfp dest=xmm0, src1=ufp1, dataSize=8
    movfp dest=xmm1, src1=ufp1, dataSize=8
    movfp dest=xmm2, src1=ufp1, dataSize=8
    movfp dest=xmm3, src1=ufp1, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_ZMM_XMM {
    movfp dest=xmm0, src1=xmm0m, dataSize=8
    movfp dest=xmm1, src1=xmm0m, dataSize=8
    movfp dest=xmm2, src1=xmm0m, dataSize=8
    movfp dest=xmm3, src1=xmm0m, dataSize=8
    movfp dest=xmm4, src1=xmm0m, dataSize=8
    movfp dest=xmm5, src1=xmm0m, dataSize=8
    movfp dest=xmm6, src1=xmm0m, dataSize=8
    movfp dest=xmm7, src1=xmm0m, dataSize=8
};

def macroop VBROADCASTSD_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    movfp dest=xmm0, src1=ufp1, dataSize=8
    movfp dest=xmm1, src1=ufp1, dataSize=8
    movfp dest=xmm2, src1=ufp1, dataSize=8
    movfp dest=xmm3, src1=ufp1, dataSize=8
    movfp dest=xmm4, src1=ufp1, dataSize=8
    movfp dest=xmm5, src1=ufp1, dataSize=8
    movfp dest=xmm6, src1=ufp1, dataSize=8
    movfp dest=xmm7, src1=ufp1, dataSize=8
};

def macroop VBROADCASTSD_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    movfp dest=xmm0, src1=ufp1, dataSize=8
    movfp dest=xmm1, src1=ufp1, dataSize=8
    movfp dest=xmm2, src1=ufp1, dataSize=8
    movfp dest=xmm3, src1=ufp1, dataSize=8
    movfp dest=xmm4, src1=ufp1, dataSize=8
    movfp dest=xmm5, src1=ufp1, dataSize=8
    movfp dest=xmm6, src1=ufp1, dataSize=8
    movfp dest=xmm7, src1=ufp1, dataSize=8
};

'''