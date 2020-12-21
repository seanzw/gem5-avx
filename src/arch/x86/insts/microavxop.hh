#ifndef __ARCH_X86_INSTS_MICROAVXOP_HH__
#define __ARCH_X86_INSTS_MICROAVXOP_HH__

#include "arch/x86/insts/microop.hh"

namespace X86ISA {

class AVXOpBase : public X86MicroopBase {

public:
  enum SrcType {
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
  const uint8_t destSize;
  const uint8_t destVL;
  const uint8_t srcSize;
  const uint8_t srcVL;
  const uint8_t imm8;
  const uint8_t ext;

  // Constructor
  AVXOpBase(ExtMachInst _machInst, const char *_mnem, const char *_instMnem,
            uint64_t _setFlags, OpClass _opClass, SrcType _srcType,
            InstRegIndex _dest, InstRegIndex _src1, InstRegIndex _src2,
            uint8_t _destSize, uint8_t _destVL, uint8_t _srcSize,
            uint8_t _srcVL, uint8_t _imm8, uint8_t _ext)
      : X86MicroopBase(_machInst, _mnem, _instMnem, _setFlags, _opClass),
        srcType(_srcType), dest(_dest.index()), src1(_src1.index()),
        src2(_src2.index()), destSize(_destSize), destVL(_destVL),
        srcSize(_srcSize), srcVL(_srcVL), imm8(_imm8), ext(_ext) {
    assert((destVL % sizeof(uint64_t) == 0) && "Invalid destVL.\n");
    assert((srcVL % sizeof(uint64_t) == 0) && "Invalid srcVL.\n");
  }

  std::string generateDisassembly(Addr pc,
                                  const ::Loader::SymbolTable *symtab) const;

  union FloatInt {
    struct __attribute__((packed)) {
      float f1;
      float f2;
    } f;
    double d;
    struct __attribute__((packed)) {
      uint32_t i1;
      uint32_t i2;
    } ui;
    struct __attribute__((packed)) {
      int32_t i1;
      int32_t i2;
    } si;
    struct __attribute__((packed)) {
      uint8_t i1;
      uint8_t i2;
      uint8_t i3;
      uint8_t i4;
      uint8_t i5;
      uint8_t i6;
      uint8_t i7;
      uint8_t i8;
    } uc;
    struct __attribute__((packed)) {
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

  enum BinaryOp {
    FloatAdd,
    FloatSub,
    FloatMul,
    FloatDiv,
    // Add/Sub can ignore sign.
    IntAdd,
    IntSub,
    IntAnd,
    SIntMin,
  };

  FloatInt calcPackedBinaryOp(FloatInt src1, FloatInt src2, BinaryOp op) const;
  // A helper function to perform packed src1 op src2
  void doPackedBinaryOp(ExecContext *xc, BinaryOp op) const;
  // A helper function to perform packed (src1 op1 src2) op2 src3
  void doFusedPackedBinaryOp(ExecContext *xc, BinaryOp op1, BinaryOp op2) const;

  // A helper function to add dest regs.
  inline void addAVXDestRegs() {
    auto vDestRegs = destVL / sizeof(uint64_t);
    assert(vDestRegs <= NumXMMSubRegs && "DestVL overflow.");
    _numDestRegs = _numFPDestRegs = vDestRegs;
    assert(_numDestRegs <= MaxInstDestRegs && "DestRegs overflow.");
    for (int i = 0; i < vDestRegs; i++) {
      setDestRegIdx(i, RegId(FloatRegClass, dest + i));
    }
  }
};

} // namespace X86ISA

#endif //__ARCH_X86_INSTS_MICROAVXOP_HH__
