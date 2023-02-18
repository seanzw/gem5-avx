microcode = """
def macroop VFMADD132SS_XMM_XMM {
    sfmaddf dest=xmm0, src1=xmm0, src2=xmm0m, src3=xmm0v, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

def macroop VFMADD132SS_XMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=4
    sfmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

def macroop VFMADD132SS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    sfmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=8
    vclear dest=xmm2, destVL=16
};

"""
