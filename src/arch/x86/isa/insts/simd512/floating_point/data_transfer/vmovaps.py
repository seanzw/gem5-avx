microcode = """

def macroop VMOVAPS_XMM_XMM {
    vmov dest=xmm0, src=xmm0m, size=4, VL=16, mask=maskka
    vclear dest=xmm2, destVL=16
};

def macroop VMOVAPS_XMM_M {
    ldfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vclear dest=xmm2, destVL=16
};

def macroop VMOVAPS_XMM_P {
    rdip t7
    ldfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vclear dest=xmm2, destVL=16
};

def macroop VMOVAPS_M_XMM {
    stfp128 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVAPS_P_XMM {
    rdip t7
    stfp128 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=16
};

def macroop VMOVAPS_YMM_YMM {
    vmov dest=xmm0, src=xmm0m, size=4, VL=32, mask=maskka
    vclear dest=xmm4, destVL=32
};

def macroop VMOVAPS_YMM_M {
    ldfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vclear dest=xmm4, destVL=32
};

def macroop VMOVAPS_YMM_P {
    rdip t7
    ldfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vclear dest=xmm4, destVL=32
};

def macroop VMOVAPS_M_YMM {
    stfp256 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVAPS_P_YMM {
    rdip t7
    stfp256 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=32
};

def macroop VMOVAPS_ZMM_ZMM {
    vmov dest=xmm0, src=xmm0m, size=4, VL=64, mask=maskka
};

def macroop VMOVAPS_ZMM_M {
    ldfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVAPS_ZMM_P {
    rdip t7
    ldfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVAPS_M_ZMM {
    stfp512 xmm0, seg, sib, "DISPLACEMENT + 0", dataSize=64
};

def macroop VMOVAPS_P_ZMM {
    rdip t7
    stfp512 xmm0, seg, riprel, "DISPLACEMENT + 0", dataSize=64
};

"""
