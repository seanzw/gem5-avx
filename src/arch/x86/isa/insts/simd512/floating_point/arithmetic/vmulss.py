microcode = """
def macroop VMULSS_XMM_XMM {
    smulf dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMULSS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    smulf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VMULSS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    smulf dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

"""
