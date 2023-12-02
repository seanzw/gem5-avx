#include <unordered_set>

#include "arch/x86/decoder.hh"
#include "arch/x86/regs/misc.hh"
#include "base/logging.hh"
#include "base/trace.hh"
#include "base/types.hh"
#include "debug/Decoder.hh"

namespace gem5 {

namespace X86ISA {

namespace {
enum EVEXTupleType
{
  NOT_IMPLEMENTED = 0,
  O = NOT_IMPLEMENTED,
  FULL,
  FU = FULL,
  HALF,
  HA = HALF,
  FULL_MEM,
  FM = FULL_MEM,
  TUPLE1_SCALAR,
  TS = TUPLE1_SCALAR,
  TUPLE1_FIXED,
  TF = TUPLE1_FIXED,
  TUPLE1_4X,
  TX = TUPLE1_4X,
  TUPLE2,
  T2 = TUPLE2,
  TUPLE4,
  T4 = TUPLE4,
  TUPLE8,
  T8 = TUPLE8,
  HALF_MEM,
  HM = HALF_MEM,
  QUARTER_MEM,
  QM = QUARTER_MEM,
  EIGHTH_MEM,
  EM = EIGHTH_MEM,
  MEM128,
  MX = MEM128,
  MOVDDUP,
  MO = MOVDDUP,
};

/****************************************************************
 * Implemeted.
 * 66 10 vmovups(load)        FULL_MEM
 * 66 11 vmovups(store)       FULL_MEM
 * 66 16 vmovhpd(load)        TUPLE1_SCALAR
 * 66 28 vmovaps(load)        FULL_MEM
 * 66 2E vucomisd             TUPLE1_SCALAR
 * 66 29 vmovaps(store)       FULL_MEM
 * 66 57 vxorpd         FULL
 * 66 58 vaddpd         FULL
 * 66 59 vmulpd         FULL
 * 66 5A vcvtpd2ps      FULL
 * 66 5B vcvtdq2ps      FULL
 * 66 5C vsubpd         FULL
 * 66 5D vminpd         FULL
 * 66 5E vdivpd         FULL
 * 66 5F vmaxpd         FULL
 * 66 67 vpackuswb      FULL_MEM
 * 66 6F vmovdqa(load)  FULL_MEM
 * 66 70 vpshufd        FULL
 * 66 72 vpslld/vpsrld/vpsraq  FULL
 * 66 73 vpsllq/vpsrlq  FULL
 * 66 7F vmovdqa(store) FULL_MEM
 * 66 D4 vpaddq         FULL
 * 66 D5 vpmullw        FULL_MEM
 * 66 D6 vmovq          TUPLE1_SCALAR
 * 66 DB vpandd/vpandq  FULL
 * 66 EB vpord          FULL
 * 66 EC vpaddsb        FULL_MEM
 * 66 ED vpaddsw        FULL_MEM
 * 66 EF vpxord         FULL
 * 66 FA vpsubd         FULL
 * 66 FB vpsubq         FULL
 * 66 FC vpaddb         FULL_MEM
 * 66 FD vpaddw         FULL_MEM
 * 66 FE vpaddd         FULL
 */
const EVEXTupleType EVEXTupleTypeTwoByte66[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ FM, FM, O , O , O , O , TS, O , O , O , O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , FM, FM, O , O , O , O , TS, O ,
/*  3 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , FU, FU, FU, FU, FU, FU, FU, FU, FU,
/*  6 */ O , O , O , O , O , O , O , FM, O , O , O , O , O , O , O , FM,
/*  7 */ FU, O , FU, FU, O , O , O , O , O , O , O , O , O , O , O , FM,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , FU, FM, TS, O , O , O , O , FU, O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , FU, FM, FM, O , FU,
/*  F */ O , O , O , O , FU, O , O , O , O , O , FU, FU, FM, FM, FU, O
    };
/****************************************************************
 * Implemeted.
 * F3 10 vmovss         TUPLE1_SCALAR
 * F3 11 vmovss         TUPLE1_SCALAR
 * F3 2D vcvttss2si     TUPLE1_SCALAR
 * F3 58 vaddss         TUPLE1_SCALAR
 * F3 59 vmulss         TUPLE1_SCALAR
 * F3 5A vcvtss2sd      TUPLE1_SCALAR
 * F3 5C vsubss         TUPLE1_SCALAR
 * F3 5E vdivss         TUPLE1_SCALAR
 * F3 6F vmovdqu(load)  FULL_MEM
 * F3 7B vcvtusi2ss     TUPLE1_SCALAR
 * F3 7F vmovdqu(store) FULL_MEM
 * F3 E6 vcvtdq2pd      HALF
 */
const EVEXTupleType EVEXTupleTypeTwoByteF3[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ TS, TS, O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , O , O , TS, O , O , TS, O , O ,
/*  3 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , O , TS, TS, TS, O , TS, O , TS, O ,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , FM,
/*  7 */ O , O , O , O , O , O , O , O , O , O , O , TS, O , O , O , FM,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , HA, O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/****************************************************************
 * Implemeted.
 * F2 10 vmovsd(load)   TUPLE1_SCALAR
 * F2 12 vmovddup(load) MOVDDUP
 * F2 2A vcvtsi2sd      TUPLE1_SCALAR
 * F2 58 vaddsd         TUPLE1_SCALAR
 * F2 59 vmulsd         TUPLE1_SCALAR
 * F2 5C vsubsd         TUPLE1_SCALAR
 * F2 5A vcvtsd2ss      TUPLE1_SCALAR
 * F2 5E vdivsd         TUPLE1_SCALAR
 */
const EVEXTupleType EVEXTupleTypeTwoByteF2[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ TS, O , MO, O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , O , O , TS, O , O , O , O , O ,
/*  3 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , O , TS, TS, TS, O , TS, O , TS, O ,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  7 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/****************************************************************
 * Implemeted.
 * 10 vmovups(load)        FULL_MEM
 * 11 vmovups(store)       FULL_MEM
 * 28 vmovaps(load)        FULL_MEM
 * 29 vmovaps(store)       FULL_MEM
 * 54 vandps               FULL
 * 57 vxorps               FULL
 * 58 vaddps               FULL
 * 59 vmulps               FULL
 * 5A vcvtps2pd            HALF
 * 5C vsubps               FULL
 * 5D vminps               FULL
 * 5E vdivps               FULL
 * 5F vmaxps               FULL
 */
const EVEXTupleType EVEXTupleTypeTwoByte[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ FM, FM, O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , FM, FM, O , O , O , O , O , O ,
/*  3 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , FU, O , O , FU, FU, FU, HA, O , FU, FU, FU, FU,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  7 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/****************************************************************
 * Implemeted.
 *   66 16 vpermps                FULL
 *   66 18 vbroadcastss           TUPLE1_SCALAR
 *   66 19 vbroadcastsd(W1)       TUPLE1_SCALAR
 * ! 66 19 vbroadcastf32x2(W0)    TUPLE2
 *   66 1B vbroadcastf64x4(W1)    TUPLE4
 * ! 66 1B vbroadcastf32x8(W0)    TUPLE8
 *   66 28 vpmuldq                FULL
 *   66 2B vpackusdw              FULL
 *   66 36 vpermd                 FULL
 *   66 37 vpcmpgtq               FULL
 *   66 39 vpminsd,vpminsq        FULL
 *   66 40 vpmulld                FULL
 *   66 58 vbroadcastd            TUPLE1_SCALAR
 *   66 7A vbroadcastb            TUPLE1_SCALAR
 *   66 7B vbroadcastw            TUPLE1_SCALAR
 *   66 98 vfmadd132ps            FULL
 *   66 9C vfnmadd132ps           FULL
 *   66 A8 vfmadd213ps            FULL
 *   66 A9 vfmadd213ss            TUPLE1_SCALAR
 *   66 AC vfnmadd213ps           FULL
 *   66 AD vfnmadd213ss           TUPLE1_SCALAR
 *   66 B8 vfmadd231ps            FULL
 *   66 BD vfnmadd231ss           TUPLE1_SCALAR
 *   66 BC vfnmadd231ps           FULL
 */
const EVEXTupleType EVEXTupleTypeThreeByte660F38[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ O , O , O , O , O , O , FU, O , TS, TS, O , T4, O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , FU, O , O , FU, O , O , O , O ,
/*  3 */ O , O , O , O , O , O , FU, FU, O , FU, O , O , O , O , O , O ,
/*  4 */ FU, O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , O , TS, O , O , O , O , O , O , O ,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  7 */ O , O , O , O , O , O , O , O , O , O , TS, TS, O , O , O , O ,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , FU, O , O , O , FU, O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , FU, TS, O , O , FU, TS, O , O ,
/*  B */ O , O , O , O , O , O , O , O , FU, O , O , O , FU, TS, O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/****************************************************************
 * Implemeted.
 *   F3 35 vpmovda                HALF_MEM
 */
const EVEXTupleType EVEXTupleTypeThreeByteF30F38[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  1 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  3 */ O , O , O , O , O , HM, O , O , O , O , O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  7 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/****************************************************************
 * Implemeted.
 *   66 03 valign                  FULL
 *   66 05 vpermilpd               FULL
 *   66 16 vpextrq/d               TUPLE1_SCALAR
 *   66 17 vextractps              TUPLE1_SCALAR
 * ! 66 18 vinsertf128             TUPLE2/TUPLE4
 * ! 66 19 vextractf128            TUPLE2/TUPLE4
 *   66 25 vpternlog               FULL
 * ! 66 38 vinserti128             TUPLE2/TUPLE4
 * ! 66 39 vextracti128            TUPLE2/TUPLE4
 */
const EVEXTupleType EVEXTupleTypeThreeByte660F3A[256] =
    {    //LSB
// MSB   O | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | A | B | C | D | E | F
/*  O */ O , O , O , FU, O , FU, O , O , O , O , O , O , O , O , O , O ,
/*  1 */ O , O , O , O , O , O , TS, TS, T2, T2, O , O , O , O , O , O ,
/*  2 */ O , O , O , O , O , FU, O , O , O , O , O , O , O , O , O , O ,
/*  3 */ O , O , O , O , O , O , O , O , T2, T2, O , O , O , O , O , O ,
/*  4 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  5 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  6 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  7 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  8 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  9 */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  A */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  B */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  C */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  D */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  E */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O ,
/*  F */ O , O , O , O , O , O , O , O , O , O , O , O , O , O , O , O
    };
/**
 * TODO: I did not handle tuple type of 66 0F 3A as they are often
 * TODO: dependent on W -> tuple type. So far I just make them panic.
 */
}

void Decoder::processCompressedDisplacement() {
  /**
   * ! Compressed Displacement.
   * EVEX instructions with one byte displacement always
   * uses compressed displacement. The displacement should
   * be multiplied by a factor N.
   *
   * It is quite complicated, so far we only do this in adhoc way.
   *
   */
  if (!emi.evex.evex_present) {
    return;
  }
  if (emi.dispSize != 1) {
    return;
  }

  EVEXTupleType tupleType = EVEXTupleType::NOT_IMPLEMENTED;
  switch (emi.opcode.type) {
    case OneByteOpcode: break;
    case TwoByteOpcode: {
      switch (emi.legacy.decodeVal) {
        case 0x1: tupleType = EVEXTupleTypeTwoByte66[emi.opcode.op]; break;
        case 0x4: tupleType = EVEXTupleTypeTwoByteF3[emi.opcode.op]; break;
        case 0x8: tupleType = EVEXTupleTypeTwoByteF2[emi.opcode.op]; break;
        case 0x0: tupleType = EVEXTupleTypeTwoByte[emi.opcode.op]; break;
      }
      break;
    }
    case ThreeByte0F38Opcode: {
      switch (emi.legacy.decodeVal) {
        case 0x1: {
          tupleType = EVEXTupleTypeThreeByte660F38[emi.opcode.op];
          if (emi.opcode.op == 0x1B) {
          // Special case for 66 0F 38 1B vbroadcastf32x8/vbroadcastf64x4.
            tupleType = emi.rex.w ?
              EVEXTupleType::TUPLE4 :
              EVEXTupleType::TUPLE8;
          }
          break;
        }
        case 0x4: tupleType = EVEXTupleTypeThreeByteF30F38[emi.opcode.op];
          break;
      }
      break;
    }
    case ThreeByte0F3AOpcode: {
      switch (emi.legacy.decodeVal) {
        case 0x1: {
          tupleType = EVEXTupleTypeThreeByte660F38[emi.opcode.op];
          if (emi.opcode.op == 0x18) {
          // Special case for 66 0F 3A 18 vinsert32x4/vinsertf64x2.
            tupleType = emi.rex.w ?
              EVEXTupleType::TUPLE2 :
              EVEXTupleType::TUPLE4;
          } else if (emi.opcode.op == 0x39) {
          // Special case for 66 0F 3A 39 vextracti32x4/vextracti64x2.
            tupleType = emi.rex.w ?
              EVEXTupleType::TUPLE2 :
              EVEXTupleType::TUPLE4;
          }
          break;
        }
      }
      break;
    }
    case BadOpcode: break;
  }

  // Convert to signed int64_t.
  int64_t displacment = emi.displacement;
  int64_t N = 1;
  switch (tupleType) {
    case FULL: {
      if (emi.evex.b) {
        N = emi.rex.w ? 8 : 4;
      } else {
        N = 16 * (emi.evex.l_extend << 1);
      }
      break;
    }
    case HALF: {
      if (emi.evex.b) {
        N = 4;
      } else {
        N = 8 * (emi.evex.l_extend << 1);
      }
      break;
    }
    case FULL_MEM:      N = 16 * (emi.evex.l_extend << 1); break;
    case HALF_MEM:      N = 8 * (emi.evex.l_extend << 1); break;
    case TUPLE1_SCALAR: N = emi.rex.w ? 8 : 4; break;
    case TUPLE2:        N = emi.rex.w ? 16 : 8; break;
    case TUPLE4:        N = emi.rex.w ? 32 : 16; break;
    case TUPLE8:        N = 32; break;
    case MOVDDUP: {
      switch (emi.evex.l_extend) {
        case 0: N = 8; break;
        case 1: N = 32; break;
        case 2: N = 64; break;
      }
      break;
    }
    default: {
      warn("Don't know how to expand displacement for %#x %s.\n", this->origPC,
            emi);
      break;
    }
  }
  DPRINTF(Decoder, "Expand displacement pc %#x op %x %lld x %lld = %lld.\n",
          this->origPC, emi.opcode.op, displacment, N, displacment * N);
  emi.displacement = displacment * N;
}

} // namespace X86ISA

}
