microcode = '''

def macroop VMOVD_XMM_R {
    mov2fp xmm0, regm, srcSize=dsz, destSize=8
    vclear dest=xmm1, destVL=8
};

def macroop VMOVD_XMM_M {
    ldfp xmm0, seg, sib, disp, dataSize=dsz
    vclear dest=xmm1, destVL=8
};

def macroop VMOVD_XMM_P {
    rdip t7
    ldfp xmm0, seg, riprel, disp, dataSize=dsz
    vclear dest=xmm1, destVL=8
};

def macroop VMOVD_R_XMM {
    mov2int reg, xmm0m, size=dsz
};

def macroop VMOVD_M_XMM {
    stfp xmm0, seg, sib, disp, dataSize=dsz
};

def macroop VMOVD_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=dsz
};

'''