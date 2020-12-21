microcode = '''

def macroop VEXTRACT256L_YMM_ZMM_I {
    movfp xmm0, xmm0m, dataSize=8
    movfp xmm1, xmm1m, dataSize=8
    movfp xmm2, xmm2m, dataSize=8
    movfp xmm3, xmm3m, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VEXTRACT256L_M_ZMM_I {
    stfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
};

def macroop VEXTRACT256L_P_ZMM_I {
    rdip t7
    stfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
};

def macroop VEXTRACT256H_YMM_ZMM_I {
    movfp xmm0, xmm4m, dataSize=8
    movfp xmm1, xmm5m, dataSize=8
    movfp xmm2, xmm6m, dataSize=8
    movfp xmm3, xmm7m, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VEXTRACT256H_M_ZMM_I {
    stfp xmm4, seg, sib, "DISPLACEMENT + 0", dataSize=8
    stfp xmm5, seg, sib, "DISPLACEMENT + 8", dataSize=8
    stfp xmm6, seg, sib, "DISPLACEMENT + 16", dataSize=8
    stfp xmm7, seg, sib, "DISPLACEMENT + 24", dataSize=8
};

def macroop VEXTRACT256H_P_ZMM_I {
    rdip t7
    stfp xmm4, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    stfp xmm5, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    stfp xmm6, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    stfp xmm7, seg, riprel, "DISPLACEMENT + 24", dataSize=8
};

def macroop VEXTRACT128L_XMM_YMM_I {
    movfp xmm0, xmm0m, dataSize=8
    movfp xmm1, xmm1m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VEXTRACT128L_M_YMM_I {
    stfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
};

def macroop VEXTRACT128L_P_YMM_I {
    rdip t7
    stfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
};

def macroop VEXTRACT128H_XMM_YMM_I {
    movfp dest=xmm0, src1=xmm2m, dataSize=8
    movfp dest=xmm1, src1=xmm3m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VEXTRACT128H_M_YMM_I {
    stfp xmm2, seg, sib, "DISPLACEMENT + 0", dataSize=8
    stfp xmm3, seg, sib, "DISPLACEMENT + 8", dataSize=8
};

def macroop VEXTRACT128H_P_YMM_I {
    rdip t7
    stfp xmm2, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    stfp xmm3, seg, riprel, "DISPLACEMENT + 8", dataSize=8
};

def macroop VEXTRACT128HL_XMM_ZMM_I {
    movfp xmm0, xmm4m, dataSize=8
    movfp xmm1, xmm5m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VEXTRACT128HL_M_ZMM_I {
    stfp xmm4, seg, sib, "DISPLACEMENT + 0", dataSize=8
    stfp xmm5, seg, sib, "DISPLACEMENT + 8", dataSize=8
};

def macroop VEXTRACT128HL_P_ZMM_I {
    rdip t7
    stfp xmm4, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    stfp xmm5, seg, riprel, "DISPLACEMENT + 8", dataSize=8
};

def macroop VEXTRACT128HH_XMM_ZMM_I {
    movfp xmm0, xmm6m, dataSize=8
    movfp xmm1, xmm7m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VEXTRACT128HH_M_ZMM_I {
    stfp xmm6, seg, sib, "DISPLACEMENT + 0", dataSize=8
    stfp xmm7, seg, sib, "DISPLACEMENT + 8", dataSize=8
};

def macroop VEXTRACT128HH_P_ZMM_I {
    rdip t7
    stfp xmm6, seg, riprel, "DISPLACEMENT + 0", dataSize=8
    stfp xmm7, seg, riprel, "DISPLACEMENT + 8", dataSize=8
};

'''