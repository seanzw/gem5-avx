microcode = '''

def macroop VBROADCASTSS_XMM_XMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm0m, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VBROADCASTSS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VBROADCASTSS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VBROADCASTSS_YMM_XMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm2, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm3, src1=xmm0m, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSS_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp1, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSS_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp1, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSS_ZMM_XMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm2, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm3, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm4, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm5, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm6, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm7, src1=xmm0m, size=4, ext=0
};

def macroop VBROADCASTSS_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm4, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm5, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm6, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm7, src1=ufp1, size=4, ext=0
};

def macroop VBROADCASTSS_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm4, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm5, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm6, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm7, src1=ufp1, size=4, ext=0
};

'''