microcode = """

def macroop VPEXTRD_R_XMM_I {
    vextract reg, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
};

def macroop VPEXTRD_M_XMM_I {
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
    st t1, seg, sib, disp, dataSize=4
};

def macroop VPEXTRD_P_XMM_I {
    rdip t7
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
    st t1, seg, riprel, disp, dataSize=4
};

"""
