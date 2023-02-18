microcode = """
def macroop VSQRTSD_XMM_XMM {
    msqrt xmm0, xmm0m, size=8, ext=Scalar
    movfp xmm1, xmm1v, dataSize=0
};

def macroop VSQRTSD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    msqrt xmm0, ufp1, size=8, ext=Scalar
    movfp xmm1, xmm1v, dataSize=0
};

def macroop VSQRTSD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    msqrt xmm0, ufp1, size=8, ext=Scalar
    movfp xmm1, xmm1v, dataSize=0
};

"""
