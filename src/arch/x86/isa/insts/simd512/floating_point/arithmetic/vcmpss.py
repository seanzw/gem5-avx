microcode = """

def macroop VCMPSS_XMM_XMM_I {
    scmpf dest=maskk, src1=xmm0v, src2=xmm0m, imm8="(IMMEDIATE) & 0x1F", size=4, VL=8
};

def macroop VCMPSS_XMM_M_I {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=4
    scmpf dest=maskk, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1F", size=4, VL=8
};

def macroop VCMPSS_XMM_P_I {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
    scmpf dest=maskk, src1=xmm0v, src2=ufp1, imm8="(IMMEDIATE) & 0x1F", size=4, VL=8
};

"""
