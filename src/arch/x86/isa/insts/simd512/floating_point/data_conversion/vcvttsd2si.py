microcode = """

def macroop VCVTTSD2SI_R_XMM {
    cvtf2i ufp1, xmm0m, srcSize=8, destSize=dsz, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

def macroop VCVTTSD2SI_R_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    cvtf2i ufp1, ufp1, srcSize=8, destSize=dsz, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

def macroop VCVTTSD2SI_R_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    cvtf2i ufp1, ufp1, srcSize=8, destSize=dsz, ext=Scalar
    mov2int reg, ufp1, size=dsz
};

"""
