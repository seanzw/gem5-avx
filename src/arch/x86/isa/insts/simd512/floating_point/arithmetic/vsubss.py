microcode = """
def macroop VSUBSS_XMM_XMM {
    msubf xmm0, xmm0v, xmm0m, size=4, ext=Scalar
    movfph2h xmm0, xmm0v, dataSize=4
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VSUBSS_XMM_M {
    movfp reg1=xmm0, reg2=xmm0v, dataSize=8
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    ldfp ufp1, seg, sib, disp, dataSize=4
    msubf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    vclear dest=xmm2, destVL=16
};

def macroop VSUBSS_XMM_P {
    movfp reg1=xmm0, reg2=xmm0v, dataSize=8
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    msubf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    vclear dest=xmm2, destVL=16
};

"""
