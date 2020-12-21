microcode = '''

def macroop VMOVDDUP_XMM_XMM {
    movfp xmm0, xmm0m, dataSize=8
    movfp xmm1, xmm0m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVDDUP_XMM_M {
    ldfp xmm0, seg, sib, disp, dataSize=8
    movfp xmm1, xmm0, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVDDUP_XMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, disp, dataSize=8
    movfp xmm1, xmm0, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVDDUP_YMM_YMM {
    movfp xmm0, xmm0m, dataSize=8
    movfp xmm1, xmm0m, dataSize=8
    movfp xmm2, xmm2m, dataSize=8
    movfp xmm3, xmm2m, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VMOVDDUP_YMM_M {
    ldfp xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=8
    ldfp xmm2, seg, sib, "DISPLACEMENT + 16", dataSize=8
    movfp xmm1, xmm0, dataSize=8
    movfp xmm3, xmm2, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VMOVDDUP_YMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    ldfp xmm2, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    movfp xmm1, xmm0, dataSize=8
    movfp xmm3, xmm2, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VMOVDDUP_ZMM_ZMM {
    movfp xmm0, xmm0m, dataSize=8
    movfp xmm1, xmm0m, dataSize=8
    movfp xmm2, xmm2m, dataSize=8
    movfp xmm3, xmm2m, dataSize=8
    movfp xmm4, xmm4m, dataSize=8
    movfp xmm5, xmm4m, dataSize=8
    movfp xmm6, xmm6m, dataSize=8
    movfp xmm7, xmm6m, dataSize=8
};

def macroop VMOVDDUP_ZMM_M {
    ldfp xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=8
    ldfp xmm2, seg, sib, "DISPLACEMENT + 16", dataSize=8
    ldfp xmm4, seg, sib, "DISPLACEMENT + 32", dataSize=8
    ldfp xmm6, seg, sib, "DISPLACEMENT + 48", dataSize=8
    movfp xmm1, xmm0, dataSize=8
    movfp xmm3, xmm2, dataSize=8
    movfp xmm5, xmm4, dataSize=8
    movfp xmm7, xmm6, dataSize=8
};

def macroop VMOVDDUP_ZMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    ldfp xmm2, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    ldfp xmm4, seg, riprel, "DISPLACEMENT + 32", dataSize=8
    ldfp xmm6, seg, riprel, "DISPLACEMENT + 48", dataSize=8
    movfp xmm1, xmm0, dataSize=8
    movfp xmm3, xmm2, dataSize=8
    movfp xmm5, xmm4, dataSize=8
    movfp xmm7, xmm6, dataSize=8
};


'''