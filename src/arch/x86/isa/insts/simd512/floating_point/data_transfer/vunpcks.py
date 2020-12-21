microcode = '''

def macroop VUNPCKLPS_XMM_XMM {
    unpack xmm0, xmm0v, xmm0m, ext=0, size=4
    unpack xmm1, xmm0v, xmm0m, ext=1, size=4
};

def macroop VUNPCKLPS_XMM_M {
    ldfp ufp1, seg, sib, disp, dataSize=8
    unpack xmm0, xmm0v, ufp1, ext=0, size=4
    unpack xmm1, xmm0v, ufp1, ext=1, size=4
};

def macroop VUNPCKLPS_XMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, disp, dataSize=8
    unpack xmm0, xmm0v, ufp1, ext=0, size=4
    unpack xmm1, xmm0v, ufp1, ext=1, size=4
};

def macroop VUNPCKLPS_YMM_YMM {
    unpack xmm0, xmm0v, xmm0m, ext=0, size=4
    unpack xmm1, xmm0v, xmm0m, ext=1, size=4
    unpack xmm2, xmm2v, xmm2m, ext=0, size=4
    unpack xmm3, xmm2v, xmm2m, ext=1, size=4
};

def macroop VUNPCKLPS_YMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 16", dataSize=8
    unpack xmm0, xmm0v, ufp1, ext=0, size=4
    unpack xmm1, xmm0v, ufp1, ext=1, size=4
    unpack xmm2, xmm2v, ufp2, ext=0, size=4
    unpack xmm3, xmm2v, ufp2, ext=1, size=4
};

def macroop VUNPCKLPS_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT", dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 16", dataSize=8
    unpack xmm0, xmm0v, ufp1, ext=0, size=4
    unpack xmm1, xmm0v, ufp1, ext=1, size=4
    unpack xmm2, xmm2v, ufp2, ext=0, size=4
    unpack xmm3, xmm2v, ufp2, ext=1, size=4
};

def macroop VUNPCKHPS_XMM_XMM {
    unpack xmm0, xmm1v, xmm1m, ext=0, size=4
    unpack xmm1, xmm1v, xmm1m, ext=1, size=4
};

def macroop VUNPCKHPS_XMM_M {
    lea t1, seg, sib, disp, dataSize=asz
    ldfp ufp1, seg, [1, t0, t1], 8, dataSize=8
    unpack xmm0, xmm1v, ufp1, ext=0, size=4
    unpack xmm1, xmm1v, ufp1, ext=1, size=4
};

def macroop VUNPCKHPS_XMM_P {
    rdip t7
    lea t1, seg, riprel, disp, dataSize=asz
    ldfp ufp1, seg, [1, t0, t1], 8, dataSize=8
    unpack xmm0, xmm1v, ufp1, ext=0, size=4
    unpack xmm1, xmm1v, ufp1, ext=1, size=4
};

def macroop VUNPCKHPS_YMM_YMM {
    unpack xmm0, xmm1v, xmm1m, ext=0, size=4
    unpack xmm1, xmm1v, xmm1m, ext=1, size=4
    unpack xmm2, xmm3v, xmm3m, ext=0, size=4
    unpack xmm3, xmm3v, xmm3m, ext=1, size=4
};

def macroop VUNPCKHPS_YMM_M {
    ldfp ufp1, seg, sib, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp2, seg, sib, "DISPLACEMENT + 24", dataSize=8
    unpack xmm0, xmm1v, ufp1, ext=0, size=4
    unpack xmm1, xmm1v, ufp1, ext=1, size=4
    unpack xmm2, xmm3v, ufp2, ext=0, size=4
    unpack xmm3, xmm3v, ufp2, ext=1, size=4
};

def macroop VUNPCKHPS_YMM_P {
    rdip t7
    ldfp ufp1, seg, riprel, "DISPLACEMENT + 8", dataSize=8
    ldfp ufp2, seg, riprel, "DISPLACEMENT + 24", dataSize=8
    unpack xmm0, xmm1v, ufp1, ext=0, size=4
    unpack xmm1, xmm1v, ufp1, ext=1, size=4
    unpack xmm2, xmm3v, ufp2, ext=0, size=4
    unpack xmm3, xmm3v, ufp2, ext=1, size=4
};

'''