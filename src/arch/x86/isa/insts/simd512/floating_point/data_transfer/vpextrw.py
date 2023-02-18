microcode = """

def macroop VPEXTRW_R_XMM_I {
    vextract reg, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=2
};

def macroop VPEXTRW_R_M_I {
    ldfp128 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=16
    vextract reg, ufp1, imm8="IMMEDIATE", srcVL=16, destVL=8, size=2
};

def macroop VPEXTRW_R_P_I {
    rdip t7
    ldfp128 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=16
    vextract reg, ufp1, imm8="IMMEDIATE", srcVL=16, destVL=8, size=2
};

def macroop VPEXTRW_M_XMM_I {
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=2
    st t1, seg, sib, disp, dataSize=2
};

def macroop VPEXTRW_P_XMM_I {
    rdip t7
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=2
    st t1, seg, riprel, disp, dataSize=2
};

"""
