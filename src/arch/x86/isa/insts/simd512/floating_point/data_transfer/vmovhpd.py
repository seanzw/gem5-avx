microcode = """

def macroop VMOVHPD_XMM_M {
    movfp xmm0, xmm0v
    ldfp xmm1, seg, sib, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVHPD_XMM_P {
    movfp xmm0, xmm0v
    rdip t7
    ldfp xmm1, seg, riprel, disp, dataSize=8
    vclear dest=xmm2, destVL=16
};

def macroop VMOVHPD_M_XMM {
    stfp xmm1, seg, sib, disp, dataSize=8
};

def macroop VMOVHPD_P_XMM {
    rdip t7
    stfp xmm1, seg, riprel, disp, dataSize=8
};


"""
