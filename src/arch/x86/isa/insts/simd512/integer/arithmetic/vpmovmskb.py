microcode = """
def macroop VPMOVMSKB_R_YMM {
    limm reg, 0
    movsign reg, xmm0m, size=1, ext=0
    movsign reg, xmm1m, size=1, ext=1
    movsign reg, xmm2m, size=1, ext=2
    movsign reg, xmm3m, size=1, ext=3
};

def macroop VPMOVMSKB_R_P {
    panic "VPMOVMSKB with memory operand in R/M."
};

def macroop VPMOVMSKB_R_M {
    panic "VPMOVMSKB with memory operand in R/M."
};

"""
