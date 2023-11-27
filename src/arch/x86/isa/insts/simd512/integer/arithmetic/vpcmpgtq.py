microcode = """

def macroop VPCMPGTQ_ZMM_ZMM {
    vcmpgtmask dest=maskk, src1=xmm0v, src2=xmm0m, size=8, VL=64
};

def macroop VPCMPGTQ_ZMM_M {
    ldfp512 ufp1, seg, sib, "DISPLACEMENT + 0", dataSize=64
    vcmpgtmask dest=maskk, src1=xmm0v, src2=ufp1, size=8, VL=64
};

def macroop VPCMPGTQ_ZMM_P {
    rdip t7
    ldfp512 ufp1, seg, riprel, "DISPLACEMENT + 0", dataSize=64
    vcmpgtmask dest=maskk, src1=xmm0v, src2=ufp1, size=8, VL=64
};
"""
