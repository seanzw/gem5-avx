microcode = '''

def macroop VPMOVDQ_XMM_XMM {
    movfpl2l dest=xmm0, src1=xmm0m, dataSize=4
    movfpl2h dest=xmm0, src1=xmm1m, dataSize=4
    vclear dest=xmm1, destVL=8
};

def macroop VPMOVDQ_M_XMM {
    stfp xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, sib, "DISPLACEMENT + 4", dataSize=4
};

def macroop VPMOVDQ_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, riprel, "DISPLACEMENT + 4", dataSize=4
};

def macroop VPMOVDQ_XMM_YMM {
    movfpl2l dest=xmm0, src1=xmm0m, dataSize=4
    movfpl2h dest=xmm0, src1=xmm1m, dataSize=4
    movfpl2l dest=xmm1, src1=xmm2m, dataSize=4
    movfpl2h dest=xmm1, src1=xmm3m, dataSize=4
    vclear dest=xmm2, destVL=16
};

def macroop VPMOVDQ_M_YMM {
    stfp xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, sib, "DISPLACEMENT + 4", dataSize=4
    stfp xmm2, seg, sib, "DISPLACEMENT + 8", dataSize=4
    stfp xmm3, seg, sib, "DISPLACEMENT + 12", dataSize=4
};

def macroop VPMOVDQ_P_YMM {
    rdip t7
    stfp xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, riprel, "DISPLACEMENT + 4", dataSize=4
    stfp xmm2, seg, riprel, "DISPLACEMENT + 8", dataSize=4
    stfp xmm3, seg, riprel, "DISPLACEMENT + 12", dataSize=4
};

def macroop VPMOVDQ_YMM_ZMM {
    movfpl2l dest=xmm0, src1=xmm0m, dataSize=4
    movfpl2h dest=xmm0, src1=xmm1m, dataSize=4
    movfpl2l dest=xmm1, src1=xmm2m, dataSize=4
    movfpl2h dest=xmm1, src1=xmm3m, dataSize=4
    movfpl2l dest=xmm2, src1=xmm4m, dataSize=4
    movfpl2h dest=xmm2, src1=xmm5m, dataSize=4
    movfpl2l dest=xmm3, src1=xmm6m, dataSize=4
    movfpl2h dest=xmm3, src1=xmm7m, dataSize=4
    vclear dest=xmm4, destVL=32
};

def macroop VPMOVDQ_M_ZMM {
    stfp xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, sib, "DISPLACEMENT + 4", dataSize=4
    stfp xmm2, seg, sib, "DISPLACEMENT + 8", dataSize=4
    stfp xmm3, seg, sib, "DISPLACEMENT + 12", dataSize=4
    stfp xmm4, seg, sib, "DISPLACEMENT + 16", dataSize=4
    stfp xmm5, seg, sib, "DISPLACEMENT + 20", dataSize=4
    stfp xmm6, seg, sib, "DISPLACEMENT + 24", dataSize=4
    stfp xmm7, seg, sib, "DISPLACEMENT + 28", dataSize=4
};

def macroop VPMOVDQ_P_ZMM {
    rdip t7
    stfp xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    stfp xmm1, seg, riprel, "DISPLACEMENT + 4", dataSize=4
    stfp xmm2, seg, riprel, "DISPLACEMENT + 8", dataSize=4
    stfp xmm3, seg, riprel, "DISPLACEMENT + 12", dataSize=4
    stfp xmm4, seg, riprel, "DISPLACEMENT + 16", dataSize=4
    stfp xmm5, seg, riprel, "DISPLACEMENT + 20", dataSize=4
    stfp xmm6, seg, riprel, "DISPLACEMENT + 24", dataSize=4
    stfp xmm7, seg, riprel, "DISPLACEMENT + 28", dataSize=4
};

'''