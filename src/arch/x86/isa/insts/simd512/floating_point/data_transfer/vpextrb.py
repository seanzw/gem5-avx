microcode = """

def macroop VPEXTRB_R_XMM_I {
    vextract reg, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=1
};

def macroop VPEXTRB_M_XMM_I {
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=1
    st t1, seg, sib, disp, dataSize=1
};

def macroop VPEXTRB_P_XMM_I {
    rdip t7
    vextract t1, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=1
    st t1, seg, riprel, disp, dataSize=1
};

"""
