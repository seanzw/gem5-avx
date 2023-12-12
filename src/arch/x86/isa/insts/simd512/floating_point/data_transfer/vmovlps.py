microcode = """

def macroop VMOVLPS_XMM_M {
    movfp xmm1, xmm1v
    ldfp xmm0, seg, sib, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVLPS_XMM_P {
    movfp xmm1, xmm1v
    rdip t7
    ldfp xmm0, seg, riprel, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVLPS_M_XMM {
    stfp xmm0, seg, sib, disp, dataSize=8
};

def macroop VMOVLPS_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=8
};


"""
