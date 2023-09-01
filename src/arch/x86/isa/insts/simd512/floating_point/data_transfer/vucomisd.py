microcode = """

def macroop VUCOMISD_XMM_XMM {
    mcmpf2rf xmm0, xmm0m, size=8
};

def macroop VUCOMISD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    mcmpf2rf xmm0, ufp1, size=8
};

def macroop VUCOMISD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    mcmpf2rf xmm0, ufp1, size=8
};


"""
