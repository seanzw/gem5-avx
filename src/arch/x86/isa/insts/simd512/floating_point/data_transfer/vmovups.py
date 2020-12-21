microcode = '''
def macroop VMOVUPS_XMM_XMM {
    movfp128 dest=xmm0, src1=xmm0m, dataSize=16
    vclear dest=xmm2, destVL=16
};

def macroop VMOVUPS_XMM_M {
    ldfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vclear dest=xmm2, destVL=16
};

def macroop VMOVUPS_XMM_P {
    rdip t7
    ldfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vclear dest=xmm2, destVL=16
};

def macroop VMOVUPS_M_XMM {
    stfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVUPS_P_XMM {
    rdip t7
    stfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVUPS_YMM_YMM {
    movfp256 dest=xmm0, src1=xmm0m, dataSize=32
    vclear dest=xmm4, destVL=32
};

def macroop VMOVUPS_YMM_M {
    ldfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vclear dest=xmm4, destVL=32
};

def macroop VMOVUPS_YMM_P {
    rdip t7
    ldfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vclear dest=xmm4, destVL=32
};

def macroop VMOVUPS_M_YMM {
    stfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVUPS_P_YMM {
    rdip t7
    stfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVUPS_ZMM_ZMM {
    movfp512 dest=xmm0, src1=xmm0m, dataSize=64
};

def macroop VMOVUPS_ZMM_M {
    ldfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVUPS_ZMM_P {
    rdip t7
    ldfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVUPS_M_ZMM {
    stfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVUPS_P_ZMM {
    rdip t7
    stfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

'''