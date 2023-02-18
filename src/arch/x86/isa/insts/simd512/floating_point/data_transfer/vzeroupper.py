microcode = """

def macroop VZEROUPPER {
    vclear dest="FpRegIndex(float_reg::xmmIdx(0, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(1, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(2, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(3, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(4, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(5, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(6, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(7, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(8, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(9, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(10, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(11, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(12, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(13, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(14, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(15, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(16, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(17, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(18, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(19, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(20, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(21, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(22, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(23, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(24, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(25, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(26, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(27, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(28, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(29, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(30, 2))", destVL=16
    vclear dest="FpRegIndex(float_reg::xmmIdx(31, 2))", destVL=16
};

"""
