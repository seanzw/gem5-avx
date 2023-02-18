microcode = """

def macroop VPUNPCKLQDQ_XMM_XMM {
    movfp xmm1, xmm0m, dataSize=8
    movfp xmm0, xmm0v, dataSize=8
};

def macroop VPUNPCKLQDQ_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    movfp xmm0, xmm0v, dataSize=8
    movfp xmm1, ufp1, dataSize=8
};

def macroop VPUNPCKLQDQ_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    movfp xmm0, xmm0v, dataSize=8
    movfp xmm1, ufp1, dataSize=8
};


"""
