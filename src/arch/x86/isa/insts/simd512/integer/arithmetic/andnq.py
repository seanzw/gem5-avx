microcode = """

def macroop ANDNQ_R_R
{
    andn reg, regv, regm, flags=(OF,SF,ZF,CF), dataSize=8
};

def macroop ANDNQ_R_M
{
    ld t1, seg, sib, disp, dataSize=8
    andn reg, regv, t1, flags=(OF,SF,ZF,CF), dataSize=8
};

def macroop ANDNQ_R_P
{
    rdip t7
    ld t1, seg, riprel, disp, dataSize=8
    andn reg, regv, t1, flags=(OF,SF,ZF,CF), dataSize=8
};

"""
