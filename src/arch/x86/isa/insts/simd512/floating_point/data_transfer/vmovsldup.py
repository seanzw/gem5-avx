microcode = '''
def macroop VMOVSLDUP_XMM_XMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm1m, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSLDUP_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSLDUP_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    vclear dest=xmm2, destVL=16
};

def macroop VMOVSLDUP_YMM_YMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm1m, size=4, ext=0
    mmovsdup dest=xmm2, src1=xmm2m, size=4, ext=0
    mmovsdup dest=xmm3, src1=xmm3m, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VMOVSLDUP_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp3, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp4, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VMOVSLDUP_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp3, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp4, size=4, ext=0
    vclear dest=xmm4, destVL=32
};

def macroop VMOVSLDUP_ZMM_ZMM {
    mmovsdup dest=xmm0, src1=xmm0m, size=4, ext=0
    mmovsdup dest=xmm1, src1=xmm1m, size=4, ext=0
    mmovsdup dest=xmm2, src1=xmm2m, size=4, ext=0
    mmovsdup dest=xmm3, src1=xmm3m, size=4, ext=0
    mmovsdup dest=xmm4, src1=xmm4m, size=4, ext=0
    mmovsdup dest=xmm5, src1=xmm5m, size=4, ext=0
    mmovsdup dest=xmm6, src1=xmm6m, size=4, ext=0
    mmovsdup dest=xmm7, src1=xmm7m, size=4, ext=0
};

def macroop VMOVSLDUP_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp3, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp4, size=4, ext=0
    mmovsdup dest=xmm4, src1=ufp5, size=4, ext=0
    mmovsdup dest=xmm5, src1=ufp6, size=4, ext=0
    mmovsdup dest=xmm6, src1=ufp7, size=4, ext=0
    mmovsdup dest=xmm7, src1=ufp8, size=4, ext=0
};

def macroop VMOVSLDUP_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    mmovsdup dest=xmm0, src1=ufp1, size=4, ext=0
    mmovsdup dest=xmm1, src1=ufp2, size=4, ext=0
    mmovsdup dest=xmm2, src1=ufp3, size=4, ext=0
    mmovsdup dest=xmm3, src1=ufp4, size=4, ext=0
    mmovsdup dest=xmm4, src1=ufp5, size=4, ext=0
    mmovsdup dest=xmm5, src1=ufp6, size=4, ext=0
    mmovsdup dest=xmm6, src1=ufp7, size=4, ext=0
    mmovsdup dest=xmm7, src1=ufp8, size=4, ext=0
};
'''