microcode = """
def macroop VMINSS_XMM_XMM {
    mminf xmm0, xmm0v, xmm0m, size=4, ext=Scalar
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMINSS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    mminf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMINSS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    mminf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    movfp reg1=xmm1, reg2=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

"""
