microcode = """
def macroop VPORD_XMM_XMM {
    vor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=16, mask=maskka
    vclear dest=xmm2, destVL=16
};

def macroop VPORD_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16, mask=maskka
    vclear dest=xmm2, destVL=16
};

def macroop VPORD_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=16, mask=maskka
    vclear dest=xmm2, destVL=16
};

def macroop VPORD_YMM_YMM {
    vor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=32, mask=maskka
    vclear dest=xmm4, destVL=32
};

def macroop VPORD_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32, mask=maskka
    vclear dest=xmm4, destVL=32
};

def macroop VPORD_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=32, mask=maskka
    vclear dest=xmm4, destVL=32
};

def macroop VPORD_ZMM_ZMM {
    vor dest=xmm0, src1=xmm0v, src2=xmm0m, size=4, VL=64, mask=maskka
};

def macroop VPORD_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64, mask=maskka
};

def macroop VPORD_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vor dest=xmm0, src1=xmm0v, src2=ufp1, size=4, VL=64, mask=maskka
};

"""
