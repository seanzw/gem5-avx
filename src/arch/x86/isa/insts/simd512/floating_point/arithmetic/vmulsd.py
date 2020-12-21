
microcode = '''
def macroop VMULSD_XMM_XMM {
    mmulf xmm0, xmm0v, xmm0m, size=8, ext=Scalar
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMULSD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    mmulf xmm0, xmm0v, ufp1, size=8, ext=Scalar
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMULSD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    mmulf xmm0, xmm0v, ufp1, size=8, ext=Scalar
    movfp dest=xmm1, src1=xmm1v, dataSize=8
    vclear dest=xmm2, destVL=16
};

'''
