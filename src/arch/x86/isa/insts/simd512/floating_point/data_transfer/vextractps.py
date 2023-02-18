microcode = """

def macroop VEXTRACTPS_R_XMM_I {
    vextract reg, xmm0m, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
};

def macroop VEXTRACTPS_M_XMM_I {
    vextract t1, xmm0, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
    st t1, seg, sib, "DISPLACEMENT + 0", dataSize=4
};

def macroop VEXTRACTPS_P_XMM_I {
    vextract t1, xmm0, imm8="IMMEDIATE", srcVL=16, destVL=8, size=4
    rdip t7
    st t1, seg, riprel, "DISPLACEMENT + 0", dataSize=4
};

"""
