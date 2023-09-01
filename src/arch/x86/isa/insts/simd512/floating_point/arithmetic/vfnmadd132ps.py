microcode = """
def macroop VFNMADD132PS_XMM_XMM {
    vfnmaddf dest=xmm0, src1=xmm0, src2=xmm0m, src3=xmm0v, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VFNMADD132PS_XMM_M {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VFNMADD132PS_XMM_P {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=16
    vclear dest=xmm2, destVL=16
};

def macroop VFNMADD132PS_YMM_YMM {
    vfnmaddf dest=xmm0, src1=xmm0, src2=xmm0m, src3=xmm0v, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VFNMADD132PS_YMM_M {
    ldfp256 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=32
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VFNMADD132PS_YMM_P {
    rdip t7
    ldfp256 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=32
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=32
    vclear dest=xmm4, destVL=32
};

def macroop VFNMADD132PS_ZMM_ZMM {
    vfnmaddf dest=xmm0, src1=xmm0, src2=xmm0m, src3=xmm0v, size=4, VL=64
};

def macroop VFNMADD132PS_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=64
};

def macroop VFNMADD132PS_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=64
};

def macroop VFNMADD132PSBROADCAST_ZMM_ZMM {
    vfnmaddf dest=xmm0, src1=xmm0, src2=xmm0m, src3=xmm0v, size=4, VL=64
};

def macroop VFNMADD132PSBROADCAST_ZMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=4
    vbroadcast srcSize=4, dest=ufp1, src=ufp1, destVL=64
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=64
};

def macroop VFNMADD132PSBROADCAST_ZMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    vbroadcast srcSize=4, dest=ufp1, src=ufp1, destVL=64
    vfnmaddf dest=xmm0, src1=xmm0, src2=ufp1, src3=xmm0v, size=4, VL=64
};

"""
