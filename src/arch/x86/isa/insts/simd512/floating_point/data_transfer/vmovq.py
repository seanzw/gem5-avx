microcode = '''

def macroop VMOVQ_XMM_XMM {
    movfp xmm0, xmm0m
    vclear dest=xmm1, destVL=8
};

def macroop VMOVQ_M_XMM {
    stfp xmm0, seg, sib, disp, dataSize=8
};

def macroop VMOVQ_P_XMM {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=8
};

'''