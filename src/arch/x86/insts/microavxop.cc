#include "arch/x86/insts/microavxop.hh"

#include <string>

#include "arch/x86/regs/float.hh"
#include "arch/x86/regs/int.hh"
#include "arch/x86/regs/misc.hh"
#include "base/logging.hh"
#include "cpu/exec_context.hh"
#include "debug/X86AVX.hh"

namespace gem5
{

    // static std::set<Addr> debugPCs = {
    //     0x40236e,
    // };

    // static bool isDebugInst(Addr pc) {
    //   if (debugPCs.empty()) {
    //     return true;
    //   }
    //   return debugPCs.count(pc);
    // }

    namespace X86ISA
    {

        namespace
        {
            int32_t saturate32(int64_t v)
            {
                return v > INT32_MAX ? INT32_MAX
                                     : (v < INT32_MIN ? INT32_MIN : v);
            }
            int16_t saturate16(int64_t v)
            {
                return v > INT16_MAX ? INT16_MAX
                                     : (v < INT16_MIN ? INT16_MIN : v);
            }
            int8_t saturate8(int64_t v)
            {
                return v > INT8_MAX ? INT8_MAX : (v < INT8_MIN ? INT8_MIN : v);
            }

        }

        void AVXOpBase::addAVXDestRegs()
        {
            auto vDestRegs = destVL / sizeof(uint64_t);
            assert(vDestRegs <= NumXMMSubRegs && "DestVL overflow.");
            _numDestRegs = vDestRegs;
            assert(_numDestRegs <= MaxInstDestRegs && "DestRegs overflow.");
            for (int i = 0; i < vDestRegs; i++)
            {
                setDestRegIdx(i, floatRegClass[dest + i]);
                _numTypedDestRegs[floatRegClass.type()]++;
            }
        }

        void AVXOpBase::addAVXDestAsSrcRegs()
        {
            auto vDestRegs = destVL / sizeof(uint64_t);
            assert(vDestRegs <= NumXMMSubRegs && "DestVL overflow.");
            assert(_numSrcRegs + vDestRegs <= MaxInstSrcRegs &&
                   "DestAsSrcRegs overflow.");
            for (int i = 0; i < vDestRegs; i++)
            {
                setSrcRegIdx(i + _numSrcRegs, floatRegClass[dest + i]);
            }
            _numSrcRegs += vDestRegs;
        }

        std::string AVXOpBase::generateDisassembly(
            Addr pc, const gem5::loader::SymbolTable *symtab) const
        {
            std::stringstream response;

            printMnemonic(response, instMnem, mnemonic);
            printReg(response, this->destRegIdx(0), destSize);
            if (this->srcType == SrcType::Non)
            {
                return response.str();
            }
            response << ", ";
            printReg(response, this->srcRegIdx(0), srcSize);
            switch (this->srcType)
            {
            case RegReg:
            {
                response << ", ";
                printReg(response, this->srcRegIdx(1), srcSize);
                break;
            }
            case RegImm:
            {
                ccprintf(response, ", %#x", imm8);
                break;
            }
            case RegRegImm:
            {
                response << ", ";
                printReg(response, this->srcRegIdx(1), srcSize);
                ccprintf(response, ", %#x", imm8);
                break;
            }
            case RegRegReg:
            {
                response << ", ";
                printReg(response, this->srcRegIdx(1), srcSize);
                response << ", ";
                printReg(response, this->srcRegIdx(2), srcSize);
                break;
            }
            default:
                break;
            }
            if (this->mask != int_reg::_K0Idx)
            {
                response << " {";
                printReg(response, this->srcRegIdx(this->numSrcRegs() - 1), 8);
                response << "}";
            }
            return response.str();
        }

        AVXOpBase::FloatInt AVXOpBase::calcPackedBinaryOp(FloatInt src1,
                                                          FloatInt src2,
                                                          BinaryOp op) const
        {
            FloatInt dest;
            if (this->srcSize == 4)
            {
                // 2 float.
                switch (op)
                {
                default:
                    assert(false && "Invalid op type.");
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
                case BinaryOp::FloatNegMul:
                    dest.f.f1 = -src1.f.f1 * src2.f.f1;
                    dest.f.f2 = -src1.f.f2 * src2.f.f2;
                    break;
                case BinaryOp::FloatDiv:
                    dest.f.f1 = src1.f.f1 / src2.f.f1;
                    dest.f.f2 = src1.f.f2 / src2.f.f2;
                    break;
                case BinaryOp::FloatMax:
                    dest.f.f1 = std::max(src1.f.f1, src2.f.f1);
                    dest.f.f2 = std::max(src1.f.f2, src2.f.f2);
                    break;
                case BinaryOp::FloatMin:
                    dest.f.f1 = std::min(src1.f.f1, src2.f.f1);
                    dest.f.f2 = std::min(src1.f.f2, src2.f.f2);
                    break;
                case BinaryOp::IntAdd:
                    dest.si.i1 = src1.si.i1 + src2.si.i1;
                    dest.si.i2 = src1.si.i2 + src2.si.i2;
                    break;
                case BinaryOp::IntSatAdd:
                    dest.si.i1 = saturate32(static_cast<int64_t>(src1.si.i1) +
                                            static_cast<int64_t>(src2.si.i1));
                    dest.si.i2 = saturate32(static_cast<int64_t>(src1.si.i2) +
                                            static_cast<int64_t>(src2.si.i2));
                    break;
                case BinaryOp::IntSub:
                    dest.si.i1 = src1.si.i1 - src2.si.i1;
                    dest.si.i2 = src1.si.i2 - src2.si.i2;
                    break;
                case BinaryOp::IntAnd:
                    dest.si.i1 = src1.si.i1 & src2.si.i1;
                    dest.si.i2 = src1.si.i2 & src2.si.i2;
                    break;
                case BinaryOp::IntXor:
                    dest.si.i1 = src1.si.i1 ^ src2.si.i1;
                    dest.si.i2 = src1.si.i2 ^ src2.si.i2;
                    break;
                case BinaryOp::IntOr:
                    dest.si.i1 = src1.si.i1 | src2.si.i1;
                    dest.si.i2 = src1.si.i2 | src2.si.i2;
                    DPRINTF(X86AVX, "vor %d %ld | %ld = %ld %s.\n",
                            this->srcVL, src1.si.i1, src2.si.i1, dest.si.i1,
                            this->generateDisassembly(0x00, nullptr));
                    break;
                case BinaryOp::IntCmpEq:
                    dest.si.i1 = (src1.si.i1 == src2.si.i1) ? 0xFFFF : 0x0;
                    dest.si.i2 = (src1.si.i2 == src2.si.i2) ? 0xFFFF : 0x0;
                    break;
                case BinaryOp::IntMul:
                    // Multiplication will double the size.
                    dest.si.i1 = src1.ss.i1 * src2.ss.i1;
                    dest.si.i2 = src1.ss.i3 * src2.ss.i3;
                    break;
                case BinaryOp::UIntMul:
                    // Multiplication will double the size.
                    dest.ui.i1 = src1.us.i1 * src2.us.i1;
                    dest.ui.i2 = src1.us.i3 * src2.us.i3;
                    break;
                case BinaryOp::UIntMulLow:
                    // Multiplication but take the lower bits.
                    dest.ui.i1 = src1.ui.i1 * src2.ui.i1;
                    dest.ui.i2 = src1.ui.i2 * src2.ui.i2;
                    break;
                case BinaryOp::SIntMin:
                    dest.si.i1 = std::min(src1.si.i1, src2.si.i1);
                    dest.si.i2 = std::min(src1.si.i2, src2.si.i2);
                    break;
                }
            }
            else if (this->srcSize == 2)
            {
                // 4 short;
                switch (op)
                {
                default:
                    assert(false && "Invalid op type.");
                case BinaryOp::IntAdd:
                    dest.ss.i1 = src1.ss.i1 + src2.ss.i1;
                    dest.ss.i2 = src1.ss.i2 + src2.ss.i2;
                    dest.ss.i3 = src1.ss.i3 + src2.ss.i3;
                    dest.ss.i4 = src1.ss.i4 + src2.ss.i4;
                    break;
                case BinaryOp::IntSatAdd:
                    dest.ss.i1 = saturate16(static_cast<int64_t>(src1.ss.i1) +
                                            static_cast<int64_t>(src2.ss.i1));
                    dest.ss.i2 = saturate16(static_cast<int64_t>(src1.ss.i2) +
                                            static_cast<int64_t>(src2.ss.i2));
                    dest.ss.i3 = saturate16(static_cast<int64_t>(src1.ss.i3) +
                                            static_cast<int64_t>(src2.ss.i3));
                    dest.ss.i4 = saturate16(static_cast<int64_t>(src1.ss.i4) +
                                            static_cast<int64_t>(src2.ss.i4));
                    break;
                case BinaryOp::IntMulLow:
                    // Keep the lower short.
                    dest.ss.i1 = src1.ss.i1 * src2.ss.i1;
                    dest.ss.i2 = src1.ss.i2 * src2.ss.i2;
                    dest.ss.i3 = src1.ss.i3 * src2.ss.i3;
                    dest.ss.i4 = src1.ss.i4 * src2.ss.i4;
                    break;
                }
            }
            else if (this->srcSize == 1)
            {
                // 8 char;
                switch (op)
                {
                default:
                    assert(false && "Invalid op type.");
                case BinaryOp::IntAdd:
                    dest.sc.i1 = src1.sc.i1 + src2.sc.i1;
                    dest.sc.i2 = src1.sc.i2 + src2.sc.i2;
                    dest.sc.i3 = src1.sc.i3 + src2.sc.i3;
                    dest.sc.i4 = src1.sc.i4 + src2.sc.i4;
                    dest.sc.i5 = src1.sc.i5 + src2.sc.i5;
                    dest.sc.i6 = src1.sc.i6 + src2.sc.i6;
                    dest.sc.i7 = src1.sc.i7 + src2.sc.i7;
                    dest.sc.i8 = src1.sc.i8 + src2.sc.i8;
                    break;
                case BinaryOp::IntSatAdd:
                    dest.sc.i1 = saturate8(static_cast<int64_t>(src1.sc.i1) +
                                           static_cast<int64_t>(src2.sc.i1));
                    dest.sc.i2 = saturate8(static_cast<int64_t>(src1.sc.i2) +
                                           static_cast<int64_t>(src2.sc.i2));
                    dest.sc.i3 = saturate8(static_cast<int64_t>(src1.sc.i3) +
                                           static_cast<int64_t>(src2.sc.i3));
                    dest.sc.i4 = saturate8(static_cast<int64_t>(src1.sc.i4) +
                                           static_cast<int64_t>(src2.sc.i4));
                    dest.sc.i5 = saturate8(static_cast<int64_t>(src1.sc.i5) +
                                           static_cast<int64_t>(src2.sc.i5));
                    dest.sc.i6 = saturate8(static_cast<int64_t>(src1.sc.i6) +
                                           static_cast<int64_t>(src2.sc.i6));
                    dest.sc.i7 = saturate8(static_cast<int64_t>(src1.sc.i7) +
                                           static_cast<int64_t>(src2.sc.i7));
                    dest.sc.i8 = saturate8(static_cast<int64_t>(src1.sc.i8) +
                                           static_cast<int64_t>(src2.sc.i8));
                    break;
                }
            }
            else
            {
                // 1 double;
                switch (op)
                {
                default:
                    assert(false && "Invalid op type.");
                case BinaryOp::FloatAdd:
                    dest.d = src1.d + src2.d;
                    break;
                case BinaryOp::FloatSub:
                    dest.d = src1.d - src2.d;
                    break;
                case BinaryOp::FloatMul:
                    dest.d = src1.d * src2.d;
                    break;
                case BinaryOp::FloatNegMul:
                    dest.d = -src1.d * src2.d;
                    break;
                case BinaryOp::FloatDiv:
                    dest.d = src1.d / src2.d;
                    break;
                case BinaryOp::FloatMax:
                    dest.d = std::max(src1.d, src2.d);
                    break;
                case BinaryOp::FloatMin:
                    dest.d = std::min(src1.d, src2.d);
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
                case BinaryOp::IntXor:
                    dest.sl = src1.sl ^ src2.sl;
                    break;
                case BinaryOp::IntOr:
                    dest.sl = src1.sl | src2.sl;
                    break;
                case BinaryOp::IntCmpEq:
                    dest.sl = (src1.sl == src2.sl) ? 0xFFFFFFFF : 0x0;
                    break;
                case BinaryOp::IntMul:
                    // Multiplication will double the size.
                    // With sign extension.
                    dest.sl = static_cast<int64_t>(src1.si.i1) *
                              static_cast<int64_t>(src2.si.i1);
                    break;
                case BinaryOp::UIntMul:
                    // Multiplication will double the size.
                    dest.ul = src1.ui.i1 * src2.ui.i1;
                    break;
                case BinaryOp::UIntMulLow:
                    // Multiplication but take the lower bits.
                    dest.ul = src1.ul * src2.ul;
                    break;
                case BinaryOp::SIntMin:
                    dest.sl = std::min(src1.sl, src2.sl);
                    break;
                }
            }
            return dest;
        }

        void AVXOpBase::doPackedBinaryOp(ExecContext *xc, BinaryOp op) const
        {
            auto vRegs = destVL / sizeof(uint64_t);
            FloatInt src1;
            FloatInt src2;
            FloatInt maskValue;
            FloatInt originalValue;
            if (this->mask == int_reg::_K0Idx)
            {
                // All active.
                maskValue.ul = 0xFFFFFFFFFFFFFFFF;
            }
            else
            {
                maskValue.ul = xc->getRegOperand(this, this->numSrcRegs() - 1);
            }
            for (int i = 0; i < vRegs; i++)
            {
                src1.ul = xc->getRegOperand(this, i * 2 + 0);
                src2.ul = xc->getRegOperand(this, i * 2 + 1);
                auto dest = this->calcPackedBinaryOp(src1, src2, op);
                // if (vRegs == 8 && op == BinaryOp::IntAdd && srcSize == 8) {
                //   hack("vpaddq %d %lu + %lu = %lu. pc = %#x.\n", i, src1.ul,
                //   src2.ul,
                //        dest.ul, xc->pcState().pc());
                // }

                // Read the original value.
                if (this->mask != int_reg::_K0Idx)
                {
                    // We need to apply the mask.
                    originalValue.ul = xc->getRegOperand(this, vRegs * 2 + i);
                    if (this->srcSize == 4)
                    {
                        // 2 float.
                        if (!((maskValue.ul >> (i * 2 + 0)) & 1))
                        {
                            // Unchanged.
                            DPRINTF(X86AVX, "Reset %d-0 to %d.\n", i,
                                    originalValue.ui.i1);
                            dest.ui.i1 = originalValue.ui.i1;
                        }
                        if (!((maskValue.ul >> (i * 2 + 1)) & 1))
                        {
                            // Unchanged.
                            DPRINTF(X86AVX, "Reset %d-1 to %d.\n", i,
                                    originalValue.ui.i2);
                            dest.ui.i2 = originalValue.ui.i2;
                        }
                    }
                    else if (this->srcSize == 8)
                    {
                        // 1 double.
                        if (!((maskValue.ul >> (i)) & 1))
                        {
                            // Unchanged.
                            dest.ul = originalValue.ul;
                        }
                    }
                    else
                    {
                        panic("Unsupported Mask Datatype %d.", this->srcSize);
                    }
                }

                xc->setRegOperand(this, i, dest.ul);
            }
        }

        void AVXOpBase::doSingleBinaryOpFillSrc1(ExecContext *xc,
                                                 BinaryOp op) const
        {
            auto vRegs = destVL / sizeof(uint64_t);
            FloatInt src1;
            FloatInt src2;
            FloatInt dest;
            for (int i = 0; i < vRegs; i++)
            {
                src1.ul = xc->getRegOperand(this, i * 2 + 0);
                src2.ul = xc->getRegOperand(this, i * 2 + 1);

                if (i == 0)
                {
                    dest = this->calcPackedBinaryOp(src1, src2, op);
                    if (this->srcSize == 4)
                    {
                        // We only care about the first 32bit. Reset the remain
                        // to src1.
                        dest.ui.i2 = src1.ui.i2;
                    }
                }
                else
                {
                    dest.ul = src1.ul;
                }
                xc->setRegOperand(this, i, dest.ul);
            }
        }

        void AVXOpBase::doFusedPackedBinaryOp(ExecContext *xc, BinaryOp op1,
                                              BinaryOp op2) const
        {
            auto vRegs = destVL / sizeof(uint64_t);
            FloatInt src1;
            FloatInt src2;
            FloatInt src3;
            for (int i = 0; i < vRegs; i++)
            {
                src1.ul = xc->getRegOperand(this, i * 3 + 0);
                src2.ul = xc->getRegOperand(this, i * 3 + 1);
                src3.ul = xc->getRegOperand(this, i * 3 + 2);
                auto tmp = this->calcPackedBinaryOp(src1, src2, op1);
                auto dest = this->calcPackedBinaryOp(tmp, src3, op2);
                xc->setRegOperand(this, i, dest.ul);
            }
        }

        void AVXOpBase::doFusedSingleBinaryOp(ExecContext *xc, BinaryOp op1,
                                              BinaryOp op2) const
        {
            auto vRegs = destVL / sizeof(uint64_t);
            assert(vRegs == 1 && "Multi VRegs for Single Op.");
            FloatInt src1;
            FloatInt src2;
            FloatInt src3;
            FloatInt dest;
            src1.ul = xc->getRegOperand(this, 0);
            src2.ul = xc->getRegOperand(this, 1);
            src3.ul = xc->getRegOperand(this, 2);
            dest.ul = xc->getRegOperand(this, 3);
            auto tmp = this->calcPackedBinaryOp(src1, src2, op1);
            auto result = this->calcPackedBinaryOp(tmp, src3, op2);
            // Partially set the result.
            if (this->srcSize == 4)
            {
                dest.ui.i1 = result.ui.i1;
            }
            else if (this->srcSize == 8)
            {
                dest.ul = result.ul;
            }
            else
            {
                panic("Invalid SrcSize %d for SingleBinaryOp.", this->srcSize);
            }
            xc->setRegOperand(this, 0, dest.ul);
        }

        void AVXOpBase::doPackOp(ExecContext *xc, BinaryOp op) const
        {
            auto vRegs = destVL / sizeof(uint64_t);
            switch (op)
            {
            default:
                panic("Unsupported pack op %d.", op);
            case BinaryOp::SIntToUIntPack:
            {
                FloatInt dests[vRegs];
                for (int i = 0; i < vRegs; ++i)
                {
                    FloatInt src1;
                    FloatInt src2;
                    int srcIdx = i - (i % 2);
                    if ((i % 2) == 0)
                    {
                        // Take 128 bit from src1.
                        src1.ul =
                            xc->getRegOperand(this, (srcIdx + 0) * 2 + 0);
                        src2.ul =
                            xc->getRegOperand(this, (srcIdx + 1) * 2 + 0);
                    }
                    else
                    {
                        // Take 128 bit from src2.
                        src1.ul =
                            xc->getRegOperand(this, (srcIdx + 0) * 2 + 1);
                        src2.ul =
                            xc->getRegOperand(this, (srcIdx + 1) * 2 + 1);
                    }
                    FloatInt &dest = dests[i];
                    dest.ul = 0;
                    if (this->srcSize == 4)
                    {
                        // Pack int32_t -> uint16_t.
#define SignedToUnsignedSaturate(v)                                           \
    v > 0xFFFF ? 0xFFFF : (v < 0 ? 0 : (v & 0xFFFF))
                        dest.us.i1 = SignedToUnsignedSaturate(src1.si.i1);
                        dest.us.i2 = SignedToUnsignedSaturate(src1.si.i2);
                        dest.us.i3 = SignedToUnsignedSaturate(src2.si.i1);
                        dest.us.i4 = SignedToUnsignedSaturate(src2.si.i2);
#undef SignedToUnsignedSaturate
                        // hack("PackDW %d SRC1 %#x %#x SRC2 %#x %#x -> DEST
                        // %#x "
                        //      "%#x %#x %#x.\n",
                        //      i, src1.si.i1, src1.si.i2, src2.si.i1,
                        //      src2.si.i2, dest.us.i1, dest.us.i2, dest.us.i3,
                        //      dest.us.i4);
                    }
                    else if (this->srcSize == 2)
                    {
                        // Pack int16_t -> uint8_t.
#define SignedToUnsignedSaturate(v) v > 0xFF ? 0xFF : (v < 0 ? 0 : (v & 0xFF))
                        dest.uc.i1 = SignedToUnsignedSaturate(src1.ss.i1);
                        dest.uc.i2 = SignedToUnsignedSaturate(src1.ss.i2);
                        dest.uc.i3 = SignedToUnsignedSaturate(src1.ss.i3);
                        dest.uc.i4 = SignedToUnsignedSaturate(src1.ss.i4);
                        dest.uc.i5 = SignedToUnsignedSaturate(src2.ss.i1);
                        dest.uc.i6 = SignedToUnsignedSaturate(src2.ss.i2);
                        dest.uc.i7 = SignedToUnsignedSaturate(src2.ss.i3);
                        dest.uc.i8 = SignedToUnsignedSaturate(src2.ss.i4);
                        // hack("PackW %d SRC1 %#x %#x %#x %#x SRC2 %#x %#x %#x
                        // %#x -> DEST %#x
                        // "
                        //      "%#x %#x %#x %#x %#x %#x %#x.\n",
                        //      i, src1.ss.i1, src1.ss.i2, src1.ss.i3,
                        //      src1.ss.i4, src2.ss.i1, src2.ss.i2, src2.ss.i3,
                        //      src2.ss.i4, dest.uc.i1, dest.uc.i2, dest.uc.i3,
                        //      dest.uc.i4, dest.uc.i5, dest.uc.i6, dest.uc.i7,
                        //      dest.uc.i8);
#undef SignedToUnsignedSaturate
                    }
                    else
                    {
                        panic("Unsupported size for pack %d.", this->srcSize);
                    }
                }
                // hack("%s.\n", this->generateDisassembly(0x0, nullptr));
                for (int i = 0; i < vRegs; ++i)
                {
                    // hack("Pack Set Dest %d %#x.\n", i, dests[i].ul);
                    xc->setRegOperand(this, i, dests[i].ul);
                }
                break;
            }
            }
        }

        void AVXOpBase::doExtract(ExecContext *xc) const
        {
            FloatInt result;
            result.ul = 0;
            auto select = imm8;
            if (srcSize == 1)
            {
                FloatInt src;
                if (select >= 8)
                {
                    src.ul = xc->getRegOperand(this, 1);
                }
                else
                {
                    src.ul = xc->getRegOperand(this, 0);
                }
                // Extract the byte.
                result.uc.i1 = src.uc_array[select & 0x7];
            }
            else if (srcSize == 2)
            {
                FloatInt src;
                if (select >= 4)
                {
                    src.ul = xc->getRegOperand(this, 1);
                    // hack("Extract read %d %#x.\n", 1, src.ul);
                }
                else
                {
                    src.ul = xc->getRegOperand(this, 0);
                    // hack("Extract read %d %#x.\n", 0, src.ul);
                }
                // Extract the 16-bit value.
                result.us.i1 = src.us_array[select & 0x3];
            }
            else if (srcSize == 4)
            {
                FloatInt src;
                if (select >= 2)
                {
                    src.ul = xc->getRegOperand(this, 1);
                }
                else
                {
                    src.ul = xc->getRegOperand(this, 0);
                }
                // Extract the 32-bit value.
                if (select & 0x1)
                {
                    result.ui.i1 = src.ui.i2;
                }
                else
                {
                    result.ui.i1 = src.ui.i1;
                }
            }
            // hack("%s.\n", this->generateDisassembly(0x0, nullptr));
            // hack("Extract %lu -> %s.\n", result.ul, this->destRegIdx(0));
            xc->setRegOperand(this, 0, result.ul);
        }

        void AVXOpBase::doInsert(ExecContext *xc) const
        {
            /**
             * We first copy from src2, and then insert src1.
             */
            auto select = imm8;
            auto vSrcRegs = srcVL / sizeof(uint64_t);
            auto vDestRegs = destVL / sizeof(uint64_t);
            FloatInt src1[vSrcRegs];
            FloatInt src2[vDestRegs];
            FloatInt dest[vDestRegs];
            for (int i = 0; i < vSrcRegs; ++i)
            {
                src1[i].ul = xc->getRegOperand(this, i);
            }
            for (int i = 0; i < vDestRegs; ++i)
            {
                src2[i].ul = xc->getRegOperand(this, i + vSrcRegs);
                dest[i].ul = src2[i].ul;
                // hack("Insert Dest %d %lu.\n", i, dest[i].ul);
            }

            if (srcVL == 32 && destVL == 64)
            {
                // Insert 256bit into 512bit.
                int destOffset = select == 1 ? 4 : 0;
                for (int i = 0; i < vSrcRegs; ++i)
                {
                    dest[i + destOffset].ul = src1[i].ul;
                    // hack("Insert256 %d -> %d %lu.\n", i, i + destOffset,
                    // dest[i].ul);
                }
            }
            else if (srcVL == 16 && destVL == 32)
            {
                // Insert 128bit into 256bit.
                int destOffset = select == 1 ? 2 : 0;
                for (int i = 0; i < vSrcRegs; ++i)
                {
                    dest[i + destOffset].ul = src1[i].ul;
                    // hack("Insert128 %d -> %d %lu.\n", i, i + destOffset,
                    // dest[i].ul);
                }
            }
            else
            {
                // panic("Unsupported Insertion SrcVL %d DestVL %d.\n", srcVL,
                // destVL);
            }

            for (int i = 0; i < vDestRegs; ++i)
            {
                xc->setRegOperand(this, i, dest[i].ul);
            }
        }

        // void AVXOpBase::doBroadcast(ExecContext *xc) const {
        //   /**
        //    * We first copy from src2, and then insert src1.
        //    */
        //   auto select = imm8;
        //   auto vSrcRegs = srcVL / sizeof(uint64_t);
        //   auto vDestRegs = destVL / sizeof(uint64_t);
        //   FloatInt src;
        //   FloatInt dest[vDestRegs];

        //   src.ul = xc->getRegOperand(this, 0);
        //   if (srcVL == 4 && destVL == 64) {
        //     // Broadcast 32bit into 512bit.
        //     for (int i = 0; i < vDestRegs; ++i) {
        //       dest[i].ui.i1 = src.ui.i1;
        //       dest[i].ui.i2 = src.ui.i1;
        //       // hack("Insert256 %d -> %d %lu.\n", i, i + destOffset,
        //       dest[i].ul);
        //     }
        //   } else {
        //     panic("Unsupported Broadcast SrcVL %d DestVL %d.\n", srcVL,
        //     destVL);
        //   }

        //   for (int i = 0; i < vDestRegs; ++i) {
        //     xc->setRegOperand(this, i, dest[i].ul);
        //   }
        // }

        void AVXOpBase::doFloatCompare(ExecContext *xc, bool isSingle) const
        {
            uint64_t result = 0;
            auto vSrcRegs = srcVL / sizeof(uint64_t);
            FloatInt src1;
            FloatInt src2;

            auto compareFloat = [this](float a, float b) -> int
            {
                switch (this->imm8)
                {
                default:
                    panic("%s: Unknown FloatCompare Op %d.",
                          this->disassemble(0x0), this->imm8);
                case 0:
                    return a == b;
                case 1:
                    return a < b;
                case 2:
                    return a <= b;
                }
            };

            auto compareDouble = [this](double a, double b) -> int
            {
                switch (this->imm8)
                {
                default:
                    panic("%s: Unknown FloatCompare Op %d.",
                          this->disassemble(0x0), this->imm8);
                case 0:
                    return a == b;
                case 1:
                    return a < b;
                case 2:
                    return a <= b;
                }
            };

            if (isSingle)
            {
                assert(vSrcRegs == 1 &&
                       "Multi Regs for Single Float Compare.");
            }

            for (int i = 0; i < vSrcRegs; ++i)
            {
                src1.ul = xc->getRegOperand(this, i * 2);
                src2.ul = xc->getRegOperand(this, i * 2 + 1);
                if (this->srcSize == 4)
                {
                    int c1 = compareFloat(src1.f.f1, src2.f.f1);
                    result |= (c1 << (i * 2));
                    if (!isSingle)
                    {
                        int c2 = compareFloat(src1.f.f2, src2.f.f2);
                        result |= (c2 << (i * 2 + 1));
                    }
                    DPRINTF(X86AVX, "fltcmp %f %f %s.\n", src1.f.f1, src2.f.f1,
                            this->generateDisassembly(0x00, nullptr));
                }
                else if (this->srcSize == 8)
                {
                    int c = compareDouble(src1.d, src2.d);
                    result |= (c << i);
                }
            }

            DPRINTF(X86AVX, "fcmp %x.\n", result);

            assert(destVL == 8 && "Invalid DestVL for FloatCompare.");
            xc->setRegOperand(this, 0, result);
        }

        void AVXOpBase::doMov(ExecContext *xc) const
        {

            auto vSrcRegs = srcVL / sizeof(uint64_t);
            FloatInt src;
            FloatInt dest;
            FloatInt maskValue;
            FloatInt originalValue;

            if (this->mask == int_reg::_K0Idx)
            {
                // All active.
                maskValue.ul = 0xFFFFFFFFFFFFFFFF;
            }
            else
            {
                maskValue.ul = xc->getRegOperand(this, this->numSrcRegs() - 1);
            }

            DPRINTF(X86AVX, ">> Exec %s\n",
                    this->generateDisassembly(0x0, nullptr));
            DPRINTF(X86AVX, "  Mask %#x\n", maskValue.ul);

            for (int i = 0; i < vSrcRegs; i++)
            {
                src.ul = xc->getRegOperand(this, i);
                DPRINTF(X86AVX, "   %d Src %#x\n", i, src.ul);

                // Move the value.
                dest.ul = src.ul;

                // Read the original value.
                if (this->mask != int_reg::_K0Idx)
                {
                    // We need to apply the mask.
                    originalValue.ul = xc->getRegOperand(this, vSrcRegs + i);
                    DPRINTF(X86AVX, "   %d Org %#x\n", i, originalValue.ul);
                    if (this->srcSize == 4)
                    {
                        // 2 float.
                        if (!((maskValue.ul >> (i * 2 + 0)) & 1))
                        {
                            // Unchanged.
                            dest.ui.i1 = originalValue.ui.i1;
                        }
                        if (!((maskValue.ul >> (i * 2 + 1)) & 1))
                        {
                            // Unchanged.
                            dest.ui.i2 = originalValue.ui.i2;
                        }
                    }
                    else if (this->srcSize == 8)
                    {
                        // 1 double.
                        if (!((maskValue.ul >> (i)) & 1))
                        {
                            // Unchanged.
                            dest.ul = originalValue.ul;
                        }
                    }
                    else
                    {
                        panic("Unsupported Mask Datatype %d.", this->srcSize);
                    }
                }

                xc->setRegOperand(this, i, dest.ul);
            }
        }

        void AVXOpBase::doPermuteInLane(ExecContext *xc) const
        {

            auto vSrcRegs = srcVL / sizeof(uint64_t);
            FloatInt src1;
            FloatInt src2;
            FloatInt dest1;
            FloatInt dest2;

            assert(this->srcSize == 4 && "permilpd is not implemented yet.");

            assert(this->mask == int_reg::_K0Idx &&
                   "Mask in permil is not implemented yet.");

            // if (this->mask == int_reg::_K0Idx) {
            //   // All active.
            //   maskValue.ul = 0xFFFFFFFFFFFFFFFF;
            // } else {
            //   maskValue.ul = xc->getRegOperand(this, this->numSrcRegs() -
            //   1);
            // }

            auto select4 = [&](int imm) -> uint32_t
            {
                switch (imm & 0x3)
                {
                case 0:
                    return src1.ui.i1;
                case 1:
                    return src1.ui.i2;
                case 2:
                    return src2.ui.i1;
                case 3:
                    return src2.ui.i2;
                default:
                    assert(false);
                }
            };

            for (int i = 0; i < vSrcRegs; i += 2)
            {
                // Read in the four 32-bit value.
                src1.ul = xc->getRegOperand(this, i + 0);
                src2.ul = xc->getRegOperand(this, i + 1);

                // Permute the value.
                dest1.ui.i1 = select4(this->imm8 >> 0);
                dest1.ui.i2 = select4(this->imm8 >> 2);
                dest2.ui.i1 = select4(this->imm8 >> 4);
                dest2.ui.i2 = select4(this->imm8 >> 6);

                xc->setRegOperand(this, i + 0, dest1.ul);
                xc->setRegOperand(this, i + 1, dest2.ul);
            }
        }

    } // namespace X86ISA

} // namespace gem5
