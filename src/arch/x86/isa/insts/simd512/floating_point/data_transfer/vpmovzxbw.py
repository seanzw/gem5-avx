microcode = """

def macroop VPMOVZXBW_XMM_XMM {
    vmovzx dest=xmm0, src=xmm0m, srcSize=1, destVL=16
    vclear dest=xmm1, destVL=8
};

def macroop VPMOVZXBW_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vmovzx dest=xmm0, src=ufp1, srcSize=1, destVL=16
    vclear dest=xmm1, destVL=8
};

def macroop VPMOVZXBW_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vmovzx dest=xmm0, src=ufp1, srcSize=1, destVL=16
    vclear dest=xmm1, destVL=8
};

def macroop VPMOVZXBW_YMM_YMM {
    vmovzx dest=xmm0, src=xmm0m, srcSize=1, destVL=32
    vclear dest=xmm4, destVL=16
};

def macroop VPMOVZXBW_YMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vmovzx dest=xmm0, src=ufp1, srcSize=1, destVL=32
    vclear dest=xmm4, destVL=16
};

def macroop VPMOVZXBW_YMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vmovzx dest=xmm0, src=ufp1, srcSize=1, destVL=32
    vclear dest=xmm4, destVL=16
};


"""
