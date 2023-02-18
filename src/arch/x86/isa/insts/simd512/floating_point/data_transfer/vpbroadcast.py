microcode = """

def macroop VPBROADCASTQ_ZMM_R {
    mov2fp ufp1, regm, destSize=8, srcSize=8
    vbroadcast srcSize=8, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTQ_ZMM_XMM {
    vbroadcast srcSize=8, dest=xmm0, src=xmm0m, destVL=64
};

def macroop VPBROADCASTQ_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    vbroadcast srcSize=8, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTQ_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    vbroadcast srcSize=8, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTD_XMM_XMM {
    vbroadcast srcSize=4, dest=xmm0, src=xmm0m, destVL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPBROADCASTD_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPBROADCASTD_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=16
    vclear dest=xmm2, destVL=16
};

def macroop VPBROADCASTD_YMM_XMM {
    vbroadcast srcSize=4, dest=xmm0, src=xmm0m, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTB_YMM_XMM {
    vbroadcast8 dest=xmm0, src=xmm0m, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTB_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=1
    vbroadcast8 dest=xmm0, src=ufp1, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTB_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=1
    vbroadcast8 dest=xmm0, src=ufp1, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTB_ZMM_R {
    mov2fp ufp1, regm, destSize=4, srcSize=4
    vbroadcast srcSize=1, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTB_ZMM_XMM {
    vbroadcast srcSize=1, dest=xmm0, src=xmm0m, destVL=64
};

def macroop VPBROADCASTB_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    vbroadcast srcSize=1, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTB_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    vbroadcast srcSize=1, dest=xmm0, src=ufp1, destVL=64
};


def macroop VPBROADCASTD_YMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTD_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=32
    vclear dest=xmm4, destVL=32
};

def macroop VPBROADCASTD_ZMM_R {
    mov2fp ufp1, regm, destSize=4, srcSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTD_ZMM_XMM {
    vbroadcast srcSize=4, dest=xmm0, src=xmm0m, destVL=64
};

def macroop VPBROADCASTD_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTD_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    vbroadcast srcSize=4, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTW_ZMM_R {
    mov2fp ufp1, regm, destSize=4, srcSize=4
    vbroadcast srcSize=2, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTW_ZMM_XMM {
    vbroadcast srcSize=2, dest=xmm0, src=xmm0m, destVL=64
};

def macroop VPBROADCASTW_ZMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=4
    vbroadcast srcSize=2, dest=xmm0, src=ufp1, destVL=64
};

def macroop VPBROADCASTW_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=4
    vbroadcast srcSize=2, dest=xmm0, src=ufp1, destVL=64
};

"""
