microcode = '''

def macroop VSHUFPS_XMM_XMM_I {
    shuffle ufp1, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, xmm0m, xmm1m, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp1, dataSize=8
};

def macroop VSHUFPS_XMM_M_I {
    ldfp ufp1, seg, sib, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 8", dataSize=8
    shuffle ufp3, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, ufp1, ufp2, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp3, dataSize=8
};

def macroop VSHUFPS_XMM_P_I {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    shuffle ufp3, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, ufp1, ufp2, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp3, dataSize=8
};

def macroop VSHUFPS_YMM_YMM_I {
    shuffle ufp1, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, xmm0m, xmm1m, size=4, ext="IMMEDIATE >> 4"
    shuffle ufp2, xmm2v, xmm3v, size=4, ext="IMMEDIATE"
    shuffle xmm3, xmm2m, xmm3m, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp1, dataSize=8
    movfp xmm2, ufp2, dataSize=8
};

def macroop VSHUFPS_YMM_M_I {
    ldfp ufp1, seg, sib, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp3, seg, sib, "DISPLACEMENT + 16", dataSize=8
    ldfp ufp4, seg, sib, "DISPLACEMENT + 24", dataSize=8
    shuffle ufp5, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, ufp1, ufp2, size=4, ext="IMMEDIATE >> 4"
    shuffle ufp6, xmm2v, xmm3v, size=4, ext="IMMEDIATE"
    shuffle xmm3, ufp3, ufp4, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp5, dataSize=8
    movfp xmm2, ufp6, dataSize=8
};

def macroop VSHUFPS_YMM_P_I {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp3, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    ldfp ufp4, seg, riprel, "DISPLACEMENT + 24", dataSize=8
    shuffle ufp5, xmm0v, xmm1v, size=4, ext="IMMEDIATE"
    shuffle xmm1, ufp1, ufp2, size=4, ext="IMMEDIATE >> 4"
    shuffle ufp6, xmm2v, xmm3v, size=4, ext="IMMEDIATE"
    shuffle xmm3, ufp3, ufp4, size=4, ext="IMMEDIATE >> 4"
    movfp xmm0, ufp5, dataSize=8
    movfp xmm2, ufp6, dataSize=8
};

'''