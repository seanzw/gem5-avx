microcode = """

def macroop KMOVTOGPB_R_R {
    kmov reg, maskkm, maskkm, dataSize=1
};

def macroop KMOVTOGPD_R_R {
    kmov reg, maskkm, maskkm, dataSize=4
};

def macroop KMOVTOGPQ_R_R {
    kmov reg, maskkm, maskkm, dataSize=8
};

def macroop KMOVFROMGPW_R_R {
    kmov maskk, regm, regm, dataSize=2
};

def macroop KMOVFROMGPQ_R_R {
    kmov maskk, regm, regm, dataSize=8
};

def macroop KMOVB_R_R {
    kmov maskk, maskkm, maskkm, dataSize=1
};

def macroop KMOVB_R_M {
    ld t1, seg, sib, disp, dataSize=1
    kmov maskk, t1, t1, dataSize=1
};

def macroop KMOVB_R_P {
    rdip t7
    ld t1, seg, riprel, disp, dataSize=1
    kmov maskk, t1, t1, dataSize=1
};

"""
