#ifndef __ARCH_X86_INSTS_MICROAVXOP_HH__
#define __ARCH_X86_INSTS_MICROAVXOP_HH__

#include "arch/x86/insts/microop.hh"

namespace gem5 {

namespace X86ISA {

class AVXOpBase : public X86MicroopBase
{

public:
  enum SrcType
  {
    Non = 0,
    Reg,
    RegReg,
    RegImm,
    RegRegImm,
    RegRegReg, // Three opreands.
  };

protected:
  const SrcType srcType;
  const RegIndex dest;
  const RegIndex src1;
  const RegIndex src2;
  const RegIndex src3;
  const uint8_t destSize;
  const uint8_t destVL;
  const uint8_t srcSize;
  const uint8_t srcVL;
  const uint8_t imm8;
  const uint8_t ext;
  const RegIndex mask;

  /**
   * Now that src/dest reg arrays are declared internall in each static inst,
   * we manually decare the largest possible one here.
   * TODO: Use the current generator to taylor this array.
   */
  RegId srcRegIdxArr[MaxInstSrcRegs];
  RegId destRegIdxArr[MaxInstDestRegs];

  // Constructor
  AVXOpBase(ExtMachInst _machInst, const char *_mnem, const char *_instMnem,
            uint64_t _setFlags, OpClass _opClass, SrcType _srcType,
            FpRegIndex _dest, FpRegIndex _src1, FpRegIndex _src2,
            FpRegIndex _src3, uint8_t _destSize, uint8_t _destVL,
            uint8_t _srcSize, uint8_t _srcVL, uint8_t _imm8, uint8_t _ext,
            GpRegIndex _mask)
      : X86MicroopBase(_machInst, _mnem, _instMnem, _setFlags, _opClass),
        srcType(_srcType), dest(_dest.index), src1(_src1.index),
        src2(_src2.index), src3(_src3.index), destSize(_destSize),
        destVL(_destVL), srcSize(_srcSize), srcVL(_srcVL), imm8(_imm8),
        ext(_ext), mask(_mask.index) {
    assert((destVL % sizeof(uint64_t) == 0) && "Invalid destVL.\n");
    assert((srcVL % sizeof(uint64_t) == 0) && "Invalid srcVL.\n");

    setRegIdxArrays(reinterpret_cast<RegIdArrayPtr>(
                        &std::remove_pointer_t<decltype(this)>::srcRegIdxArr),
                    reinterpret_cast<RegIdArrayPtr>(
                        &std::remove_pointer_t<decltype(this)>::destRegIdxArr)
                    );
  }

  std::string generateDisassembly(Addr pc,
                                  const loader::SymbolTable *symtab) const;

  union FloatInt
  {
    struct __attribute__((packed))
    {
      float f1;
      float f2;
    } f;
    double d;
    struct __attribute__((packed))
    {
      uint32_t i1;
      uint32_t i2;
    } ui;
    struct __attribute__((packed))
    {
      int32_t i1;
      int32_t i2;
    } si;
    struct __attribute__((packed))
    {
      uint16_t i1;
      uint16_t i2;
      uint16_t i3;
      uint16_t i4;
    } us;
    uint16_t us_array[4];
    struct __attribute__((packed))
    {
      int16_t i1;
      int16_t i2;
      int16_t i3;
      int16_t i4;
    } ss;
    struct __attribute__((packed))
    {
      uint8_t i1;
      uint8_t i2;
      uint8_t i3;
      uint8_t i4;
      uint8_t i5;
      uint8_t i6;
      uint8_t i7;
      uint8_t i8;
    } uc;
    uint8_t uc_array[8];
    struct __attribute__((packed))
    {
      int8_t i1;
      int8_t i2;
      int8_t i3;
      int8_t i4;
      int8_t i5;
      int8_t i6;
      int8_t i7;
      int8_t i8;
    } sc;
    uint64_t ul;
    int64_t sl;
  };

  enum BinaryOp
  {
    FloatAdd,
    FloatSub,
    FloatMul,
    FloatDiv,
    FloatMax,
    FloatMin,
    FloatNegMul,
    // Add/Sub can ignore sign.
    IntAdd,
    IntSatAdd,
    IntSub,
    IntAnd,
    IntXor,
    IntOr,
    IntCmpEq,
    IntMul,
    IntMulLow,
    UIntMul,
    UIntMulLow,
    SIntMin,
    SIntToUIntPack,
  };

  FloatInt calcPackedBinaryOp(FloatInt src1, FloatInt src2, BinaryOp op) const;
  // A helper function to perform packed src1 op src2
  void doPackedBinaryOp(ExecContext *xc, BinaryOp op) const;
  // A helper function to perform packed (src1 op1 src2) op2 src3
  void doFusedPackedBinaryOp(ExecContext *xc,
    BinaryOp op1, BinaryOp op2) const;
  // A helper function to perform single (src1 op1 src2) op2 src3
  void doFusedSingleBinaryOp(ExecContext *xc,
    BinaryOp op1, BinaryOp op2) const;
  // A helper function to perform pack operation
  void doPackOp(ExecContext *xc, BinaryOp op) const;
  // A helper function to perform extract operation
  void doExtract(ExecContext *xc) const;
  // A helper function to perform insert operation
  void doInsert(ExecContext *xc) const;
  // // A helper function to perform broadcast operation
  // void doBroadcast(ExecContext *xc) const;
  // A helper function to perform vcmpf operation.
  void doFloatCompare(ExecContext *xc, bool isSingle = false) const;
  // A helper function to perform single src1 op src2
  void doSingleBinaryOpFillSrc1(ExecContext *xc, BinaryOp op) const;
  // A helper function to perform move operation
  void doMov(ExecContext *xc) const;
  // A helper function to perform permutation in lane
  void doPermuteInLane(ExecContext *xc) const;

  // A helper function to add dest regs.
  void addAVXDestRegs();

  // A helper function to add dest regs as src regs.
  void addAVXDestAsSrcRegs();
};

} // namespace X86ISA
} // namespace gem5

#endif //__ARCH_X86_INSTS_MICROAVXOP_HH__
