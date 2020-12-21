
microcode = '''
def macroop VDIVSS_XMM_XMM {
    mdivf xmm0, xmm0v, xmm0m, size=4, ext=Scalar
    movfph2h dest=xmm0, src1=xmm0v, dataSize=4
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VDIVSS_XMM_M {
    movfp dest=xmm0, src1=xmm0v, dataSize=8
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    ldfp ufp1, seg, sib, disp, dataSize=4
    mdivf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    vclear dest=xmm2, destVL=16
};

def macroop VDIVSS_XMM_P {
    movfp dest=xmm0, src1=xmm0v, dataSize=8
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    mdivf xmm0, xmm0v, ufp1, size=4, ext=Scalar
    vclear dest=xmm2, destVL=16
};

'''
