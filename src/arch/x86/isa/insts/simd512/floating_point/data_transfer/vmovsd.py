microcode = '''
def macroop VMOVSD_XMM_XMM {
    panic "VMOVSD_XMM_XMM not implemented."
};

def macroop VMOVSD_XMM_M {
    ldfp xmm0, seg, sib, disp, dataSize=8
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSD_XMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, disp, dataSize=8
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSD_M_XMM {
    stfp xmm0, seg, sib, disp, dataSize=8
};

def macroop VMOVSD_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=8
};

def macroop VMOVSD_ZMM_ZMM {
    panic "VMOVSD_ZMM_ZMM is not implemented."
};

def macroop VMOVSD_ZMM_M {
    ldfp xmm0, seg, sib, disp, dataSize=8
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSD_ZMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, disp, dataSize=8
    lfpimm xmm1, 0
    vclear dest=xmm2, destVL=16
};

'''