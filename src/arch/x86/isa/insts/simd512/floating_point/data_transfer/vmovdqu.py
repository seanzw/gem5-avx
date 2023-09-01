microcode = """

def macroop VMOVDQU_XMM_XMM {
    movfp128 reg1=xmm0, reg2=xmm0m, dataSize=16
};

def macroop VMOVDQU_XMM_M {
    ldfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVDQU_XMM_P {
    rdip t7
    ldfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVDQU_M_XMM {
    stfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVDQU_P_XMM {
    rdip t7
    stfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVDQU_YMM_YMM {
    movfp256 reg1=xmm0, reg2=xmm0m, dataSize=32
};

def macroop VMOVDQU_YMM_M {
    ldfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVDQU_YMM_P {
    rdip t7
    ldfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVDQU_M_YMM {
    stfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVDQU_P_YMM {
    rdip t7
    stfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVDQU_ZMM_ZMM {
    movfp512 reg1=xmm0, reg2=xmm0m, dataSize=64
};

def macroop VMOVDQU_ZMM_M {
    ldfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVDQU_ZMM_P {
    rdip t7
    ldfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVDQU_M_ZMM {
    stfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVDQU_P_ZMM {
    rdip t7
    stfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

"""
