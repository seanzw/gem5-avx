microcode = '''

def macroop VPEXTRQL_R_XMM_I {
    mov2int reg, xmm0m, srcSize=8, destSize=8
};

def macroop VPEXTRQL_M_XMM_I {
    stfp xmm0, seg, sib, disp, dataSize=8
};

def macroop VPEXTRQL_P_XMM_I {
    rdip t7
    stfp xmm0, seg, riprel, disp, dataSize=8
};

def macroop VPEXTRQH_R_XMM_I {
    mov2int reg, xmm1m, srcSize=8, destSize=8
};

def macroop VPEXTRQH_M_XMM_I {
    stfp xmm1, seg, sib, disp, dataSize=8
};

def macroop VPEXTRQH_P_XMM_I {
    rdip t7
    stfp xmm1, seg, riprel, disp, dataSize=8
};

'''