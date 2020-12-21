microcode = '''
def macroop VMOVLHPS_XMM_XMM {
    movfp xmm0, xmm0v, dataSize=8
    movfp xmm1, xmm0m, dataSize=8
    vclear dest=xmm2, destVL=16
};

'''