microcode = """
def macroop VMOVLHPS_XMM_XMM {
    movfp xmm0, xmm0v, dataSize=8
    movfp xmm1, xmm0m, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVLHPS_XMM_M {
    movfp xmm0, xmm0v
    ldfp xmm1, seg, sib, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVLHPS_XMM_P {
    movfp xmm0, xmm0v
    rdip t7
    ldfp xmm1, seg, riprel, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};


"""
