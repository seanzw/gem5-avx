microcode = """

def macroop SHLXQ_R_R {
    shlx reg, regm, regv, dataSize=8
};

def macroop SHLXQ_R_M {
    ld t1, seg, sib, disp, dataSize=8
    shlx reg, t1, regv, dataSize=8
};

def macroop SHLXQ_R_P {
    rdip t7
    ld t1, seg, riprel, disp, dataSize=8
    shlx reg, t1, regv, dataSize=8
};

"""