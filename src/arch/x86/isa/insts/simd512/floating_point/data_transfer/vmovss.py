microcode = """
def macroop VMOVSS_XMM_XMM {
    movfp128 reg1=xmm0, reg2=xmm0v, dataSize=16
    movfpl2l xmm0, xmm0m, dataSize=4
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSS_XMM_M {
    lfpimm xmm0, 0
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
    ldfp xmm0, seg, sib, disp, dataSize=4
};

def macroop VMOVSS_XMM_P {
    rdip t7
    lfpimm xmm0, 0
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
    ldfp xmm0, seg, riprel, disp, dataSize=4
};


def macroop VMOVSS_M_XMM {
    stfp xmm0, seg, sib, disp, dataSize=4
};

def macroop VMOVSS_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=4
};

"""
