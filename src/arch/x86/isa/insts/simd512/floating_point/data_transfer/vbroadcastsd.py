microcode = """

def macroop VBROADCASTSD_YMM_XMM {
    movfp reg1=xmm0, reg2=xmm0m, dataSize=8
    movfp reg1=xmm1, reg2=xmm0m, dataSize=8
    movfp reg1=xmm2, reg2=xmm0m, dataSize=8
    movfp reg1=xmm3, reg2=xmm0m, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    movfp reg1=xmm0, reg2=ufp1, dataSize=8
    movfp reg1=xmm1, reg2=ufp1, dataSize=8
    movfp reg1=xmm2, reg2=ufp1, dataSize=8
    movfp reg1=xmm3, reg2=ufp1, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    movfp reg1=xmm0, reg2=ufp1, dataSize=8
    movfp reg1=xmm1, reg2=ufp1, dataSize=8
    movfp reg1=xmm2, reg2=ufp1, dataSize=8
    movfp reg1=xmm3, reg2=ufp1, dataSize=8
    vclear dest=xmm4, destVL=32
};

def macroop VBROADCASTSD_ZMM_XMM {
    movfp reg1=xmm0, reg2=xmm0m, dataSize=8
    movfp reg1=xmm1, reg2=xmm0m, dataSize=8
    movfp reg1=xmm2, reg2=xmm0m, dataSize=8
    movfp reg1=xmm3, reg2=xmm0m, dataSize=8
    movfp reg1=xmm4, reg2=xmm0m, dataSize=8
    movfp reg1=xmm5, reg2=xmm0m, dataSize=8
    movfp reg1=xmm6, reg2=xmm0m, dataSize=8
    movfp reg1=xmm7, reg2=xmm0m, dataSize=8
};

def macroop VBROADCASTSD_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    movfp reg1=xmm0, reg2=ufp1, dataSize=8
    movfp reg1=xmm1, reg2=ufp1, dataSize=8
    movfp reg1=xmm2, reg2=ufp1, dataSize=8
    movfp reg1=xmm3, reg2=ufp1, dataSize=8
    movfp reg1=xmm4, reg2=ufp1, dataSize=8
    movfp reg1=xmm5, reg2=ufp1, dataSize=8
    movfp reg1=xmm6, reg2=ufp1, dataSize=8
    movfp reg1=xmm7, reg2=ufp1, dataSize=8
};

def macroop VBROADCASTSD_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    movfp reg1=xmm0, reg2=ufp1, dataSize=8
    movfp reg1=xmm1, reg2=ufp1, dataSize=8
    movfp reg1=xmm2, reg2=ufp1, dataSize=8
    movfp reg1=xmm3, reg2=ufp1, dataSize=8
    movfp reg1=xmm4, reg2=ufp1, dataSize=8
    movfp reg1=xmm5, reg2=ufp1, dataSize=8
    movfp reg1=xmm6, reg2=ufp1, dataSize=8
    movfp reg1=xmm7, reg2=ufp1, dataSize=8
};

"""
