
microcode = '''
def macroop VXORPD_XMM_XMM {
    mxor xmm0, xmm0v, xmm0m
    mxor xmm1, xmm1v, xmm1m
    vclear dest=xmm2, destVL=16
};

def macroop VXORPD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 8", dataSize=8
    mxor xmm0, xmm0v, ufp1
    mxor xmm1, xmm1v, ufp2
    vclear dest=xmm2, destVL=16
};

def macroop VXORPD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    mxor xmm0, xmm0v, ufp1
    mxor xmm1, xmm1v, ufp2
    vclear dest=xmm2, destVL=16
};

def macroop VXORPD_YMM_YMM {
    mxor xmm0, xmm0v, xmm0m
    mxor xmm1, xmm1v, xmm1m
    mxor xmm2, xmm2v, xmm2m
    mxor xmm3, xmm3v, xmm3m
    vclear dest=xmm4, destVL=32
};

def macroop VXORPD_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp3, seg, sib, "DISPLACEMENT + 16", dataSize=8
    ldfp ufp4, seg, sib, "DISPLACEMENT + 24", dataSize=8
    mxor xmm0, xmm0v, ufp1
    mxor xmm1, xmm1v, ufp2
    mxor xmm2, xmm2v, ufp3
    mxor xmm3, xmm3v, ufp4
    vclear dest=xmm4, destVL=32
};

def macroop VXORPD_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp3, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    ldfp ufp4, seg, riprel, "DISPLACEMENT + 24", dataSize=8
    mxor xmm0, xmm0v, ufp1
    mxor xmm1, xmm1v, ufp2
    mxor xmm2, xmm2v, ufp3
    mxor xmm3, xmm3v, ufp4
    vclear dest=xmm4, destVL=32
};

'''
