/*
 * Copyright (c) 2007 The Hewlett-Packard Development Company
 * All rights reserved.
 *
 * The license below extends only to copyright in the software and shall
 * not be construed as granting a license to any other intellectual
 * property including but not limited to intellectual property relating
 * to a hardware implementation of the functionality of the software
 * licensed hereunder.  You may use the software subject to the license
 * terms below provided that you ensure that this notice is replicated
 * unmodified and in its entirety in all distributions of the software,
 * modified or unmodified, in source code or in binary form.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met: redistributions of source code must retain the above copyright
 * notice, this list of conditions and the following disclaimer;
 * redistributions in binary form must reproduce the above copyright
 * notice, this list of conditions and the following disclaimer in the
 * documentation and/or other materials provided with the distribution;
 * neither the name of the copyright holders nor the names of its
 * contributors may be used to endorse or promote products derived from
 * this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 * DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
 * THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#ifndef __ARCH_X86_FLOATREGS_HH__
#define __ARCH_X86_FLOATREGS_HH__

#include "arch/x86/x86_traits.hh"
#include "base/bitunion.hh"

namespace X86ISA
{
    enum FloatRegIndex
    {
        // MMX/X87 registers
        FLOATREG_MMX_BASE,
        FLOATREG_FPR_BASE = FLOATREG_MMX_BASE,
        FLOATREG_MMX0 = FLOATREG_MMX_BASE,
        FLOATREG_MMX1,
        FLOATREG_MMX2,
        FLOATREG_MMX3,
        FLOATREG_MMX4,
        FLOATREG_MMX5,
        FLOATREG_MMX6,
        FLOATREG_MMX7,

        FLOATREG_FPR0 = FLOATREG_FPR_BASE,
        FLOATREG_FPR1,
        FLOATREG_FPR2,
        FLOATREG_FPR3,
        FLOATREG_FPR4,
        FLOATREG_FPR5,
        FLOATREG_FPR6,
        FLOATREG_FPR7,

        FLOATREG_XMM_BASE = FLOATREG_MMX_BASE + NumMMXRegs,
        // ! Keep consistent with NumXMMSubRegs
#define FLOATREG_XMM_IDX(i) \
        FLOATREG_XMM ## i ## _0 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 0, \
        FLOATREG_XMM ## i ## _1 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 1, \
        FLOATREG_XMM ## i ## _2 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 2, \
        FLOATREG_XMM ## i ## _3 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 3, \
        FLOATREG_XMM ## i ## _4 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 4, \
        FLOATREG_XMM ## i ## _5 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 5, \
        FLOATREG_XMM ## i ## _6 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 6, \
        FLOATREG_XMM ## i ## _7 = FLOATREG_XMM_BASE + i * NumXMMSubRegs + 7
        FLOATREG_XMM_IDX(0),
        FLOATREG_XMM_IDX(1),
        FLOATREG_XMM_IDX(2),
        FLOATREG_XMM_IDX(3),
        FLOATREG_XMM_IDX(4),
        FLOATREG_XMM_IDX(5),
        FLOATREG_XMM_IDX(6),
        FLOATREG_XMM_IDX(7),
        FLOATREG_XMM_IDX(8),
        FLOATREG_XMM_IDX(9),
        FLOATREG_XMM_IDX(10),
        FLOATREG_XMM_IDX(11),
        FLOATREG_XMM_IDX(12),
        FLOATREG_XMM_IDX(13),
        FLOATREG_XMM_IDX(14),
        FLOATREG_XMM_IDX(15),
        FLOATREG_XMM_IDX(16),
        FLOATREG_XMM_IDX(17),
        FLOATREG_XMM_IDX(18),
        FLOATREG_XMM_IDX(19),
        FLOATREG_XMM_IDX(20),
        FLOATREG_XMM_IDX(21),
        FLOATREG_XMM_IDX(22),
        FLOATREG_XMM_IDX(23),
        FLOATREG_XMM_IDX(24),
        FLOATREG_XMM_IDX(25),
        FLOATREG_XMM_IDX(26),
        FLOATREG_XMM_IDX(27),
        FLOATREG_XMM_IDX(28),
        FLOATREG_XMM_IDX(29),
        FLOATREG_XMM_IDX(30),
        FLOATREG_XMM_IDX(31),
#undef FLOATREG_XMM_IDX

        FLOATREG_MICROFP_BASE = FLOATREG_XMM_BASE + NumXMMSubRegs * NumXMMRegs,
        FLOATREG_MICROFP0 = FLOATREG_MICROFP_BASE,
        FLOATREG_MICROFP1,
        FLOATREG_MICROFP2,
        FLOATREG_MICROFP3,
        FLOATREG_MICROFP4,
        FLOATREG_MICROFP5,
        FLOATREG_MICROFP6,
        FLOATREG_MICROFP7,
        FLOATREG_MICROFP8,
        FLOATREG_MICROFP9,
        FLOATREG_MICROFP10,
        FLOATREG_MICROFP11,
        FLOATREG_MICROFP12,
        FLOATREG_MICROFP13,
        FLOATREG_MICROFP14,
        FLOATREG_MICROFP15,

        NUM_FLOATREGS = FLOATREG_MICROFP_BASE + NumMicroFpRegs
    };

    static inline FloatRegIndex
    FLOATREG_MMX(int index)
    {
        return (FloatRegIndex)(FLOATREG_MMX_BASE + index);
    }

    static inline FloatRegIndex
    FLOATREG_FPR(int index)
    {
        return (FloatRegIndex)(FLOATREG_FPR_BASE + index);
    }

    static inline FloatRegIndex
    FLOATREG_XMM_LOW(int index)
    {
        return (FloatRegIndex)(FLOATREG_XMM_BASE + NumXMMSubRegs * index);
    }

    static inline FloatRegIndex
    FLOATREG_XMM_HIGH(int index)
    {
        return (FloatRegIndex)(FLOATREG_XMM_BASE + NumXMMSubRegs * index + 1);
    }

    static inline FloatRegIndex
    FLOATREG_XMM_IDX(int index, int sub_idx)
    {
        return (FloatRegIndex)(FLOATREG_XMM_BASE + NumXMMSubRegs * index + sub_idx);
    }

    static inline FloatRegIndex
    FLOATREG_MICROFP(int index)
    {
        return (FloatRegIndex)(FLOATREG_MICROFP_BASE + index);
    }

    static inline FloatRegIndex
    FLOATREG_STACK(int index, int top)
    {
        return FLOATREG_FPR((top + index + 8) % 8);
    }
}

#endif // __ARCH_X86_FLOATREGS_HH__
