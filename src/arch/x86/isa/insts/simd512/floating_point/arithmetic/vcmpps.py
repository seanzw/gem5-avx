microcode = """

def macroop VCMPPS_ZMM_ZMM_I {
    vcmpf dest=maskk, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x1F", size=4, VL=64
};

def macroop VCMPPS_ZMM_M_I {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vcmpf dest=maskk, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1F", size=4, VL=64
};

def macroop VCMPPS_ZMM_P_I {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vcmpf dest=maskk, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1F", size=4, VL=64
};

"""
