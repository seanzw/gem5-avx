microcode = """

def macroop VCVTSD2SI_R_XMM {
    cvtf2i ufp1, xmm0m, destSize=dsz, srcSize=8, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

def macroop VCVTSD2SI_R_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    cvtf2i ufp1, ufp1, destSize=dsz, srcSize=8, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

def macroop VCVTSD2SI_R_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    cvtf2i ufp1, ufp1, destSize=dsz, srcSize=8, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

"""
