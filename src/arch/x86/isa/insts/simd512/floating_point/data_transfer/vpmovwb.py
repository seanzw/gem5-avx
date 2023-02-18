microcode = """

def macroop VPMOVWB_YMM_ZMM {
    vmovtr dest=xmm0, src=xmm0m, srcSize=2, destVL=32
};

def macroop VPMOVWB_M_ZMM {
    panic message="vpmovwb"
};

def macroop VPMOVWB_P_ZMM {
    panic message="vpmovwb"
};


"""
