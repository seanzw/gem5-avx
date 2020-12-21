microcode = '''

def macroop VZEROUPPER {
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(0, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(1, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(2, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(3, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(4, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(5, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(6, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(7, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(8, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(9, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(10, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(11, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(12, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(13, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(14, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(15, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(16, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(17, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(18, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(19, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(20, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(21, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(22, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(23, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(24, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(25, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(26, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(27, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(28, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(29, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(30, 2))", destVL=16
    vclear dest="InstRegIndex(FLOATREG_XMM_IDX(31, 2))", destVL=16
};

'''