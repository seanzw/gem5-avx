#include "arch/x86/insts/microavxop.hh"

#include <string>

#include "arch/x86/regs/misc.hh"
#include "cpu/exec_context.hh"

namespace X86ISA {
std::string
AVXOpBase::generateDisassembly(Addr pc,
                               const ::Loader::SymbolTable *symtab) const {
  std::stringstream response;

  printMnemonic(response, instMnem, mnemonic);
  printDestReg(response, 0, destSize);
  if (this->srcType == SrcType::Non) {
    return response.str();
  }
  response << ", ";
  printSrcReg(response, 0, srcSize);
  switch (this->srcType) {
  case RegReg: {
    response << ", ";
    printSrcReg(response, 1, srcSize);
    break;
  }
  case RegImm: {
    ccprintf(response, ", %#x", imm8);
    break;
  }
  case RegRegImm: {
    response << ", ";
    printSrcReg(response, 1, srcSize);
    ccprintf(response, ", %#x", imm8);
    break;
  }
  case RegRegReg: {
    response << ", ";
    printSrcReg(response, 1, srcSize);
    response << ", ";
    printSrcReg(response, 2, srcSize);
    break;
  }
  default:
    break;
  }
  return response.str();
}

AVXOpBase::FloatInt AVXOpBase::calcPackedBinaryOp(FloatInt src1, FloatInt src2,
                                                  BinaryOp op) const {
  FloatInt dest;
  if (this->srcSize == 4) {
    // 2 float.
    switch (op) {
    case BinaryOp::FloatAdd:
      dest.f.f1 = src1.f.f1 + src2.f.f1;
      dest.f.f2 = src1.f.f2 + src2.f.f2;
      break;
    case BinaryOp::FloatSub:
      dest.f.f1 = src1.f.f1 - src2.f.f1;
      dest.f.f2 = src1.f.f2 - src2.f.f2;
      break;
    case BinaryOp::FloatMul:
      dest.f.f1 = src1.f.f1 * src2.f.f1;
      dest.f.f2 = src1.f.f2 * src2.f.f2;
      break;
    case BinaryOp::FloatDiv:
      dest.f.f1 = src1.f.f1 / src2.f.f1;
      dest.f.f2 = src1.f.f2 / src2.f.f2;
      break;
    case BinaryOp::IntAdd:
      dest.si.i1 = src1.si.i1 + src2.si.i1;
      dest.si.i2 = src1.si.i2 + src2.si.i2;
      break;
    case BinaryOp::IntSub:
      dest.si.i1 = src1.si.i1 - src2.si.i1;
      dest.si.i2 = src1.si.i2 - src2.si.i2;
      break;
    case BinaryOp::IntAnd:
      dest.si.i1 = src1.si.i1 & src2.si.i1;
      dest.si.i2 = src1.si.i2 & src2.si.i2;
      break;
    case BinaryOp::SIntMin:
      dest.si.i1 = std::min(src1.si.i1, src2.si.i1);
      dest.si.i2 = std::min(src1.si.i2, src2.si.i2);
      break;
    default:
      assert(false && "Invalid op type.");
    }
  } else {
    // 1 double;
    switch (op) {
    case BinaryOp::FloatAdd:
      dest.d = src1.d + src2.d;
      break;
    case BinaryOp::FloatSub:
      dest.d = src1.d - src2.d;
      break;
    case BinaryOp::FloatMul:
      dest.d = src1.d * src2.d;
      break;
    case BinaryOp::FloatDiv:
      dest.d = src1.d / src2.d;
      break;
    case BinaryOp::IntAdd:
      dest.sl = src1.sl + src2.sl;
      break;
    case BinaryOp::IntSub:
      dest.sl = src1.sl - src2.sl;
      break;
    case BinaryOp::IntAnd:
      dest.sl = src1.sl & src2.sl;
      break;
    case BinaryOp::SIntMin:
      dest.sl = std::min(src1.sl, src2.sl);
      break;
    default:
      assert(false && "Invalid op type.");
    }
  }
  return dest;
}

void AVXOpBase::doPackedBinaryOp(ExecContext *xc, BinaryOp op) const {
  auto vRegs = destVL / sizeof(uint64_t);
  FloatInt src1;
  FloatInt src2;
  for (int i = 0; i < vRegs; i++) {
    src1.ul = xc->readFloatRegOperandBits(this, i * 2 + 0);
    src2.ul = xc->readFloatRegOperandBits(this, i * 2 + 1);
    auto dest = this->calcPackedBinaryOp(src1, src2, op);
    xc->setFloatRegOperandBits(this, i, dest.ul);
  }
}

void AVXOpBase::doFusedPackedBinaryOp(ExecContext *xc, BinaryOp op1,
                                      BinaryOp op2) const {
  auto vRegs = destVL / sizeof(uint64_t);
  FloatInt src1;
  FloatInt src2;
  FloatInt src3;
  for (int i = 0; i < vRegs; i++) {
    src1.ul = xc->readFloatRegOperandBits(this, i * 3 + 0);
    src2.ul = xc->readFloatRegOperandBits(this, i * 3 + 1);
    src3.ul = xc->readFloatRegOperandBits(this, i * 3 + 2);
    auto tmp = this->calcPackedBinaryOp(src1, src2, op1);
    auto dest = this->calcPackedBinaryOp(tmp, src3, op2);
    xc->setFloatRegOperandBits(this, i, dest.ul);
  }
}

} // namespace X86ISA
