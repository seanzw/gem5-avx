microcode = """

def macroop VPACKUSDW_XMM_XMM {
    vpackus xmm0, xmm0v, xmm0m, size=4, VL=16
};

def macroop VPACKUSDW_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vpackus xmm0, xmm0v, ufp1, size=4, VL=16
};

def macroop VPACKUSDW_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vpackus xmm0, xmm0v, ufp1, size=4, VL=16
};

def macroop VPACKUSDW_YMM_YMM {
    vpackus xmm0, xmm0v, xmm0m, size=4, VL=32
};

def macroop VPACKUSDW_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vpackus xmm0, xmm0v, ufp1, size=4, VL=32
};

def macroop VPACKUSDW_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vpackus xmm0, xmm0v, ufp1, size=4, VL=32
};

def macroop VPACKUSDW_ZMM_ZMM {
    vpackus xmm0, xmm0v, xmm0m, size=4, VL=64
};

def macroop VPACKUSDW_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vpackus xmm0, xmm0v, ufp1, size=4, VL=64
};

def macroop VPACKUSDW_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vpackus xmm0, xmm0v, ufp1, size=4, VL=64
};


"""
