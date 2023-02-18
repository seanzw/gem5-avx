microcode = """
def macroop VFNMADD213SS_XMM_XMM {
    sfnmaddf dest=xmm0, src1=xmm0v, src2=xmm0, src3=xmm0m, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

def macroop VFNMADD213SS_XMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=4
    sfnmaddf dest=xmm0, src1=xmm0v, src2=xmm0, src3=ufp1, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

def macroop VFNMADD213SS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    sfnmaddf dest=xmm0, src1=xmm0v, src2=xmm0, src3=ufp1, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

"""
