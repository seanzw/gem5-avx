	.text
	.file	"avxtests.c"
	.globl	vaddps_check_zmm                # -- Begin function vaddps_check_zmm
	.p2align	4, 0x90
	.type	vaddps_check_zmm,@function
vaddps_check_zmm:                       # @vaddps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB0_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB0_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB0_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end0:
	.size	vaddps_check_zmm, .Lfunc_end0-vaddps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vaddps_zmm                      # -- Begin function vaddps_zmm
	.p2align	4, 0x90
	.type	vaddps_zmm,@function
vaddps_zmm:                             # @vaddps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vaddps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	vaddps_zmm, .Lfunc_end1-vaddps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vaddps_check_ymm                # -- Begin function vaddps_check_ymm
	.p2align	4, 0x90
	.type	vaddps_check_ymm,@function
vaddps_check_ymm:                       # @vaddps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB2_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB2_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB2_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.58, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end2:
	.size	vaddps_check_ymm, .Lfunc_end2-vaddps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vaddps_ymm                      # -- Begin function vaddps_ymm
	.p2align	4, 0x90
	.type	vaddps_ymm,@function
vaddps_ymm:                             # @vaddps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vaddps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	vaddps_ymm, .Lfunc_end3-vaddps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vsubps_check_zmm                # -- Begin function vsubps_check_zmm
	.p2align	4, 0x90
	.type	vsubps_check_zmm,@function
vsubps_check_zmm:                       # @vsubps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB4_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB4_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB4_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.59, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end4:
	.size	vsubps_check_zmm, .Lfunc_end4-vsubps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vsubps_zmm                      # -- Begin function vsubps_zmm
	.p2align	4, 0x90
	.type	vsubps_zmm,@function
vsubps_zmm:                             # @vsubps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vsubps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	vsubps_zmm, .Lfunc_end5-vsubps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vsubps_check_ymm                # -- Begin function vsubps_check_ymm
	.p2align	4, 0x90
	.type	vsubps_check_ymm,@function
vsubps_check_ymm:                       # @vsubps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB6_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB6_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB6_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB6_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.60, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end6:
	.size	vsubps_check_ymm, .Lfunc_end6-vsubps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vsubps_ymm                      # -- Begin function vsubps_ymm
	.p2align	4, 0x90
	.type	vsubps_ymm,@function
vsubps_ymm:                             # @vsubps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vsubps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	vsubps_ymm, .Lfunc_end7-vsubps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vmulps_check_zmm                # -- Begin function vmulps_check_zmm
	.p2align	4, 0x90
	.type	vmulps_check_zmm,@function
vmulps_check_zmm:                       # @vmulps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB8_1:                                # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB8_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB8_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB8_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.61, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end8:
	.size	vmulps_check_zmm, .Lfunc_end8-vmulps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vmulps_zmm                      # -- Begin function vmulps_zmm
	.p2align	4, 0x90
	.type	vmulps_zmm,@function
vmulps_zmm:                             # @vmulps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vmulps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	vmulps_zmm, .Lfunc_end9-vmulps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vmulps_check_ymm                # -- Begin function vmulps_check_ymm
	.p2align	4, 0x90
	.type	vmulps_check_ymm,@function
vmulps_check_ymm:                       # @vmulps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB10_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB10_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB10_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB10_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.62, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end10:
	.size	vmulps_check_ymm, .Lfunc_end10-vmulps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vmulps_ymm                      # -- Begin function vmulps_ymm
	.p2align	4, 0x90
	.type	vmulps_ymm,@function
vmulps_ymm:                             # @vmulps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vmulps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	vmulps_ymm, .Lfunc_end11-vmulps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vdivps_check_zmm                # -- Begin function vdivps_check_zmm
	.p2align	4, 0x90
	.type	vdivps_check_zmm,@function
vdivps_check_zmm:                       # @vdivps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB12_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB12_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB12_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.63, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end12:
	.size	vdivps_check_zmm, .Lfunc_end12-vdivps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vdivps_zmm                      # -- Begin function vdivps_zmm
	.p2align	4, 0x90
	.type	vdivps_zmm,@function
vdivps_zmm:                             # @vdivps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vdivps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	vdivps_zmm, .Lfunc_end13-vdivps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vdivps_check_ymm                # -- Begin function vdivps_check_ymm
	.p2align	4, 0x90
	.type	vdivps_check_ymm,@function
vdivps_check_ymm:                       # @vdivps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB14_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB14_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB14_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.64, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end14:
	.size	vdivps_check_ymm, .Lfunc_end14-vdivps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vdivps_ymm                      # -- Begin function vdivps_ymm
	.p2align	4, 0x90
	.type	vdivps_ymm,@function
vdivps_ymm:                             # @vdivps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vdivps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	vdivps_ymm, .Lfunc_end15-vdivps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vminps_check_zmm                # -- Begin function vminps_check_zmm
	.p2align	4, 0x90
	.type	vminps_check_zmm,@function
vminps_check_zmm:                       # @vminps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB16_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB16_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB16_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB16_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.65, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end16:
	.size	vminps_check_zmm, .Lfunc_end16-vminps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vminps_zmm                      # -- Begin function vminps_zmm
	.p2align	4, 0x90
	.type	vminps_zmm,@function
vminps_zmm:                             # @vminps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vminps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	vminps_zmm, .Lfunc_end17-vminps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vminps_check_ymm                # -- Begin function vminps_check_ymm
	.p2align	4, 0x90
	.type	vminps_check_ymm,@function
vminps_check_ymm:                       # @vminps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB18_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB18_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB18_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.66, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end18:
	.size	vminps_check_ymm, .Lfunc_end18-vminps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vminps_ymm                      # -- Begin function vminps_ymm
	.p2align	4, 0x90
	.type	vminps_ymm,@function
vminps_ymm:                             # @vminps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vminps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end19:
	.size	vminps_ymm, .Lfunc_end19-vminps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vmaxps_check_zmm                # -- Begin function vmaxps_check_zmm
	.p2align	4, 0x90
	.type	vmaxps_check_zmm,@function
vmaxps_check_zmm:                       # @vmaxps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB20_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB20_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB20_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB20_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.67, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end20:
	.size	vmaxps_check_zmm, .Lfunc_end20-vmaxps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vmaxps_zmm                      # -- Begin function vmaxps_zmm
	.p2align	4, 0x90
	.type	vmaxps_zmm,@function
vmaxps_zmm:                             # @vmaxps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vmaxps	80(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end21:
	.size	vmaxps_zmm, .Lfunc_end21-vmaxps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vmaxps_check_ymm                # -- Begin function vmaxps_check_ymm
	.p2align	4, 0x90
	.type	vmaxps_check_ymm,@function
vmaxps_check_ymm:                       # @vmaxps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB22_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB22_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB22_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB22_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.68, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end22:
	.size	vmaxps_check_ymm, .Lfunc_end22-vmaxps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vmaxps_ymm                      # -- Begin function vmaxps_ymm
	.p2align	4, 0x90
	.type	vmaxps_ymm,@function
vmaxps_ymm:                             # @vmaxps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vmaxps	80(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end23:
	.size	vmaxps_ymm, .Lfunc_end23-vmaxps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vxorps_check_zmm                # -- Begin function vxorps_check_zmm
	.p2align	4, 0x90
	.type	vxorps_check_zmm,@function
vxorps_check_zmm:                       # @vxorps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB24_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB24_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB24_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB24_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.69, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end24:
	.size	vxorps_check_zmm, .Lfunc_end24-vxorps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vxorps_zmm                      # -- Begin function vxorps_zmm
	.p2align	4, 0x90
	.type	vxorps_zmm,@function
vxorps_zmm:                             # @vxorps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %zmm0
	vxorps	16(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end25:
	.size	vxorps_zmm, .Lfunc_end25-vxorps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vxorps_check_ymm                # -- Begin function vxorps_check_ymm
	.p2align	4, 0x90
	.type	vxorps_check_ymm,@function
vxorps_check_ymm:                       # @vxorps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB26_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB26_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB26_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB26_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.70, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end26:
	.size	vxorps_check_ymm, .Lfunc_end26-vxorps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vxorps_ymm                      # -- Begin function vxorps_ymm
	.p2align	4, 0x90
	.type	vxorps_ymm,@function
vxorps_ymm:                             # @vxorps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %ymm0
	vxorps	16(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end27:
	.size	vxorps_ymm, .Lfunc_end27-vxorps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vandps_check_zmm                # -- Begin function vandps_check_zmm
	.p2align	4, 0x90
	.type	vandps_check_zmm,@function
vandps_check_zmm:                       # @vandps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB28_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB28_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB28_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB28_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.71, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end28:
	.size	vandps_check_zmm, .Lfunc_end28-vandps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vandps_zmm                      # -- Begin function vandps_zmm
	.p2align	4, 0x90
	.type	vandps_zmm,@function
vandps_zmm:                             # @vandps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %zmm0
	vandps	16(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vandps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end29:
	.size	vandps_zmm, .Lfunc_end29-vandps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vandps_check_ymm                # -- Begin function vandps_check_ymm
	.p2align	4, 0x90
	.type	vandps_check_ymm,@function
vandps_check_ymm:                       # @vandps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB30_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB30_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB30_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB30_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.72, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end30:
	.size	vandps_check_ymm, .Lfunc_end30-vandps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vandps_ymm                      # -- Begin function vandps_ymm
	.p2align	4, 0x90
	.type	vandps_ymm,@function
vandps_ymm:                             # @vandps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %ymm0
	vandps	16(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vandps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end31:
	.size	vandps_ymm, .Lfunc_end31-vandps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vunpcklps_check_zmm             # -- Begin function vunpcklps_check_zmm
	.p2align	4, 0x90
	.type	vunpcklps_check_zmm,@function
vunpcklps_check_zmm:                    # @vunpcklps_check_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB32_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB32_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB32_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB32_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.73, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end32:
	.size	vunpcklps_check_zmm, .Lfunc_end32-vunpcklps_check_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vunpcklps_zmm                   # -- Begin function vunpcklps_zmm
	.p2align	4, 0x90
	.type	vunpcklps_zmm,@function
vunpcklps_zmm:                          # @vunpcklps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %zmm0
	vunpcklps	80(%rbp), %zmm0, %zmm0  # zmm0 = zmm0[0],mem[0],zmm0[1],mem[1],zmm0[4],mem[4],zmm0[5],mem[5],zmm0[8],mem[8],zmm0[9],mem[9],zmm0[12],mem[12],zmm0[13],mem[13]
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vunpcklps_check_zmm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end33:
	.size	vunpcklps_zmm, .Lfunc_end33-vunpcklps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vunpcklps_check_ymm             # -- Begin function vunpcklps_check_ymm
	.p2align	4, 0x90
	.type	vunpcklps_check_ymm,@function
vunpcklps_check_ymm:                    # @vunpcklps_check_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB34_1:                               # =>This Inner Loop Header: Depth=1
	vmovss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	vucomiss	(%rdx,%rax,4), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB34_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB34_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB34_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.74, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end34:
	.size	vunpcklps_check_ymm, .Lfunc_end34-vunpcklps_check_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vunpcklps_ymm                   # -- Begin function vunpcklps_ymm
	.p2align	4, 0x90
	.type	vunpcklps_ymm,@function
vunpcklps_ymm:                          # @vunpcklps_ymm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	16(%rbp), %ymm0
	vunpcklps	80(%rbp), %ymm0, %ymm0  # ymm0 = ymm0[0],mem[0],ymm0[1],mem[1],ymm0[4],mem[4],ymm0[5],mem[5]
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vunpcklps_check_ymm
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end35:
	.size	vunpcklps_ymm, .Lfunc_end35-vunpcklps_ymm
	.cfi_endproc
                                        # -- End function
	.globl	vaddpd_check_zmmd               # -- Begin function vaddpd_check_zmmd
	.p2align	4, 0x90
	.type	vaddpd_check_zmmd,@function
vaddpd_check_zmmd:                      # @vaddpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB36_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB36_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB36_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB36_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.75, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end36:
	.size	vaddpd_check_zmmd, .Lfunc_end36-vaddpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vaddpd_zmmd                     # -- Begin function vaddpd_zmmd
	.p2align	4, 0x90
	.type	vaddpd_zmmd,@function
vaddpd_zmmd:                            # @vaddpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vaddpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end37:
	.size	vaddpd_zmmd, .Lfunc_end37-vaddpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vaddpd_check_ymmd               # -- Begin function vaddpd_check_ymmd
	.p2align	4, 0x90
	.type	vaddpd_check_ymmd,@function
vaddpd_check_ymmd:                      # @vaddpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB38_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB38_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB38_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB38_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.76, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end38:
	.size	vaddpd_check_ymmd, .Lfunc_end38-vaddpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vaddpd_ymmd                     # -- Begin function vaddpd_ymmd
	.p2align	4, 0x90
	.type	vaddpd_ymmd,@function
vaddpd_ymmd:                            # @vaddpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vaddpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end39:
	.size	vaddpd_ymmd, .Lfunc_end39-vaddpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vsubpd_check_zmmd               # -- Begin function vsubpd_check_zmmd
	.p2align	4, 0x90
	.type	vsubpd_check_zmmd,@function
vsubpd_check_zmmd:                      # @vsubpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB40_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB40_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB40_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB40_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.77, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end40:
	.size	vsubpd_check_zmmd, .Lfunc_end40-vsubpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vsubpd_zmmd                     # -- Begin function vsubpd_zmmd
	.p2align	4, 0x90
	.type	vsubpd_zmmd,@function
vsubpd_zmmd:                            # @vsubpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vsubpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end41:
	.size	vsubpd_zmmd, .Lfunc_end41-vsubpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vsubpd_check_ymmd               # -- Begin function vsubpd_check_ymmd
	.p2align	4, 0x90
	.type	vsubpd_check_ymmd,@function
vsubpd_check_ymmd:                      # @vsubpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB42_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB42_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB42_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.78, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end42:
	.size	vsubpd_check_ymmd, .Lfunc_end42-vsubpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vsubpd_ymmd                     # -- Begin function vsubpd_ymmd
	.p2align	4, 0x90
	.type	vsubpd_ymmd,@function
vsubpd_ymmd:                            # @vsubpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vsubpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end43:
	.size	vsubpd_ymmd, .Lfunc_end43-vsubpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vmulpd_check_zmmd               # -- Begin function vmulpd_check_zmmd
	.p2align	4, 0x90
	.type	vmulpd_check_zmmd,@function
vmulpd_check_zmmd:                      # @vmulpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB44_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB44_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB44_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB44_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.79, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end44:
	.size	vmulpd_check_zmmd, .Lfunc_end44-vmulpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vmulpd_zmmd                     # -- Begin function vmulpd_zmmd
	.p2align	4, 0x90
	.type	vmulpd_zmmd,@function
vmulpd_zmmd:                            # @vmulpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vmulpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end45:
	.size	vmulpd_zmmd, .Lfunc_end45-vmulpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vmulpd_check_ymmd               # -- Begin function vmulpd_check_ymmd
	.p2align	4, 0x90
	.type	vmulpd_check_ymmd,@function
vmulpd_check_ymmd:                      # @vmulpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB46_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB46_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB46_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB46_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.80, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end46:
	.size	vmulpd_check_ymmd, .Lfunc_end46-vmulpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vmulpd_ymmd                     # -- Begin function vmulpd_ymmd
	.p2align	4, 0x90
	.type	vmulpd_ymmd,@function
vmulpd_ymmd:                            # @vmulpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vmulpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end47:
	.size	vmulpd_ymmd, .Lfunc_end47-vmulpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vdivpd_check_zmmd               # -- Begin function vdivpd_check_zmmd
	.p2align	4, 0x90
	.type	vdivpd_check_zmmd,@function
vdivpd_check_zmmd:                      # @vdivpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB48_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB48_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB48_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB48_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.81, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end48:
	.size	vdivpd_check_zmmd, .Lfunc_end48-vdivpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vdivpd_zmmd                     # -- Begin function vdivpd_zmmd
	.p2align	4, 0x90
	.type	vdivpd_zmmd,@function
vdivpd_zmmd:                            # @vdivpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vdivpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end49:
	.size	vdivpd_zmmd, .Lfunc_end49-vdivpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vdivpd_check_ymmd               # -- Begin function vdivpd_check_ymmd
	.p2align	4, 0x90
	.type	vdivpd_check_ymmd,@function
vdivpd_check_ymmd:                      # @vdivpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB50_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB50_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB50_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB50_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.82, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end50:
	.size	vdivpd_check_ymmd, .Lfunc_end50-vdivpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vdivpd_ymmd                     # -- Begin function vdivpd_ymmd
	.p2align	4, 0x90
	.type	vdivpd_ymmd,@function
vdivpd_ymmd:                            # @vdivpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vdivpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end51:
	.size	vdivpd_ymmd, .Lfunc_end51-vdivpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vmaxpd_check_zmmd               # -- Begin function vmaxpd_check_zmmd
	.p2align	4, 0x90
	.type	vmaxpd_check_zmmd,@function
vmaxpd_check_zmmd:                      # @vmaxpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB52_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB52_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB52_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB52_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.83, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end52:
	.size	vmaxpd_check_zmmd, .Lfunc_end52-vmaxpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vmaxpd_zmmd                     # -- Begin function vmaxpd_zmmd
	.p2align	4, 0x90
	.type	vmaxpd_zmmd,@function
vmaxpd_zmmd:                            # @vmaxpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vmaxpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end53:
	.size	vmaxpd_zmmd, .Lfunc_end53-vmaxpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vmaxpd_check_ymmd               # -- Begin function vmaxpd_check_ymmd
	.p2align	4, 0x90
	.type	vmaxpd_check_ymmd,@function
vmaxpd_check_ymmd:                      # @vmaxpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB54_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB54_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB54_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB54_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.84, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end54:
	.size	vmaxpd_check_ymmd, .Lfunc_end54-vmaxpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vmaxpd_ymmd                     # -- Begin function vmaxpd_ymmd
	.p2align	4, 0x90
	.type	vmaxpd_ymmd,@function
vmaxpd_ymmd:                            # @vmaxpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vmaxpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end55:
	.size	vmaxpd_ymmd, .Lfunc_end55-vmaxpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vminpd_check_zmmd               # -- Begin function vminpd_check_zmmd
	.p2align	4, 0x90
	.type	vminpd_check_zmmd,@function
vminpd_check_zmmd:                      # @vminpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB56_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB56_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB56_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB56_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.85, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end56:
	.size	vminpd_check_zmmd, .Lfunc_end56-vminpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vminpd_zmmd                     # -- Begin function vminpd_zmmd
	.p2align	4, 0x90
	.type	vminpd_zmmd,@function
vminpd_zmmd:                            # @vminpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %zmm0
	vminpd	80(%rbp), %zmm0, %zmm0
	vmovapd	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end57:
	.size	vminpd_zmmd, .Lfunc_end57-vminpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vminpd_check_ymmd               # -- Begin function vminpd_check_ymmd
	.p2align	4, 0x90
	.type	vminpd_check_ymmd,@function
vminpd_check_ymmd:                      # @vminpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB58_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB58_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB58_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB58_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.86, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end58:
	.size	vminpd_check_ymmd, .Lfunc_end58-vminpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vminpd_ymmd                     # -- Begin function vminpd_ymmd
	.p2align	4, 0x90
	.type	vminpd_ymmd,@function
vminpd_ymmd:                            # @vminpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovapd	16(%rbp), %ymm0
	vminpd	80(%rbp), %ymm0, %ymm0
	vmovapd	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end59:
	.size	vminpd_ymmd, .Lfunc_end59-vminpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vxorpd_check_zmmd               # -- Begin function vxorpd_check_zmmd
	.p2align	4, 0x90
	.type	vxorpd_check_zmmd,@function
vxorpd_check_zmmd:                      # @vxorpd_check_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB60_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB60_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB60_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB60_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.87, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end60:
	.size	vxorpd_check_zmmd, .Lfunc_end60-vxorpd_check_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vxorpd_zmmd                     # -- Begin function vxorpd_zmmd
	.p2align	4, 0x90
	.type	vxorpd_zmmd,@function
vxorpd_zmmd:                            # @vxorpd_zmmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %zmm0
	vxorps	16(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorpd_check_zmmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end61:
	.size	vxorpd_zmmd, .Lfunc_end61-vxorpd_zmmd
	.cfi_endproc
                                        # -- End function
	.globl	vxorpd_check_ymmd               # -- Begin function vxorpd_check_ymmd
	.p2align	4, 0x90
	.type	vxorpd_check_ymmd,@function
vxorpd_check_ymmd:                      # @vxorpd_check_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %rcx
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB62_1:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%rcx,%rax,8), %xmm0            # xmm0 = mem[0],zero
	vucomisd	(%rdx,%rax,8), %xmm0
	cmovnel	%esi, %edi
	cmovpl	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB62_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB62_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB62_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.88, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end62:
	.size	vxorpd_check_ymmd, .Lfunc_end62-vxorpd_check_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vxorpd_ymmd                     # -- Begin function vxorpd_ymmd
	.p2align	4, 0x90
	.type	vxorpd_ymmd,@function
vxorpd_ymmd:                            # @vxorpd_ymmd
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %ymm0
	vxorps	16(%rbp), %ymm0, %ymm0
	vmovaps	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorpd_check_ymmd
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end63:
	.size	vxorpd_ymmd, .Lfunc_end63-vxorpd_ymmd
	.cfi_endproc
                                        # -- End function
	.globl	vpaddb_check_zmmi               # -- Begin function vpaddb_check_zmmi
	.p2align	4, 0x90
	.type	vpaddb_check_zmmi,@function
vpaddb_check_zmmi:                      # @vpaddb_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB64_1:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.LBB64_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB64_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB64_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.89, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end64:
	.size	vpaddb_check_zmmi, .Lfunc_end64-vpaddb_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddb_zmmi                     # -- Begin function vpaddb_zmmi
	.p2align	4, 0x90
	.type	vpaddb_zmmi,@function
vpaddb_zmmi:                            # @vpaddb_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpaddb	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddb_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end65:
	.size	vpaddb_zmmi, .Lfunc_end65-vpaddb_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddb_check_ymmi               # -- Begin function vpaddb_check_ymmi
	.p2align	4, 0x90
	.type	vpaddb_check_ymmi,@function
vpaddb_check_ymmi:                      # @vpaddb_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB66_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB66_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB66_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.90, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end66:
	.size	vpaddb_check_ymmi, .Lfunc_end66-vpaddb_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddb_ymmi                     # -- Begin function vpaddb_ymmi
	.p2align	4, 0x90
	.type	vpaddb_ymmi,@function
vpaddb_ymmi:                            # @vpaddb_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpaddb	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddb_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end67:
	.size	vpaddb_ymmi, .Lfunc_end67-vpaddb_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsb_check_zmmi              # -- Begin function vpaddsb_check_zmmi
	.p2align	4, 0x90
	.type	vpaddsb_check_zmmi,@function
vpaddsb_check_zmmi:                     # @vpaddsb_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB68_1:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$64, %rax
	jne	.LBB68_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB68_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB68_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.91, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end68:
	.size	vpaddsb_check_zmmi, .Lfunc_end68-vpaddsb_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsb_zmmi                    # -- Begin function vpaddsb_zmmi
	.p2align	4, 0x90
	.type	vpaddsb_zmmi,@function
vpaddsb_zmmi:                           # @vpaddsb_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	16(%rbp), %zmm0
	vpaddsb	80(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end69:
	.size	vpaddsb_zmmi, .Lfunc_end69-vpaddsb_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsb_check_ymmi              # -- Begin function vpaddsb_check_ymmi
	.p2align	4, 0x90
	.type	vpaddsb_check_ymmi,@function
vpaddsb_check_ymmi:                     # @vpaddsb_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB70_1:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r8,%rax), %ecx
	cmpb	(%rdx,%rax), %cl
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB70_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB70_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB70_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.92, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end70:
	.size	vpaddsb_check_ymmi, .Lfunc_end70-vpaddsb_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsb_ymmi                    # -- Begin function vpaddsb_ymmi
	.p2align	4, 0x90
	.type	vpaddsb_ymmi,@function
vpaddsb_ymmi:                           # @vpaddsb_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	16(%rbp), %ymm0
	vpaddsb	80(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end71:
	.size	vpaddsb_ymmi, .Lfunc_end71-vpaddsb_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddw_check_zmmi               # -- Begin function vpaddw_check_zmmi
	.p2align	4, 0x90
	.type	vpaddw_check_zmmi,@function
vpaddw_check_zmmi:                      # @vpaddw_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB72_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB72_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB72_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB72_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.93, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end72:
	.size	vpaddw_check_zmmi, .Lfunc_end72-vpaddw_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddw_zmmi                     # -- Begin function vpaddw_zmmi
	.p2align	4, 0x90
	.type	vpaddw_zmmi,@function
vpaddw_zmmi:                            # @vpaddw_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpaddw	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddw_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end73:
	.size	vpaddw_zmmi, .Lfunc_end73-vpaddw_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddw_check_ymmi               # -- Begin function vpaddw_check_ymmi
	.p2align	4, 0x90
	.type	vpaddw_check_ymmi,@function
vpaddw_check_ymmi:                      # @vpaddw_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB74_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB74_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB74_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB74_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.94, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end74:
	.size	vpaddw_check_ymmi, .Lfunc_end74-vpaddw_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddw_ymmi                     # -- Begin function vpaddw_ymmi
	.p2align	4, 0x90
	.type	vpaddw_ymmi,@function
vpaddw_ymmi:                            # @vpaddw_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpaddw	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddw_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end75:
	.size	vpaddw_ymmi, .Lfunc_end75-vpaddw_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsw_check_zmmi              # -- Begin function vpaddsw_check_zmmi
	.p2align	4, 0x90
	.type	vpaddsw_check_zmmi,@function
vpaddsw_check_zmmi:                     # @vpaddsw_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB76_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB76_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB76_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB76_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.95, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end76:
	.size	vpaddsw_check_zmmi, .Lfunc_end76-vpaddsw_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsw_zmmi                    # -- Begin function vpaddsw_zmmi
	.p2align	4, 0x90
	.type	vpaddsw_zmmi,@function
vpaddsw_zmmi:                           # @vpaddsw_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	16(%rbp), %zmm0
	vpaddsw	80(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsw_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end77:
	.size	vpaddsw_zmmi, .Lfunc_end77-vpaddsw_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsw_check_ymmi              # -- Begin function vpaddsw_check_ymmi
	.p2align	4, 0x90
	.type	vpaddsw_check_ymmi,@function
vpaddsw_check_ymmi:                     # @vpaddsw_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB78_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB78_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB78_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB78_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.96, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end78:
	.size	vpaddsw_check_ymmi, .Lfunc_end78-vpaddsw_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddsw_ymmi                    # -- Begin function vpaddsw_ymmi
	.p2align	4, 0x90
	.type	vpaddsw_ymmi,@function
vpaddsw_ymmi:                           # @vpaddsw_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	16(%rbp), %ymm0
	vpaddsw	80(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsw_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end79:
	.size	vpaddsw_ymmi, .Lfunc_end79-vpaddsw_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmullw_check_zmmi              # -- Begin function vpmullw_check_zmmi
	.p2align	4, 0x90
	.type	vpmullw_check_zmmi,@function
vpmullw_check_zmmi:                     # @vpmullw_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB80_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB80_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB80_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB80_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.97, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end80:
	.size	vpmullw_check_zmmi, .Lfunc_end80-vpmullw_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmullw_zmmi                    # -- Begin function vpmullw_zmmi
	.p2align	4, 0x90
	.type	vpmullw_zmmi,@function
vpmullw_zmmi:                           # @vpmullw_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpmullw	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmullw_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end81:
	.size	vpmullw_zmmi, .Lfunc_end81-vpmullw_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmullw_check_ymmi              # -- Begin function vpmullw_check_ymmi
	.p2align	4, 0x90
	.type	vpmullw_check_ymmi,@function
vpmullw_check_ymmi:                     # @vpmullw_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB82_1:                               # =>This Inner Loop Header: Depth=1
	movzwl	(%r8,%rax,2), %ecx
	cmpw	(%rdx,%rax,2), %cx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB82_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB82_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB82_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.98, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end82:
	.size	vpmullw_check_ymmi, .Lfunc_end82-vpmullw_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmullw_ymmi                    # -- Begin function vpmullw_ymmi
	.p2align	4, 0x90
	.type	vpmullw_ymmi,@function
vpmullw_ymmi:                           # @vpmullw_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpmullw	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmullw_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end83:
	.size	vpmullw_ymmi, .Lfunc_end83-vpmullw_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddd_check_zmmi               # -- Begin function vpaddd_check_zmmi
	.p2align	4, 0x90
	.type	vpaddd_check_zmmi,@function
vpaddd_check_zmmi:                      # @vpaddd_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB84_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB84_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB84_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB84_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.99, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end84:
	.size	vpaddd_check_zmmi, .Lfunc_end84-vpaddd_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddd_zmmi                     # -- Begin function vpaddd_zmmi
	.p2align	4, 0x90
	.type	vpaddd_zmmi,@function
vpaddd_zmmi:                            # @vpaddd_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpaddd	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddd_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end85:
	.size	vpaddd_zmmi, .Lfunc_end85-vpaddd_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddd_check_ymmi               # -- Begin function vpaddd_check_ymmi
	.p2align	4, 0x90
	.type	vpaddd_check_ymmi,@function
vpaddd_check_ymmi:                      # @vpaddd_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB86_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB86_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB86_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB86_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.100, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end86:
	.size	vpaddd_check_ymmi, .Lfunc_end86-vpaddd_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddd_ymmi                     # -- Begin function vpaddd_ymmi
	.p2align	4, 0x90
	.type	vpaddd_ymmi,@function
vpaddd_ymmi:                            # @vpaddd_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpaddd	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddd_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end87:
	.size	vpaddd_ymmi, .Lfunc_end87-vpaddd_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpandd_check_zmmi               # -- Begin function vpandd_check_zmmi
	.p2align	4, 0x90
	.type	vpandd_check_zmmi,@function
vpandd_check_zmmi:                      # @vpandd_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB88_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB88_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB88_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB88_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.101, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end88:
	.size	vpandd_check_zmmi, .Lfunc_end88-vpandd_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpandd_zmmi                     # -- Begin function vpandd_zmmi
	.p2align	4, 0x90
	.type	vpandd_zmmi,@function
vpandd_zmmi:                            # @vpandd_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovaps	80(%rbp), %zmm0
	vandps	16(%rbp), %zmm0, %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpandd_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end89:
	.size	vpandd_zmmi, .Lfunc_end89-vpandd_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsd_check_zmmi              # -- Begin function vpminsd_check_zmmi
	.p2align	4, 0x90
	.type	vpminsd_check_zmmi,@function
vpminsd_check_zmmi:                     # @vpminsd_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB90_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB90_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB90_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB90_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.102, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end90:
	.size	vpminsd_check_zmmi, .Lfunc_end90-vpminsd_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsd_zmmi                    # -- Begin function vpminsd_zmmi
	.p2align	4, 0x90
	.type	vpminsd_zmmi,@function
vpminsd_zmmi:                           # @vpminsd_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	16(%rbp), %zmm0
	vpminsd	80(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsd_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end91:
	.size	vpminsd_zmmi, .Lfunc_end91-vpminsd_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsd_check_ymmi              # -- Begin function vpminsd_check_ymmi
	.p2align	4, 0x90
	.type	vpminsd_check_ymmi,@function
vpminsd_check_ymmi:                     # @vpminsd_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB92_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB92_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB92_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB92_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.103, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end92:
	.size	vpminsd_check_ymmi, .Lfunc_end92-vpminsd_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsd_ymmi                    # -- Begin function vpminsd_ymmi
	.p2align	4, 0x90
	.type	vpminsd_ymmi,@function
vpminsd_ymmi:                           # @vpminsd_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	16(%rbp), %ymm0
	vpminsd	80(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsd_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end93:
	.size	vpminsd_ymmi, .Lfunc_end93-vpminsd_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmuldq_check_zmmi              # -- Begin function vpmuldq_check_zmmi
	.p2align	4, 0x90
	.type	vpmuldq_check_zmmi,@function
vpmuldq_check_zmmi:                     # @vpmuldq_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB94_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB94_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB94_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB94_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.104, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end94:
	.size	vpmuldq_check_zmmi, .Lfunc_end94-vpmuldq_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmuldq_zmmi                    # -- Begin function vpmuldq_zmmi
	.p2align	4, 0x90
	.type	vpmuldq_zmmi,@function
vpmuldq_zmmi:                           # @vpmuldq_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpmuldq	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmuldq_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end95:
	.size	vpmuldq_zmmi, .Lfunc_end95-vpmuldq_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmuldq_check_ymmi              # -- Begin function vpmuldq_check_ymmi
	.p2align	4, 0x90
	.type	vpmuldq_check_ymmi,@function
vpmuldq_check_ymmi:                     # @vpmuldq_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB96_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB96_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB96_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB96_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.105, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end96:
	.size	vpmuldq_check_ymmi, .Lfunc_end96-vpmuldq_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmuldq_ymmi                    # -- Begin function vpmuldq_ymmi
	.p2align	4, 0x90
	.type	vpmuldq_ymmi,@function
vpmuldq_ymmi:                           # @vpmuldq_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpmuldq	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmuldq_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end97:
	.size	vpmuldq_ymmi, .Lfunc_end97-vpmuldq_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmulld_check_zmmi              # -- Begin function vpmulld_check_zmmi
	.p2align	4, 0x90
	.type	vpmulld_check_zmmi,@function
vpmulld_check_zmmi:                     # @vpmulld_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB98_1:                               # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB98_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB98_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB98_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.106, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end98:
	.size	vpmulld_check_zmmi, .Lfunc_end98-vpmulld_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmulld_zmmi                    # -- Begin function vpmulld_zmmi
	.p2align	4, 0x90
	.type	vpmulld_zmmi,@function
vpmulld_zmmi:                           # @vpmulld_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpmulld	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmulld_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end99:
	.size	vpmulld_zmmi, .Lfunc_end99-vpmulld_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmulld_check_ymmi              # -- Begin function vpmulld_check_ymmi
	.p2align	4, 0x90
	.type	vpmulld_check_ymmi,@function
vpmulld_check_ymmi:                     # @vpmulld_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB100_1:                              # =>This Inner Loop Header: Depth=1
	movl	(%r8,%rax,4), %ecx
	cmpl	(%rdx,%rax,4), %ecx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB100_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB100_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB100_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.107, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end100:
	.size	vpmulld_check_ymmi, .Lfunc_end100-vpmulld_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpmulld_ymmi                    # -- Begin function vpmulld_ymmi
	.p2align	4, 0x90
	.type	vpmulld_ymmi,@function
vpmulld_ymmi:                           # @vpmulld_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpmulld	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmulld_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end101:
	.size	vpmulld_ymmi, .Lfunc_end101-vpmulld_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddq_check_zmmi               # -- Begin function vpaddq_check_zmmi
	.p2align	4, 0x90
	.type	vpaddq_check_zmmi,@function
vpaddq_check_zmmi:                      # @vpaddq_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB102_1:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB102_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB102_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB102_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.108, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end102:
	.size	vpaddq_check_zmmi, .Lfunc_end102-vpaddq_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddq_zmmi                     # -- Begin function vpaddq_zmmi
	.p2align	4, 0x90
	.type	vpaddq_zmmi,@function
vpaddq_zmmi:                            # @vpaddq_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	80(%rbp), %zmm0
	vpaddq	16(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddq_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end103:
	.size	vpaddq_zmmi, .Lfunc_end103-vpaddq_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddq_check_ymmi               # -- Begin function vpaddq_check_ymmi
	.p2align	4, 0x90
	.type	vpaddq_check_ymmi,@function
vpaddq_check_ymmi:                      # @vpaddq_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB104_1:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB104_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB104_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB104_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.109, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end104:
	.size	vpaddq_check_ymmi, .Lfunc_end104-vpaddq_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpaddq_ymmi                     # -- Begin function vpaddq_ymmi
	.p2align	4, 0x90
	.type	vpaddq_ymmi,@function
vpaddq_ymmi:                            # @vpaddq_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	80(%rbp), %ymm0
	vpaddq	16(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddq_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end105:
	.size	vpaddq_ymmi, .Lfunc_end105-vpaddq_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsq_check_zmmi              # -- Begin function vpminsq_check_zmmi
	.p2align	4, 0x90
	.type	vpminsq_check_zmmi,@function
vpminsq_check_zmmi:                     # @vpminsq_check_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB106_1:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB106_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB106_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB106_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.110, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end106:
	.size	vpminsq_check_zmmi, .Lfunc_end106-vpminsq_check_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsq_zmmi                    # -- Begin function vpminsq_zmmi
	.p2align	4, 0x90
	.type	vpminsq_zmmi,@function
vpminsq_zmmi:                           # @vpminsq_zmmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa64	16(%rbp), %zmm0
	vpminsq	80(%rbp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsq_check_zmmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end107:
	.size	vpminsq_zmmi, .Lfunc_end107-vpminsq_zmmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsq_check_ymmi              # -- Begin function vpminsq_check_ymmi
	.p2align	4, 0x90
	.type	vpminsq_check_ymmi,@function
vpminsq_check_ymmi:                     # @vpminsq_check_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	xorl	%eax, %eax
	leaq	80(%rbp), %r8
	leaq	16(%rbp), %rdx
	movl	$1, %esi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB108_1:                              # =>This Inner Loop Header: Depth=1
	movq	(%r8,%rax,8), %rcx
	cmpq	(%rdx,%rax,8), %rcx
	cmovnel	%esi, %edi
	addq	$1, %rax
	cmpq	$4, %rax
	jne	.LBB108_1
# %bb.2:
	testl	%edi, %edi
	jne	.LBB108_4
# %bb.3:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB108_4:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.111, %edi
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end108:
	.size	vpminsq_check_ymmi, .Lfunc_end108-vpminsq_check_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	vpminsq_ymmi                    # -- Begin function vpminsq_ymmi
	.p2align	4, 0x90
	.type	vpminsq_ymmi,@function
vpminsq_ymmi:                           # @vpminsq_ymmi
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$256, %rsp                      # imm = 0x100
	vmovdqa	16(%rbp), %ymm0
	vpminsq	80(%rbp), %ymm0, %ymm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovaps	144(%rbp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	128(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsq_check_ymmi
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end109:
	.size	vpminsq_ymmi, .Lfunc_end109-vpminsq_ymmi
	.cfi_endproc
                                        # -- End function
	.globl	saturate32                      # -- Begin function saturate32
	.p2align	4, 0x90
	.type	saturate32,@function
saturate32:                             # @saturate32
	.cfi_startproc
# %bb.0:
	cmpq	$-2147483648, %rdi              # imm = 0x80000000
	movq	$-2147483648, %rcx              # imm = 0x80000000
	cmovgq	%rdi, %rcx
	cmpq	$2147483647, %rcx               # imm = 0x7FFFFFFF
	movl	$2147483647, %eax               # imm = 0x7FFFFFFF
	cmovll	%ecx, %eax
	retq
.Lfunc_end110:
	.size	saturate32, .Lfunc_end110-saturate32
	.cfi_endproc
                                        # -- End function
	.globl	saturate16                      # -- Begin function saturate16
	.p2align	4, 0x90
	.type	saturate16,@function
saturate16:                             # @saturate16
	.cfi_startproc
# %bb.0:
	cmpq	$-32768, %rdi                   # imm = 0x8000
	movq	$-32768, %rcx                   # imm = 0x8000
	cmovgq	%rdi, %rcx
	cmpq	$32767, %rcx                    # imm = 0x7FFF
	movl	$32767, %eax                    # imm = 0x7FFF
	cmovll	%ecx, %eax
                                        # kill: def $ax killed $ax killed $eax
	retq
.Lfunc_end111:
	.size	saturate16, .Lfunc_end111-saturate16
	.cfi_endproc
                                        # -- End function
	.globl	saturate8                       # -- Begin function saturate8
	.p2align	4, 0x90
	.type	saturate8,@function
saturate8:                              # @saturate8
	.cfi_startproc
# %bb.0:
	cmpq	$-128, %rdi
	movq	$-128, %rcx
	cmovgq	%rdi, %rcx
	cmpq	$127, %rcx
	movl	$127, %eax
	cmovll	%ecx, %eax
                                        # kill: def $al killed $al killed $eax
	retq
.Lfunc_end112:
	.size	saturate8, .Lfunc_end112-saturate8
	.cfi_endproc
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	6                               # -- Begin function avx_test_op2
.LCPI113_0:
	.long	0x41700000                      # float 15
	.long	0x42940000                      # float 74
	.long	0x41500000                      # float 13
	.long	0x42780000                      # float 62
	.long	0x41300000                      # float 11
	.long	0x42480000                      # float 50
	.long	0x41100000                      # float 9
	.long	0x42400000                      # float 48
	.long	0x40e00000                      # float 7
	.long	0x42100000                      # float 36
	.long	0x40a00000                      # float 5
	.long	0x41c00000                      # float 24
	.long	0x40400000                      # float 3
	.long	0x41400000                      # float 12
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
.LCPI113_1:
	.long	0x41700000                      # float 15
	.long	0x41600000                      # float 14
	.long	0x42920000                      # float 73
	.long	0x41400000                      # float 12
	.long	0x42740000                      # float 61
	.long	0x41200000                      # float 10
	.long	0x426c0000                      # float 59
	.long	0x41000000                      # float 8
	.long	0x423c0000                      # float 47
	.long	0x40c00000                      # float 6
	.long	0x420c0000                      # float 35
	.long	0x40800000                      # float 4
	.long	0x41b80000                      # float 23
	.long	0x40000000                      # float 2
	.long	0x41300000                      # float 11
	.long	0x3f800000                      # float 1
.LCPI113_2:
	.long	0x41f00000                      # float 30
	.long	0x42b00000                      # float 88
	.long	0x42ac0000                      # float 86
	.long	0x42940000                      # float 74
	.long	0x42900000                      # float 72
	.long	0x42700000                      # float 60
	.long	0x42880000                      # float 68
	.long	0x42600000                      # float 56
	.long	0x42580000                      # float 54
	.long	0x42280000                      # float 42
	.long	0x42200000                      # float 40
	.long	0x41e00000                      # float 28
	.long	0x41d00000                      # float 26
	.long	0x41600000                      # float 14
	.long	0x41400000                      # float 12
	.long	0x3f800000                      # float 1
.LCPI113_3:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	4                               # 0x4
	.long	5                               # 0x5
	.long	6                               # 0x6
	.long	7                               # 0x7
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	12                              # 0xc
	.long	13                              # 0xd
	.long	14                              # 0xe
	.long	15                              # 0xf
.LCPI113_4:
	.long	20                              # 0x14
	.long	21                              # 0x15
	.long	22                              # 0x16
	.long	23                              # 0x17
	.long	24                              # 0x18
	.long	25                              # 0x19
	.long	26                              # 0x1a
	.long	27                              # 0x1b
	.long	28                              # 0x1c
	.long	29                              # 0x1d
	.long	30                              # 0x1e
	.long	31                              # 0x1f
	.long	32                              # 0x20
	.long	33                              # 0x21
	.long	34                              # 0x22
	.long	35                              # 0x23
.LCPI113_5:
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	28                              # 0x1c
	.long	28                              # 0x1c
	.long	28                              # 0x1c
	.long	28                              # 0x1c
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	20                              # 0x14
	.long	44                              # 0x2c
	.long	44                              # 0x2c
	.long	44                              # 0x2c
	.long	44                              # 0x2c
.LCPI113_6:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
	.long	8                               # 0x8
	.long	9                               # 0x9
	.long	10                              # 0xa
	.long	11                              # 0xb
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
.LCPI113_7:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	254                             # 0xfe
	.byte	253                             # 0xfd
	.byte	252                             # 0xfc
	.byte	251                             # 0xfb
	.byte	250                             # 0xfa
	.byte	249                             # 0xf9
	.byte	248                             # 0xf8
	.byte	247                             # 0xf7
	.byte	246                             # 0xf6
	.byte	245                             # 0xf5
	.byte	244                             # 0xf4
	.byte	243                             # 0xf3
	.byte	242                             # 0xf2
	.byte	241                             # 0xf1
	.byte	240                             # 0xf0
	.byte	239                             # 0xef
	.byte	238                             # 0xee
	.byte	237                             # 0xed
	.byte	236                             # 0xec
	.byte	235                             # 0xeb
	.byte	234                             # 0xea
	.byte	233                             # 0xe9
	.byte	232                             # 0xe8
	.byte	231                             # 0xe7
	.byte	230                             # 0xe6
	.byte	229                             # 0xe5
	.byte	228                             # 0xe4
	.byte	227                             # 0xe3
	.byte	226                             # 0xe2
	.byte	225                             # 0xe1
	.byte	224                             # 0xe0
	.byte	223                             # 0xdf
	.byte	222                             # 0xde
	.byte	221                             # 0xdd
	.byte	220                             # 0xdc
	.byte	219                             # 0xdb
	.byte	218                             # 0xda
	.byte	217                             # 0xd9
	.byte	216                             # 0xd8
	.byte	215                             # 0xd7
	.byte	214                             # 0xd6
	.byte	213                             # 0xd5
	.byte	212                             # 0xd4
	.byte	211                             # 0xd3
	.byte	210                             # 0xd2
	.byte	209                             # 0xd1
	.byte	208                             # 0xd0
	.byte	207                             # 0xcf
	.byte	206                             # 0xce
	.byte	205                             # 0xcd
	.byte	204                             # 0xcc
	.byte	203                             # 0xcb
	.byte	202                             # 0xca
	.byte	201                             # 0xc9
	.byte	200                             # 0xc8
	.byte	199                             # 0xc7
	.byte	198                             # 0xc6
	.byte	197                             # 0xc5
	.byte	196                             # 0xc4
	.byte	195                             # 0xc3
	.byte	194                             # 0xc2
	.byte	193                             # 0xc1
.LCPI113_8:
	.byte	0                               # 0x0
	.byte	2                               # 0x2
	.byte	4                               # 0x4
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	16                              # 0x10
	.byte	18                              # 0x12
	.byte	20                              # 0x14
	.byte	22                              # 0x16
	.byte	24                              # 0x18
	.byte	26                              # 0x1a
	.byte	28                              # 0x1c
	.byte	30                              # 0x1e
	.byte	32                              # 0x20
	.byte	34                              # 0x22
	.byte	36                              # 0x24
	.byte	38                              # 0x26
	.byte	40                              # 0x28
	.byte	42                              # 0x2a
	.byte	44                              # 0x2c
	.byte	46                              # 0x2e
	.byte	48                              # 0x30
	.byte	50                              # 0x32
	.byte	52                              # 0x34
	.byte	54                              # 0x36
	.byte	56                              # 0x38
	.byte	58                              # 0x3a
	.byte	60                              # 0x3c
	.byte	62                              # 0x3e
	.byte	64                              # 0x40
	.byte	66                              # 0x42
	.byte	68                              # 0x44
	.byte	70                              # 0x46
	.byte	72                              # 0x48
	.byte	74                              # 0x4a
	.byte	76                              # 0x4c
	.byte	78                              # 0x4e
	.byte	80                              # 0x50
	.byte	82                              # 0x52
	.byte	84                              # 0x54
	.byte	86                              # 0x56
	.byte	88                              # 0x58
	.byte	90                              # 0x5a
	.byte	92                              # 0x5c
	.byte	94                              # 0x5e
	.byte	96                              # 0x60
	.byte	98                              # 0x62
	.byte	100                             # 0x64
	.byte	102                             # 0x66
	.byte	104                             # 0x68
	.byte	106                             # 0x6a
	.byte	108                             # 0x6c
	.byte	110                             # 0x6e
	.byte	112                             # 0x70
	.byte	114                             # 0x72
	.byte	116                             # 0x74
	.byte	118                             # 0x76
	.byte	120                             # 0x78
	.byte	122                             # 0x7a
	.byte	124                             # 0x7c
	.byte	126                             # 0x7e
.LCPI113_9:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	7                               # 0x7
	.byte	8                               # 0x8
	.byte	9                               # 0x9
	.byte	10                              # 0xa
	.byte	11                              # 0xb
	.byte	12                              # 0xc
	.byte	13                              # 0xd
	.byte	14                              # 0xe
	.byte	15                              # 0xf
	.byte	16                              # 0x10
	.byte	17                              # 0x11
	.byte	18                              # 0x12
	.byte	19                              # 0x13
	.byte	20                              # 0x14
	.byte	21                              # 0x15
	.byte	22                              # 0x16
	.byte	23                              # 0x17
	.byte	24                              # 0x18
	.byte	25                              # 0x19
	.byte	26                              # 0x1a
	.byte	27                              # 0x1b
	.byte	28                              # 0x1c
	.byte	29                              # 0x1d
	.byte	30                              # 0x1e
	.byte	31                              # 0x1f
	.byte	32                              # 0x20
	.byte	33                              # 0x21
	.byte	34                              # 0x22
	.byte	35                              # 0x23
	.byte	36                              # 0x24
	.byte	37                              # 0x25
	.byte	38                              # 0x26
	.byte	39                              # 0x27
	.byte	40                              # 0x28
	.byte	41                              # 0x29
	.byte	42                              # 0x2a
	.byte	43                              # 0x2b
	.byte	44                              # 0x2c
	.byte	45                              # 0x2d
	.byte	46                              # 0x2e
	.byte	47                              # 0x2f
	.byte	48                              # 0x30
	.byte	49                              # 0x31
	.byte	50                              # 0x32
	.byte	51                              # 0x33
	.byte	52                              # 0x34
	.byte	53                              # 0x35
	.byte	54                              # 0x36
	.byte	55                              # 0x37
	.byte	56                              # 0x38
	.byte	57                              # 0x39
	.byte	58                              # 0x3a
	.byte	59                              # 0x3b
	.byte	60                              # 0x3c
	.byte	61                              # 0x3d
	.byte	62                              # 0x3e
	.byte	63                              # 0x3f
.LCPI113_10:
	.byte	0                               # 0x0
	.byte	255                             # 0xff
	.byte	2                               # 0x2
	.byte	253                             # 0xfd
	.byte	4                               # 0x4
	.byte	251                             # 0xfb
	.byte	6                               # 0x6
	.byte	249                             # 0xf9
	.byte	8                               # 0x8
	.byte	247                             # 0xf7
	.byte	10                              # 0xa
	.byte	245                             # 0xf5
	.byte	12                              # 0xc
	.byte	243                             # 0xf3
	.byte	14                              # 0xe
	.byte	241                             # 0xf1
	.byte	16                              # 0x10
	.byte	239                             # 0xef
	.byte	18                              # 0x12
	.byte	237                             # 0xed
	.byte	20                              # 0x14
	.byte	235                             # 0xeb
	.byte	22                              # 0x16
	.byte	233                             # 0xe9
	.byte	24                              # 0x18
	.byte	231                             # 0xe7
	.byte	26                              # 0x1a
	.byte	229                             # 0xe5
	.byte	28                              # 0x1c
	.byte	227                             # 0xe3
	.byte	30                              # 0x1e
	.byte	225                             # 0xe1
	.byte	32                              # 0x20
	.byte	223                             # 0xdf
	.byte	34                              # 0x22
	.byte	221                             # 0xdd
	.byte	36                              # 0x24
	.byte	219                             # 0xdb
	.byte	38                              # 0x26
	.byte	217                             # 0xd9
	.byte	40                              # 0x28
	.byte	215                             # 0xd7
	.byte	42                              # 0x2a
	.byte	213                             # 0xd5
	.byte	44                              # 0x2c
	.byte	211                             # 0xd3
	.byte	46                              # 0x2e
	.byte	209                             # 0xd1
	.byte	48                              # 0x30
	.byte	207                             # 0xcf
	.byte	50                              # 0x32
	.byte	205                             # 0xcd
	.byte	52                              # 0x34
	.byte	203                             # 0xcb
	.byte	54                              # 0x36
	.byte	201                             # 0xc9
	.byte	56                              # 0x38
	.byte	199                             # 0xc7
	.byte	58                              # 0x3a
	.byte	197                             # 0xc5
	.byte	60                              # 0x3c
	.byte	195                             # 0xc3
	.byte	62                              # 0x3e
	.byte	193                             # 0xc1
.LCPI113_11:
	.byte	1                               # 0x1
	.byte	254                             # 0xfe
	.byte	3                               # 0x3
	.byte	252                             # 0xfc
	.byte	5                               # 0x5
	.byte	250                             # 0xfa
	.byte	7                               # 0x7
	.byte	248                             # 0xf8
	.byte	9                               # 0x9
	.byte	246                             # 0xf6
	.byte	11                              # 0xb
	.byte	244                             # 0xf4
	.byte	13                              # 0xd
	.byte	242                             # 0xf2
	.byte	15                              # 0xf
	.byte	240                             # 0xf0
	.byte	17                              # 0x11
	.byte	238                             # 0xee
	.byte	19                              # 0x13
	.byte	236                             # 0xec
	.byte	21                              # 0x15
	.byte	234                             # 0xea
	.byte	23                              # 0x17
	.byte	232                             # 0xe8
	.byte	25                              # 0x19
	.byte	230                             # 0xe6
	.byte	27                              # 0x1b
	.byte	228                             # 0xe4
	.byte	29                              # 0x1d
	.byte	226                             # 0xe2
	.byte	31                              # 0x1f
	.byte	224                             # 0xe0
	.byte	33                              # 0x21
	.byte	222                             # 0xde
	.byte	35                              # 0x23
	.byte	220                             # 0xdc
	.byte	37                              # 0x25
	.byte	218                             # 0xda
	.byte	39                              # 0x27
	.byte	216                             # 0xd8
	.byte	41                              # 0x29
	.byte	214                             # 0xd6
	.byte	43                              # 0x2b
	.byte	212                             # 0xd4
	.byte	45                              # 0x2d
	.byte	210                             # 0xd2
	.byte	47                              # 0x2f
	.byte	208                             # 0xd0
	.byte	49                              # 0x31
	.byte	206                             # 0xce
	.byte	51                              # 0x33
	.byte	204                             # 0xcc
	.byte	53                              # 0x35
	.byte	202                             # 0xca
	.byte	55                              # 0x37
	.byte	200                             # 0xc8
	.byte	57                              # 0x39
	.byte	198                             # 0xc6
	.byte	59                              # 0x3b
	.byte	196                             # 0xc4
	.byte	61                              # 0x3d
	.byte	194                             # 0xc2
	.byte	63                              # 0x3f
	.byte	192                             # 0xc0
.LCPI113_12:
	.byte	1                               # 0x1
	.byte	253                             # 0xfd
	.byte	5                               # 0x5
	.byte	249                             # 0xf9
	.byte	9                               # 0x9
	.byte	245                             # 0xf5
	.byte	13                              # 0xd
	.byte	241                             # 0xf1
	.byte	17                              # 0x11
	.byte	237                             # 0xed
	.byte	21                              # 0x15
	.byte	233                             # 0xe9
	.byte	25                              # 0x19
	.byte	229                             # 0xe5
	.byte	29                              # 0x1d
	.byte	225                             # 0xe1
	.byte	33                              # 0x21
	.byte	221                             # 0xdd
	.byte	37                              # 0x25
	.byte	217                             # 0xd9
	.byte	41                              # 0x29
	.byte	213                             # 0xd5
	.byte	45                              # 0x2d
	.byte	209                             # 0xd1
	.byte	49                              # 0x31
	.byte	205                             # 0xcd
	.byte	53                              # 0x35
	.byte	201                             # 0xc9
	.byte	57                              # 0x39
	.byte	197                             # 0xc5
	.byte	61                              # 0x3d
	.byte	193                             # 0xc1
	.byte	65                              # 0x41
	.byte	189                             # 0xbd
	.byte	69                              # 0x45
	.byte	185                             # 0xb9
	.byte	73                              # 0x49
	.byte	181                             # 0xb5
	.byte	77                              # 0x4d
	.byte	177                             # 0xb1
	.byte	81                              # 0x51
	.byte	173                             # 0xad
	.byte	85                              # 0x55
	.byte	169                             # 0xa9
	.byte	89                              # 0x59
	.byte	165                             # 0xa5
	.byte	93                              # 0x5d
	.byte	161                             # 0xa1
	.byte	97                              # 0x61
	.byte	157                             # 0x9d
	.byte	101                             # 0x65
	.byte	153                             # 0x99
	.byte	105                             # 0x69
	.byte	149                             # 0x95
	.byte	109                             # 0x6d
	.byte	145                             # 0x91
	.byte	113                             # 0x71
	.byte	141                             # 0x8d
	.byte	117                             # 0x75
	.byte	137                             # 0x89
	.byte	121                             # 0x79
	.byte	133                             # 0x85
	.byte	125                             # 0x7d
	.byte	129                             # 0x81
.LCPI113_13:
	.short	0                               # 0x0
	.short	65535                           # 0xffff
	.short	65534                           # 0xfffe
	.short	65533                           # 0xfffd
	.short	65532                           # 0xfffc
	.short	65531                           # 0xfffb
	.short	65530                           # 0xfffa
	.short	65529                           # 0xfff9
	.short	65528                           # 0xfff8
	.short	65527                           # 0xfff7
	.short	65526                           # 0xfff6
	.short	65525                           # 0xfff5
	.short	65524                           # 0xfff4
	.short	65523                           # 0xfff3
	.short	65522                           # 0xfff2
	.short	65521                           # 0xfff1
	.short	65520                           # 0xfff0
	.short	65519                           # 0xffef
	.short	65518                           # 0xffee
	.short	65517                           # 0xffed
	.short	65516                           # 0xffec
	.short	65515                           # 0xffeb
	.short	65514                           # 0xffea
	.short	65513                           # 0xffe9
	.short	65512                           # 0xffe8
	.short	65511                           # 0xffe7
	.short	65510                           # 0xffe6
	.short	65509                           # 0xffe5
	.short	65508                           # 0xffe4
	.short	65507                           # 0xffe3
	.short	65506                           # 0xffe2
	.short	65505                           # 0xffe1
.LCPI113_14:
	.short	0                               # 0x0
	.short	100                             # 0x64
	.short	200                             # 0xc8
	.short	300                             # 0x12c
	.short	400                             # 0x190
	.short	500                             # 0x1f4
	.short	600                             # 0x258
	.short	700                             # 0x2bc
	.short	800                             # 0x320
	.short	900                             # 0x384
	.short	1000                            # 0x3e8
	.short	1100                            # 0x44c
	.short	1200                            # 0x4b0
	.short	1300                            # 0x514
	.short	1400                            # 0x578
	.short	1500                            # 0x5dc
	.short	1600                            # 0x640
	.short	1700                            # 0x6a4
	.short	1800                            # 0x708
	.short	1900                            # 0x76c
	.short	2000                            # 0x7d0
	.short	2100                            # 0x834
	.short	2200                            # 0x898
	.short	2300                            # 0x8fc
	.short	2400                            # 0x960
	.short	2500                            # 0x9c4
	.short	2600                            # 0xa28
	.short	2700                            # 0xa8c
	.short	2800                            # 0xaf0
	.short	2900                            # 0xb54
	.short	3000                            # 0xbb8
	.short	3100                            # 0xc1c
.LCPI113_15:
	.short	0                               # 0x0
	.short	99                              # 0x63
	.short	198                             # 0xc6
	.short	297                             # 0x129
	.short	396                             # 0x18c
	.short	495                             # 0x1ef
	.short	594                             # 0x252
	.short	693                             # 0x2b5
	.short	792                             # 0x318
	.short	891                             # 0x37b
	.short	990                             # 0x3de
	.short	1089                            # 0x441
	.short	1188                            # 0x4a4
	.short	1287                            # 0x507
	.short	1386                            # 0x56a
	.short	1485                            # 0x5cd
	.short	1584                            # 0x630
	.short	1683                            # 0x693
	.short	1782                            # 0x6f6
	.short	1881                            # 0x759
	.short	1980                            # 0x7bc
	.short	2079                            # 0x81f
	.short	2178                            # 0x882
	.short	2277                            # 0x8e5
	.short	2376                            # 0x948
	.short	2475                            # 0x9ab
	.short	2574                            # 0xa0e
	.short	2673                            # 0xa71
	.short	2772                            # 0xad4
	.short	2871                            # 0xb37
	.short	2970                            # 0xb9a
	.short	3069                            # 0xbfd
.LCPI113_16:
	.short	32700                           # 0x7fbc
	.short	32835                           # 0x8043
	.short	32702                           # 0x7fbe
	.short	32833                           # 0x8041
	.short	32704                           # 0x7fc0
	.short	32831                           # 0x803f
	.short	32706                           # 0x7fc2
	.short	32829                           # 0x803d
	.short	32708                           # 0x7fc4
	.short	32827                           # 0x803b
	.short	32710                           # 0x7fc6
	.short	32825                           # 0x8039
	.short	32712                           # 0x7fc8
	.short	32823                           # 0x8037
	.short	32714                           # 0x7fca
	.short	32821                           # 0x8035
	.short	32716                           # 0x7fcc
	.short	32819                           # 0x8033
	.short	32718                           # 0x7fce
	.short	32817                           # 0x8031
	.short	32720                           # 0x7fd0
	.short	32815                           # 0x802f
	.short	32722                           # 0x7fd2
	.short	32813                           # 0x802d
	.short	32724                           # 0x7fd4
	.short	32811                           # 0x802b
	.short	32726                           # 0x7fd6
	.short	32809                           # 0x8029
	.short	32728                           # 0x7fd8
	.short	32807                           # 0x8027
	.short	32730                           # 0x7fda
	.short	32805                           # 0x8025
.LCPI113_17:
	.short	1                               # 0x1
	.short	65534                           # 0xfffe
	.short	3                               # 0x3
	.short	65532                           # 0xfffc
	.short	5                               # 0x5
	.short	65530                           # 0xfffa
	.short	7                               # 0x7
	.short	65528                           # 0xfff8
	.short	9                               # 0x9
	.short	65526                           # 0xfff6
	.short	11                              # 0xb
	.short	65524                           # 0xfff4
	.short	13                              # 0xd
	.short	65522                           # 0xfff2
	.short	15                              # 0xf
	.short	65520                           # 0xfff0
	.short	17                              # 0x11
	.short	65518                           # 0xffee
	.short	19                              # 0x13
	.short	65516                           # 0xffec
	.short	21                              # 0x15
	.short	65514                           # 0xffea
	.short	23                              # 0x17
	.short	65512                           # 0xffe8
	.short	25                              # 0x19
	.short	65510                           # 0xffe6
	.short	27                              # 0x1b
	.short	65508                           # 0xffe4
	.short	29                              # 0x1d
	.short	65506                           # 0xffe2
	.short	31                              # 0x1f
	.short	65504                           # 0xffe0
.LCPI113_18:
	.short	32701                           # 0x7fbd
	.short	32833                           # 0x8041
	.short	32705                           # 0x7fc1
	.short	32829                           # 0x803d
	.short	32709                           # 0x7fc5
	.short	32825                           # 0x8039
	.short	32713                           # 0x7fc9
	.short	32821                           # 0x8035
	.short	32717                           # 0x7fcd
	.short	32817                           # 0x8031
	.short	32721                           # 0x7fd1
	.short	32813                           # 0x802d
	.short	32725                           # 0x7fd5
	.short	32809                           # 0x8029
	.short	32729                           # 0x7fd9
	.short	32805                           # 0x8025
	.short	32733                           # 0x7fdd
	.short	32801                           # 0x8021
	.short	32737                           # 0x7fe1
	.short	32797                           # 0x801d
	.short	32741                           # 0x7fe5
	.short	32793                           # 0x8019
	.short	32745                           # 0x7fe9
	.short	32789                           # 0x8015
	.short	32749                           # 0x7fed
	.short	32785                           # 0x8011
	.short	32753                           # 0x7ff1
	.short	32781                           # 0x800d
	.short	32757                           # 0x7ff5
	.short	32777                           # 0x8009
	.short	32761                           # 0x7ff9
	.short	32773                           # 0x8005
.LCPI113_19:
	.quad	317827579919                    # 0x4a0000000f
	.quad	266287972365                    # 0x3e0000000d
	.quad	214748364811                    # 0x320000000b
	.quad	206158430217                    # 0x3000000009
	.quad	154618822663                    # 0x2400000007
	.quad	103079215109                    # 0x1800000005
	.quad	-51539607549                    # 0xfffffff400000003
	.quad	1                               # 0x1
.LCPI113_20:
	.quad	60129542159                     # 0xe0000000f
	.quad	51539607625                     # 0xc00000049
	.quad	42949673021                     # 0xa0000003d
	.quad	34359738427                     # 0x80000003b
	.quad	25769803823                     # 0x60000002f
	.quad	-17179869149                    # 0xfffffffc00000023
	.quad	8589934615                      # 0x200000017
	.quad	4294967307                      # 0x10000000b
.LCPI113_21:
	.long	30                              # 0x1e
	.long	88                              # 0x58
	.long	86                              # 0x56
	.long	74                              # 0x4a
	.long	72                              # 0x48
	.long	60                              # 0x3c
	.long	68                              # 0x44
	.long	56                              # 0x38
	.long	54                              # 0x36
	.long	42                              # 0x2a
	.long	40                              # 0x28
	.long	20                              # 0x14
	.long	26                              # 0x1a
	.long	4294967286                      # 0xfffffff6
	.long	12                              # 0xc
	.long	1                               # 0x1
.LCPI113_22:
	.quad	0x401c000000000000              # double 7
	.quad	0x4042000000000000              # double 36
	.quad	0x4014000000000000              # double 5
	.quad	0x4038000000000000              # double 24
	.quad	0x4008000000000000              # double 3
	.quad	0x4028000000000000              # double 12
	.quad	0x3ff0000000000000              # double 1
	.quad	0x0000000000000000              # double 0
.LCPI113_23:
	.quad	0x4047800000000000              # double 47
	.quad	0x4018000000000000              # double 6
	.quad	0x4041800000000000              # double 35
	.quad	0x4010000000000000              # double 4
	.quad	0x4037000000000000              # double 23
	.quad	0x4000000000000000              # double 2
	.quad	0x4026000000000000              # double 11
	.quad	0x3ff0000000000000              # double 1
.LCPI113_24:
	.quad	0x404b000000000000              # double 54
	.quad	0x4045000000000000              # double 42
	.quad	0x4044000000000000              # double 40
	.quad	0x403c000000000000              # double 28
	.quad	0x403a000000000000              # double 26
	.quad	0x402c000000000000              # double 14
	.quad	0x4028000000000000              # double 12
	.quad	0x3ff0000000000000              # double 1
.LCPI113_25:
	.quad	7                               # 0x7
	.quad	36                              # 0x24
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	3                               # 0x3
	.quad	12                              # 0xc
	.quad	1                               # 0x1
	.quad	0                               # 0x0
.LCPI113_26:
	.quad	47                              # 0x2f
	.quad	6                               # 0x6
	.quad	35                              # 0x23
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	2                               # 0x2
	.quad	11                              # 0xb
	.quad	1                               # 0x1
.LCPI113_27:
	.quad	54                              # 0x36
	.quad	42                              # 0x2a
	.quad	40                              # 0x28
	.quad	28                              # 0x1c
	.quad	26                              # 0x1a
	.quad	14                              # 0xe
	.quad	12                              # 0xc
	.quad	1                               # 0x1
.LCPI113_28:
	.quad	7                               # 0x7
	.quad	36                              # 0x24
	.quad	5                               # 0x5
	.quad	24                              # 0x18
	.quad	3                               # 0x3
	.quad	-12                             # 0xfffffffffffffff4
	.quad	1                               # 0x1
	.quad	0                               # 0x0
.LCPI113_29:
	.quad	47                              # 0x2f
	.quad	6                               # 0x6
	.quad	35                              # 0x23
	.quad	4                               # 0x4
	.quad	23                              # 0x17
	.quad	2                               # 0x2
	.quad	-11                             # 0xfffffffffffffff5
	.quad	1                               # 0x1
.LCPI113_30:
	.quad	7                               # 0x7
	.quad	6                               # 0x6
	.quad	5                               # 0x5
	.quad	4                               # 0x4
	.quad	3                               # 0x3
	.quad	-12                             # 0xfffffffffffffff4
	.quad	-11                             # 0xfffffffffffffff5
	.quad	0                               # 0x0
	.text
	.globl	avx_test_op2
	.p2align	4, 0x90
	.type	avx_test_op2,@function
avx_test_op2:                           # @avx_test_op2
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$448, %rsp                      # imm = 0x1C0
	vmovaps	.LCPI113_0(%rip), %zmm0         # zmm0 = [1.5E+1,7.4E+1,1.3E+1,6.2E+1,1.1E+1,5.0E+1,9.0E+0,4.8E+1,7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_1(%rip), %zmm0         # zmm0 = [1.5E+1,1.4E+1,7.3E+1,1.2E+1,6.1E+1,1.0E+1,5.9E+1,8.0E+0,4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_2(%rip), %zmm0         # zmm0 = [3.0E+1,8.8E+1,8.6E+1,7.4E+1,7.2E+1,6.0E+1,6.8E+1,5.6E+1,5.4E+1,4.2E+1,4.0E+1,2.8E+1,2.6E+1,1.4E+1,1.2E+1,1.0E+0]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddps_ymm
	vmovaps	320(%rsp), %zmm0
	vsubps	256(%rsp), %zmm0, %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubps_ymm
	vmovaps	320(%rsp), %zmm0
	vmulps	256(%rsp), %zmm0, %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulps_ymm
	vmovaps	320(%rsp), %zmm0
	vdivps	256(%rsp), %zmm0, %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivps_ymm
	vmovaps	320(%rsp), %zmm0
	vminps	256(%rsp), %zmm0, %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminps_ymm
	vmovaps	256(%rsp), %zmm0
	vmaxps	320(%rsp), %zmm0, %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxps_ymm
	vmovaps	.LCPI113_3(%rip), %zmm0         # zmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_4(%rip), %zmm0         # zmm0 = [20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_5(%rip), %zmm0         # zmm0 = [20,20,20,20,28,28,28,28,20,20,20,20,44,44,44,44]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorps_ymm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vxorpd_ymmd
	vmovaps	.LCPI113_3(%rip), %zmm0         # zmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_4(%rip), %zmm0         # zmm0 = [20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_6(%rip), %zmm0         # zmm0 = [0,1,2,3,0,1,2,3,8,9,10,11,0,1,2,3]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vandps_zmm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vandps_ymm
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpandd_zmmi
	xorl	%eax, %eax
	vcvtsi2ss	%eax, %xmm1, %xmm0
	leal	20(%rax), %ecx
	vcvtsi2ss	%ecx, %xmm1, %xmm1
	vmovss	%xmm0, 320(%rsp,%rax,4)
	vmovss	%xmm1, 256(%rsp,%rax,4)
	xorl	%ecx, %ecx
	andl	$3, %ecx
	jmpq	*.LJTI113_0(,%rcx,8)
.LBB113_1:
	vcvtsi2ss	%eax, %xmm2, %xmm0
	leal	20(%rax), %ecx
	vcvtsi2ss	%ecx, %xmm2, %xmm1
	vmovss	%xmm0, 320(%rsp,%rax,4)
	vmovss	%xmm1, 256(%rsp,%rax,4)
	movl	%eax, %ecx
	andl	$3, %ecx
	jmpq	*.LJTI113_0(,%rcx,8)
.LBB113_2:
	vmovss	%xmm0, 192(%rsp,%rax,4)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB113_1
	jmp	.LBB113_8
.LBB113_3:
	movl	252(%rsp,%rax,4), %ecx
	jmp	.LBB113_6
.LBB113_4:
	movl	316(%rsp,%rax,4), %ecx
	jmp	.LBB113_6
.LBB113_5:
	movl	248(%rsp,%rax,4), %ecx
.LBB113_6:
	movl	%ecx, 192(%rsp,%rax,4)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB113_1
.LBB113_8:
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vunpcklps_ymm
	vmovaps	.LCPI113_7(%rip), %zmm0         # zmm0 = [0,255,254,253,252,251,250,249,248,247,246,245,244,243,242,241,240,239,238,237,236,235,234,233,232,231,230,229,228,227,226,225,224,223,222,221,220,219,218,217,216,215,214,213,212,211,210,209,208,207,206,205,204,203,202,201,200,199,198,197,196,195,194,193]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_8(%rip), %zmm0         # zmm0 = [0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100,102,104,106,108,110,112,114,116,118,120,122,124,126]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_9(%rip), %zmm0         # zmm0 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddb_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddb_ymmi
	vmovaps	.LCPI113_10(%rip), %zmm0        # zmm0 = [0,255,2,253,4,251,6,249,8,247,10,245,12,243,14,241,16,239,18,237,20,235,22,233,24,231,26,229,28,227,30,225,32,223,34,221,36,219,38,217,40,215,42,213,44,211,46,209,48,207,50,205,52,203,54,201,56,199,58,197,60,195,62,193]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_11(%rip), %zmm0        # zmm0 = [1,254,3,252,5,250,7,248,9,246,11,244,13,242,15,240,17,238,19,236,21,234,23,232,25,230,27,228,29,226,31,224,33,222,35,220,37,218,39,216,41,214,43,212,45,210,47,208,49,206,51,204,53,202,55,200,57,198,59,196,61,194,63,192]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_12(%rip), %zmm0        # zmm0 = [1,253,5,249,9,245,13,241,17,237,21,233,25,229,29,225,33,221,37,217,41,213,45,209,49,205,53,201,57,197,61,193,65,189,69,185,73,181,77,177,81,173,85,169,89,165,93,161,97,157,101,153,105,149,109,145,113,141,117,137,121,133,125,129]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_ymmi
	vmovaps	.LCPI113_13(%rip), %zmm0        # zmm0 = [0,65535,65534,65533,65532,65531,65530,65529,65528,65527,65526,65525,65524,65523,65522,65521,65520,65519,65518,65517,65516,65515,65514,65513,65512,65511,65510,65509,65508,65507,65506,65505]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_14(%rip), %zmm0        # zmm0 = [0,100,200,300,400,500,600,700,800,900,1000,1100,1200,1300,1400,1500,1600,1700,1800,1900,2000,2100,2200,2300,2400,2500,2600,2700,2800,2900,3000,3100]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_15(%rip), %zmm0        # zmm0 = [0,99,198,297,396,495,594,693,792,891,990,1089,1188,1287,1386,1485,1584,1683,1782,1881,1980,2079,2178,2277,2376,2475,2574,2673,2772,2871,2970,3069]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddw_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddw_ymmi
	vmovaps	.LCPI113_16(%rip), %zmm0        # zmm0 = [32700,32835,32702,32833,32704,32831,32706,32829,32708,32827,32710,32825,32712,32823,32714,32821,32716,32819,32718,32817,32720,32815,32722,32813,32724,32811,32726,32809,32728,32807,32730,32805]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_17(%rip), %zmm0        # zmm0 = [1,65534,3,65532,5,65530,7,65528,9,65526,11,65524,13,65522,15,65520,17,65518,19,65516,21,65514,23,65512,25,65510,27,65508,29,65506,31,65504]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_18(%rip), %zmm0        # zmm0 = [32701,32833,32705,32829,32709,32825,32713,32821,32717,32817,32721,32813,32725,32809,32729,32805,32733,32801,32737,32797,32741,32793,32745,32789,32749,32785,32753,32781,32757,32777,32761,32773]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddsb_ymmi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB113_9:                              # =>This Inner Loop Header: Depth=1
	movw	%ax, 320(%rsp,%rax,2)
	movw	%ax, 256(%rsp,%rax,2)
	movl	%eax, %ecx
	imull	%eax, %ecx
	movw	%cx, 192(%rsp,%rax,2)
	addq	$1, %rax
	cmpq	$32, %rax
	jne	.LBB113_9
# %bb.10:
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmullw_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmullw_ymmi
	vmovaps	.LCPI113_19(%rip), %zmm0        # zmm0 = [317827579919,266287972365,214748364811,206158430217,154618822663,103079215109,18446744022169944067,1]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_20(%rip), %zmm0        # zmm0 = [60129542159,51539607625,42949673021,34359738427,25769803823,18446744056529682467,8589934615,4294967307]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_21(%rip), %zmm0        # zmm0 = [30,88,86,74,72,60,68,56,54,42,40,20,26,4294967286,12,1]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddd_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddd_ymmi
	vmovdqa64	320(%rsp), %zmm0
	vpminsd	256(%rsp), %zmm0, %zmm0
	vmovdqa64	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsd_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsd_ymmi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB113_11:                             # =>This Inner Loop Header: Depth=1
	movslq	320(%rsp,%rax,8), %rcx
	movslq	256(%rsp,%rax,8), %rdx
	imulq	%rcx, %rdx
	movq	%rdx, 192(%rsp,%rax,8)
	addq	$1, %rax
	cmpq	$8, %rax
	jne	.LBB113_11
# %bb.12:
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmuldq_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmuldq_ymmi
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB113_13:                             # =>This Inner Loop Header: Depth=1
	movl	256(%rsp,%rax,4), %ecx
	imull	320(%rsp,%rax,4), %ecx
	movl	%ecx, 192(%rsp,%rax,4)
	addq	$1, %rax
	cmpq	$16, %rax
	jne	.LBB113_13
# %bb.14:
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmulld_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpmulld_ymmi
	vmovaps	.LCPI113_22(%rip), %zmm0        # zmm0 = [7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_23(%rip), %zmm0        # zmm0 = [4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_24(%rip), %zmm0        # zmm0 = [5.4E+1,4.2E+1,4.0E+1,2.8E+1,2.6E+1,1.4E+1,1.2E+1,1.0E+0]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vaddpd_ymmd
	vmovapd	320(%rsp), %zmm0
	vsubpd	256(%rsp), %zmm0, %zmm0
	vmovapd	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vsubpd_ymmd
	vmovapd	320(%rsp), %zmm0
	vmulpd	256(%rsp), %zmm0, %zmm0
	vmovapd	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmulpd_ymmd
	vmovapd	320(%rsp), %zmm0
	vdivpd	256(%rsp), %zmm0, %zmm0
	vmovapd	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vdivpd_ymmd
	vmovapd	256(%rsp), %zmm0
	vmaxpd	320(%rsp), %zmm0, %zmm0
	vmovapd	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vmaxpd_ymmd
	vmovapd	320(%rsp), %zmm0
	vminpd	256(%rsp), %zmm0, %zmm0
	vmovapd	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminpd_zmmd
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vminpd_ymmd
	vmovaps	.LCPI113_25(%rip), %zmm0        # zmm0 = [7,36,5,24,3,12,1,0]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_26(%rip), %zmm0        # zmm0 = [47,6,35,4,23,2,11,1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_27(%rip), %zmm0        # zmm0 = [54,42,40,28,26,14,12,1]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddq_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpaddq_ymmi
	vmovaps	.LCPI113_28(%rip), %zmm0        # zmm0 = [7,36,5,24,3,18446744073709551604,1,0]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI113_29(%rip), %zmm0        # zmm0 = [47,6,35,4,23,2,18446744073709551605,1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	.LCPI113_30(%rip), %zmm0        # zmm0 = [7,6,5,4,3,18446744073709551604,18446744073709551605,0]
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsq_zmmi
	vmovaps	192(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vpminsq_ymmi
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end113:
	.size	avx_test_op2, .Lfunc_end113-avx_test_op2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI113_0:
	.quad	.LBB113_2
	.quad	.LBB113_3
	.quad	.LBB113_4
	.quad	.LBB113_5
                                        # -- End function
	.text
	.globl	vfmaddps_zmm                    # -- Begin function vfmaddps_zmm
	.p2align	4, 0x90
	.type	vfmaddps_zmm,@function
vfmaddps_zmm:                           # @vfmaddps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	vmovaps	16(%rbp), %zmm1
	vmovaps	80(%rbp), %zmm0
	vfmadd213ps	144(%rbp), %zmm1, %zmm0 # zmm0 = (zmm1 * zmm0) + mem
	vmovss	208(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.1:
	leaq	208(%rbp), %rax
	vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	vmovss	4(%rax), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.2:
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vmovss	8(%rax), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.3:
	vpermilps	$255, %xmm0, %xmm1      # xmm1 = xmm0[3,3,3,3]
	vmovss	12(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.4:
	vextractf128	$1, %ymm0, %xmm1
	vmovss	16(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.5:
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vmovss	20(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.6:
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vmovss	24(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.7:
	vpermilps	$255, %xmm1, %xmm1      # xmm1 = xmm1[3,3,3,3]
	vmovss	28(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.8:
	vextractf32x4	$2, %zmm0, %xmm1
	vmovss	32(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.9:
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vmovss	36(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.10:
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vmovss	40(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.11:
	vpermilps	$255, %xmm1, %xmm1      # xmm1 = xmm1[3,3,3,3]
	vmovss	44(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.12:
	vextractf32x4	$3, %zmm0, %xmm0
	vmovss	48(%rax), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.13:
	vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	vmovss	52(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.14:
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vmovss	56(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.15:
	vpermilps	$255, %xmm0, %xmm0      # xmm0 = xmm0[3,3,3,3]
	vmovss	60(%rax), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB114_17
	jp	.LBB114_17
# %bb.16:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.LBB114_17:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.112, %edi
	vzeroupper
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end114:
	.size	vfmaddps_zmm, .Lfunc_end114-vfmaddps_zmm
	.cfi_endproc
                                        # -- End function
	.globl	vfnmaddps_zmm                   # -- Begin function vfnmaddps_zmm
	.p2align	4, 0x90
	.type	vfnmaddps_zmm,@function
vfnmaddps_zmm:                          # @vfnmaddps_zmm
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$64, %rsp
	vmovaps	16(%rbp), %zmm1
	vmovaps	80(%rbp), %zmm0
	vfnmadd213ps	144(%rbp), %zmm1, %zmm0 # zmm0 = -(zmm1 * zmm0) + mem
	vmovss	208(%rbp), %xmm1                # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.1:
	leaq	208(%rbp), %rax
	vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	vmovss	4(%rax), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.2:
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vmovss	8(%rax), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.3:
	vpermilps	$255, %xmm0, %xmm1      # xmm1 = xmm0[3,3,3,3]
	vmovss	12(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.4:
	vextractf128	$1, %ymm0, %xmm1
	vmovss	16(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.5:
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vmovss	20(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.6:
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vmovss	24(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.7:
	vpermilps	$255, %xmm1, %xmm1      # xmm1 = xmm1[3,3,3,3]
	vmovss	28(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.8:
	vextractf32x4	$2, %zmm0, %xmm1
	vmovss	32(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.9:
	vmovshdup	%xmm1, %xmm2            # xmm2 = xmm1[1,1,3,3]
	vmovss	36(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.10:
	vpermilpd	$1, %xmm1, %xmm2        # xmm2 = xmm1[1,0]
	vmovss	40(%rax), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	vucomiss	%xmm2, %xmm3
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.11:
	vpermilps	$255, %xmm1, %xmm1      # xmm1 = xmm1[3,3,3,3]
	vmovss	44(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.12:
	vextractf32x4	$3, %zmm0, %xmm0
	vmovss	48(%rax), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.13:
	vmovshdup	%xmm0, %xmm1            # xmm1 = xmm0[1,1,3,3]
	vmovss	52(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.14:
	vpermilpd	$1, %xmm0, %xmm1        # xmm1 = xmm0[1,0]
	vmovss	56(%rax), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	vucomiss	%xmm1, %xmm2
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.15:
	vpermilps	$255, %xmm0, %xmm0      # xmm0 = xmm0[3,3,3,3]
	vmovss	60(%rax), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	vucomiss	%xmm0, %xmm1
	jne	.LBB115_17
	jp	.LBB115_17
# %bb.16:
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	vzeroupper
	retq
.LBB115_17:
	.cfi_def_cfa %rbp, 16
	movl	$.Lstr.113, %edi
	vzeroupper
	callq	puts
	movl	$1, %edi
	callq	exit
.Lfunc_end115:
	.size	vfnmaddps_zmm, .Lfunc_end115-vfnmaddps_zmm
	.cfi_endproc
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	6                               # -- Begin function avx_test_op3
.LCPI116_0:
	.long	0x41700000                      # float 15
	.long	0x42940000                      # float 74
	.long	0x41500000                      # float 13
	.long	0x42780000                      # float 62
	.long	0x41300000                      # float 11
	.long	0x42480000                      # float 50
	.long	0x41100000                      # float 9
	.long	0x42400000                      # float 48
	.long	0x40e00000                      # float 7
	.long	0x42100000                      # float 36
	.long	0x40a00000                      # float 5
	.long	0x41c00000                      # float 24
	.long	0x40400000                      # float 3
	.long	0x41400000                      # float 12
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
.LCPI116_1:
	.long	0x41700000                      # float 15
	.long	0x41600000                      # float 14
	.long	0x42920000                      # float 73
	.long	0x41400000                      # float 12
	.long	0x42740000                      # float 61
	.long	0x41200000                      # float 10
	.long	0x426c0000                      # float 59
	.long	0x41000000                      # float 8
	.long	0x423c0000                      # float 47
	.long	0x40c00000                      # float 6
	.long	0x420c0000                      # float 35
	.long	0x40800000                      # float 4
	.long	0x41b80000                      # float 23
	.long	0x40000000                      # float 2
	.long	0x41300000                      # float 11
	.long	0x3f800000                      # float 1
.LCPI116_2:
	.long	0x00000000                      # float 0
	.long	0x40800000                      # float 4
	.long	0x427c0000                      # float 63
	.long	0x42b80000                      # float 92
	.long	0x42820000                      # float 65
	.long	0x41600000                      # float 14
	.long	0x421c0000                      # float 39
	.long	0x41980000                      # float 19
	.long	0x43eb0000                      # float 470
	.long	0x40a00000                      # float 5
	.long	0x40400000                      # float 3
	.long	0x42300000                      # float 44
	.long	0x40000000                      # float 2
	.long	0x41b80000                      # float 23
	.long	0x41200000                      # float 10
	.long	0x41300000                      # float 11
.LCPI116_3:
	.long	0x43610000                      # float 225
	.long	0x44820000                      # float 1040
	.long	0x447d0000                      # float 1012
	.long	0x44510000                      # float 836
	.long	0x44380000                      # float 736
	.long	0x44008000                      # float 514
	.long	0x440e8000                      # float 570
	.long	0x43c98000                      # float 403
	.long	0x4447c000                      # float 799
	.long	0x435d0000                      # float 221
	.long	0x43320000                      # float 178
	.long	0x430c0000                      # float 140
	.long	0x428e0000                      # float 71
	.long	0x423c0000                      # float 47
	.long	0x41a80000                      # float 21
	.long	0x41300000                      # float 11
.LCPI116_4:
	.long	0xc3610000                      # float -225
	.long	0xc4810000                      # float -1032
	.long	0xc45d8000                      # float -886
	.long	0xc4230000                      # float -652
	.long	0xc4178000                      # float -606
	.long	0xc3f30000                      # float -486
	.long	0xc3f60000                      # float -492
	.long	0xc3b68000                      # float -365
	.long	0x430d0000                      # float 141
	.long	0xc3530000                      # float -211
	.long	0xc32c0000                      # float -172
	.long	0xc2500000                      # float -52
	.long	0xc2860000                      # float -67
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.long	0x41300000                      # float 11
	.text
	.globl	avx_test_op3
	.p2align	4, 0x90
	.type	avx_test_op3,@function
avx_test_op3:                           # @avx_test_op3
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$576, %rsp                      # imm = 0x240
	vmovaps	.LCPI116_0(%rip), %zmm0         # zmm0 = [1.5E+1,7.4E+1,1.3E+1,6.2E+1,1.1E+1,5.0E+1,9.0E+0,4.8E+1,7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 448(%rsp)
	vmovaps	.LCPI116_1(%rip), %zmm0         # zmm0 = [1.5E+1,1.4E+1,7.3E+1,1.2E+1,6.1E+1,1.0E+1,5.9E+1,8.0E+0,4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 384(%rsp)
	vmovaps	.LCPI116_2(%rip), %zmm0         # zmm0 = [0.0E+0,4.0E+0,6.3E+1,9.2E+1,6.5E+1,1.4E+1,3.9E+1,1.9E+1,4.7E+2,5.0E+0,3.0E+0,4.4E+1,2.0E+0,2.3E+1,1.0E+1,1.1E+1]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI116_3(%rip), %zmm0         # zmm0 = [2.25E+2,1.04E+3,1.012E+3,8.36E+2,7.36E+2,5.14E+2,5.7E+2,4.03E+2,7.99E+2,2.21E+2,1.78E+2,1.4E+2,7.1E+1,4.7E+1,2.1E+1,1.1E+1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	384(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	448(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vfmaddps_zmm
	vmovaps	.LCPI116_0(%rip), %zmm0         # zmm0 = [1.5E+1,7.4E+1,1.3E+1,6.2E+1,1.1E+1,5.0E+1,9.0E+0,4.8E+1,7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 448(%rsp)
	vmovaps	.LCPI116_1(%rip), %zmm0         # zmm0 = [1.5E+1,1.4E+1,7.3E+1,1.2E+1,6.1E+1,1.0E+1,5.9E+1,8.0E+0,4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 384(%rsp)
	vmovaps	.LCPI116_2(%rip), %zmm0         # zmm0 = [0.0E+0,4.0E+0,6.3E+1,9.2E+1,6.5E+1,1.4E+1,3.9E+1,1.9E+1,4.7E+2,5.0E+0,3.0E+0,4.4E+1,2.0E+0,2.3E+1,1.0E+1,1.1E+1]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI116_4(%rip), %zmm0         # zmm0 = [-2.25E+2,-1.032E+3,-8.86E+2,-6.52E+2,-6.06E+2,-4.86E+2,-4.92E+2,-3.65E+2,1.41E+2,-2.11E+2,-1.72E+2,-5.2E+1,-6.7E+1,-1.0E+0,-1.0E+0,1.1E+1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	384(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	448(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vfnmaddps_zmm
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end116:
	.size	avx_test_op3, .Lfunc_end116-avx_test_op3
	.cfi_endproc
                                        # -- End function
	.section	.rodata,"a",@progbits
	.p2align	6                               # -- Begin function main
.LCPI117_0:
	.long	0x41700000                      # float 15
	.long	0x42940000                      # float 74
	.long	0x41500000                      # float 13
	.long	0x42780000                      # float 62
	.long	0x41300000                      # float 11
	.long	0x42480000                      # float 50
	.long	0x41100000                      # float 9
	.long	0x42400000                      # float 48
	.long	0x40e00000                      # float 7
	.long	0x42100000                      # float 36
	.long	0x40a00000                      # float 5
	.long	0x41c00000                      # float 24
	.long	0x40400000                      # float 3
	.long	0x41400000                      # float 12
	.long	0x3f800000                      # float 1
	.long	0x00000000                      # float 0
.LCPI117_1:
	.long	0x41700000                      # float 15
	.long	0x41600000                      # float 14
	.long	0x42920000                      # float 73
	.long	0x41400000                      # float 12
	.long	0x42740000                      # float 61
	.long	0x41200000                      # float 10
	.long	0x426c0000                      # float 59
	.long	0x41000000                      # float 8
	.long	0x423c0000                      # float 47
	.long	0x40c00000                      # float 6
	.long	0x420c0000                      # float 35
	.long	0x40800000                      # float 4
	.long	0x41b80000                      # float 23
	.long	0x40000000                      # float 2
	.long	0x41300000                      # float 11
	.long	0x3f800000                      # float 1
.LCPI117_2:
	.long	0x00000000                      # float 0
	.long	0x40800000                      # float 4
	.long	0x427c0000                      # float 63
	.long	0x42b80000                      # float 92
	.long	0x42820000                      # float 65
	.long	0x41600000                      # float 14
	.long	0x421c0000                      # float 39
	.long	0x41980000                      # float 19
	.long	0x43eb0000                      # float 470
	.long	0x40a00000                      # float 5
	.long	0x40400000                      # float 3
	.long	0x42300000                      # float 44
	.long	0x40000000                      # float 2
	.long	0x41b80000                      # float 23
	.long	0x41200000                      # float 10
	.long	0x41300000                      # float 11
.LCPI117_3:
	.long	0x43610000                      # float 225
	.long	0x44820000                      # float 1040
	.long	0x447d0000                      # float 1012
	.long	0x44510000                      # float 836
	.long	0x44380000                      # float 736
	.long	0x44008000                      # float 514
	.long	0x440e8000                      # float 570
	.long	0x43c98000                      # float 403
	.long	0x4447c000                      # float 799
	.long	0x435d0000                      # float 221
	.long	0x43320000                      # float 178
	.long	0x430c0000                      # float 140
	.long	0x428e0000                      # float 71
	.long	0x423c0000                      # float 47
	.long	0x41a80000                      # float 21
	.long	0x41300000                      # float 11
.LCPI117_4:
	.long	0xc3610000                      # float -225
	.long	0xc4810000                      # float -1032
	.long	0xc45d8000                      # float -886
	.long	0xc4230000                      # float -652
	.long	0xc4178000                      # float -606
	.long	0xc3f30000                      # float -486
	.long	0xc3f60000                      # float -492
	.long	0xc3b68000                      # float -365
	.long	0x430d0000                      # float 141
	.long	0xc3530000                      # float -211
	.long	0xc32c0000                      # float -172
	.long	0xc2500000                      # float -52
	.long	0xc2860000                      # float -67
	.long	0xbf800000                      # float -1
	.long	0xbf800000                      # float -1
	.long	0x41300000                      # float 11
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	andq	$-64, %rsp
	subq	$576, %rsp                      # imm = 0x240
	callq	avx_test_op2
	vmovaps	.LCPI117_0(%rip), %zmm0         # zmm0 = [1.5E+1,7.4E+1,1.3E+1,6.2E+1,1.1E+1,5.0E+1,9.0E+0,4.8E+1,7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 448(%rsp)
	vmovaps	.LCPI117_1(%rip), %zmm0         # zmm0 = [1.5E+1,1.4E+1,7.3E+1,1.2E+1,6.1E+1,1.0E+1,5.9E+1,8.0E+0,4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 384(%rsp)
	vmovaps	.LCPI117_2(%rip), %zmm0         # zmm0 = [0.0E+0,4.0E+0,6.3E+1,9.2E+1,6.5E+1,1.4E+1,3.9E+1,1.9E+1,4.7E+2,5.0E+0,3.0E+0,4.4E+1,2.0E+0,2.3E+1,1.0E+1,1.1E+1]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI117_3(%rip), %zmm0         # zmm0 = [2.25E+2,1.04E+3,1.012E+3,8.36E+2,7.36E+2,5.14E+2,5.7E+2,4.03E+2,7.99E+2,2.21E+2,1.78E+2,1.4E+2,7.1E+1,4.7E+1,2.1E+1,1.1E+1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	384(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	448(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vfmaddps_zmm
	vmovaps	.LCPI117_0(%rip), %zmm0         # zmm0 = [1.5E+1,7.4E+1,1.3E+1,6.2E+1,1.1E+1,5.0E+1,9.0E+0,4.8E+1,7.0E+0,3.6E+1,5.0E+0,2.4E+1,3.0E+0,1.2E+1,1.0E+0,0.0E+0]
	vmovaps	%zmm0, 448(%rsp)
	vmovaps	.LCPI117_1(%rip), %zmm0         # zmm0 = [1.5E+1,1.4E+1,7.3E+1,1.2E+1,6.1E+1,1.0E+1,5.9E+1,8.0E+0,4.7E+1,6.0E+0,3.5E+1,4.0E+0,2.3E+1,2.0E+0,1.1E+1,1.0E+0]
	vmovaps	%zmm0, 384(%rsp)
	vmovaps	.LCPI117_2(%rip), %zmm0         # zmm0 = [0.0E+0,4.0E+0,6.3E+1,9.2E+1,6.5E+1,1.4E+1,3.9E+1,1.9E+1,4.7E+2,5.0E+0,3.0E+0,4.4E+1,2.0E+0,2.3E+1,1.0E+1,1.1E+1]
	vmovaps	%zmm0, 320(%rsp)
	vmovaps	.LCPI117_4(%rip), %zmm0         # zmm0 = [-2.25E+2,-1.032E+3,-8.86E+2,-6.52E+2,-6.06E+2,-4.86E+2,-4.92E+2,-3.65E+2,1.41E+2,-2.11E+2,-1.72E+2,-5.2E+1,-6.7E+1,-1.0E+0,-1.0E+0,1.1E+1]
	vmovaps	%zmm0, 256(%rsp)
	vmovaps	256(%rsp), %zmm0
	vmovaps	%zmm0, 192(%rsp)
	vmovaps	320(%rsp), %zmm0
	vmovaps	%zmm0, 128(%rsp)
	vmovaps	384(%rsp), %zmm0
	vmovaps	%zmm0, 64(%rsp)
	vmovaps	448(%rsp), %zmm0
	vmovaps	%zmm0, (%rsp)
	vzeroupper
	callq	vfnmaddps_zmm
	movl	$.Lstr.114, %edi
	callq	puts
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end117:
	.size	main, .Lfunc_end117-main
	.cfi_endproc
                                        # -- End function
	.type	.Lstr,@object                   # @str
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr:
	.asciz	">> AVX Failed vaddps_zmm"
	.size	.Lstr, 25

	.type	.Lstr.58,@object                # @str.58
.Lstr.58:
	.asciz	">> AVX Failed vaddps_ymm"
	.size	.Lstr.58, 25

	.type	.Lstr.59,@object                # @str.59
.Lstr.59:
	.asciz	">> AVX Failed vsubps_zmm"
	.size	.Lstr.59, 25

	.type	.Lstr.60,@object                # @str.60
.Lstr.60:
	.asciz	">> AVX Failed vsubps_ymm"
	.size	.Lstr.60, 25

	.type	.Lstr.61,@object                # @str.61
.Lstr.61:
	.asciz	">> AVX Failed vmulps_zmm"
	.size	.Lstr.61, 25

	.type	.Lstr.62,@object                # @str.62
.Lstr.62:
	.asciz	">> AVX Failed vmulps_ymm"
	.size	.Lstr.62, 25

	.type	.Lstr.63,@object                # @str.63
.Lstr.63:
	.asciz	">> AVX Failed vdivps_zmm"
	.size	.Lstr.63, 25

	.type	.Lstr.64,@object                # @str.64
.Lstr.64:
	.asciz	">> AVX Failed vdivps_ymm"
	.size	.Lstr.64, 25

	.type	.Lstr.65,@object                # @str.65
.Lstr.65:
	.asciz	">> AVX Failed vminps_zmm"
	.size	.Lstr.65, 25

	.type	.Lstr.66,@object                # @str.66
.Lstr.66:
	.asciz	">> AVX Failed vminps_ymm"
	.size	.Lstr.66, 25

	.type	.Lstr.67,@object                # @str.67
.Lstr.67:
	.asciz	">> AVX Failed vmaxps_zmm"
	.size	.Lstr.67, 25

	.type	.Lstr.68,@object                # @str.68
.Lstr.68:
	.asciz	">> AVX Failed vmaxps_ymm"
	.size	.Lstr.68, 25

	.type	.Lstr.69,@object                # @str.69
.Lstr.69:
	.asciz	">> AVX Failed vxorps_zmm"
	.size	.Lstr.69, 25

	.type	.Lstr.70,@object                # @str.70
.Lstr.70:
	.asciz	">> AVX Failed vxorps_ymm"
	.size	.Lstr.70, 25

	.type	.Lstr.71,@object                # @str.71
.Lstr.71:
	.asciz	">> AVX Failed vandps_zmm"
	.size	.Lstr.71, 25

	.type	.Lstr.72,@object                # @str.72
.Lstr.72:
	.asciz	">> AVX Failed vandps_ymm"
	.size	.Lstr.72, 25

	.type	.Lstr.73,@object                # @str.73
.Lstr.73:
	.asciz	">> AVX Failed vunpcklps_zmm"
	.size	.Lstr.73, 28

	.type	.Lstr.74,@object                # @str.74
.Lstr.74:
	.asciz	">> AVX Failed vunpcklps_ymm"
	.size	.Lstr.74, 28

	.type	.Lstr.75,@object                # @str.75
.Lstr.75:
	.asciz	">> AVX Failed vaddpd_zmmd"
	.size	.Lstr.75, 26

	.type	.Lstr.76,@object                # @str.76
.Lstr.76:
	.asciz	">> AVX Failed vaddpd_ymmd"
	.size	.Lstr.76, 26

	.type	.Lstr.77,@object                # @str.77
.Lstr.77:
	.asciz	">> AVX Failed vsubpd_zmmd"
	.size	.Lstr.77, 26

	.type	.Lstr.78,@object                # @str.78
.Lstr.78:
	.asciz	">> AVX Failed vsubpd_ymmd"
	.size	.Lstr.78, 26

	.type	.Lstr.79,@object                # @str.79
.Lstr.79:
	.asciz	">> AVX Failed vmulpd_zmmd"
	.size	.Lstr.79, 26

	.type	.Lstr.80,@object                # @str.80
.Lstr.80:
	.asciz	">> AVX Failed vmulpd_ymmd"
	.size	.Lstr.80, 26

	.type	.Lstr.81,@object                # @str.81
.Lstr.81:
	.asciz	">> AVX Failed vdivpd_zmmd"
	.size	.Lstr.81, 26

	.type	.Lstr.82,@object                # @str.82
.Lstr.82:
	.asciz	">> AVX Failed vdivpd_ymmd"
	.size	.Lstr.82, 26

	.type	.Lstr.83,@object                # @str.83
.Lstr.83:
	.asciz	">> AVX Failed vmaxpd_zmmd"
	.size	.Lstr.83, 26

	.type	.Lstr.84,@object                # @str.84
.Lstr.84:
	.asciz	">> AVX Failed vmaxpd_ymmd"
	.size	.Lstr.84, 26

	.type	.Lstr.85,@object                # @str.85
.Lstr.85:
	.asciz	">> AVX Failed vminpd_zmmd"
	.size	.Lstr.85, 26

	.type	.Lstr.86,@object                # @str.86
.Lstr.86:
	.asciz	">> AVX Failed vminpd_ymmd"
	.size	.Lstr.86, 26

	.type	.Lstr.87,@object                # @str.87
.Lstr.87:
	.asciz	">> AVX Failed vxorpd_zmmd"
	.size	.Lstr.87, 26

	.type	.Lstr.88,@object                # @str.88
.Lstr.88:
	.asciz	">> AVX Failed vxorpd_ymmd"
	.size	.Lstr.88, 26

	.type	.Lstr.89,@object                # @str.89
.Lstr.89:
	.asciz	">> AVX Failed vpaddb_zmmi"
	.size	.Lstr.89, 26

	.type	.Lstr.90,@object                # @str.90
.Lstr.90:
	.asciz	">> AVX Failed vpaddb_ymmi"
	.size	.Lstr.90, 26

	.type	.Lstr.91,@object                # @str.91
.Lstr.91:
	.asciz	">> AVX Failed vpaddsb_zmmi"
	.size	.Lstr.91, 27

	.type	.Lstr.92,@object                # @str.92
.Lstr.92:
	.asciz	">> AVX Failed vpaddsb_ymmi"
	.size	.Lstr.92, 27

	.type	.Lstr.93,@object                # @str.93
.Lstr.93:
	.asciz	">> AVX Failed vpaddw_zmmi"
	.size	.Lstr.93, 26

	.type	.Lstr.94,@object                # @str.94
.Lstr.94:
	.asciz	">> AVX Failed vpaddw_ymmi"
	.size	.Lstr.94, 26

	.type	.Lstr.95,@object                # @str.95
.Lstr.95:
	.asciz	">> AVX Failed vpaddsw_zmmi"
	.size	.Lstr.95, 27

	.type	.Lstr.96,@object                # @str.96
.Lstr.96:
	.asciz	">> AVX Failed vpaddsw_ymmi"
	.size	.Lstr.96, 27

	.type	.Lstr.97,@object                # @str.97
.Lstr.97:
	.asciz	">> AVX Failed vpmullw_zmmi"
	.size	.Lstr.97, 27

	.type	.Lstr.98,@object                # @str.98
.Lstr.98:
	.asciz	">> AVX Failed vpmullw_ymmi"
	.size	.Lstr.98, 27

	.type	.Lstr.99,@object                # @str.99
.Lstr.99:
	.asciz	">> AVX Failed vpaddd_zmmi"
	.size	.Lstr.99, 26

	.type	.Lstr.100,@object               # @str.100
.Lstr.100:
	.asciz	">> AVX Failed vpaddd_ymmi"
	.size	.Lstr.100, 26

	.type	.Lstr.101,@object               # @str.101
.Lstr.101:
	.asciz	">> AVX Failed vpandd_zmmi"
	.size	.Lstr.101, 26

	.type	.Lstr.102,@object               # @str.102
.Lstr.102:
	.asciz	">> AVX Failed vpminsd_zmmi"
	.size	.Lstr.102, 27

	.type	.Lstr.103,@object               # @str.103
.Lstr.103:
	.asciz	">> AVX Failed vpminsd_ymmi"
	.size	.Lstr.103, 27

	.type	.Lstr.104,@object               # @str.104
.Lstr.104:
	.asciz	">> AVX Failed vpmuldq_zmmi"
	.size	.Lstr.104, 27

	.type	.Lstr.105,@object               # @str.105
.Lstr.105:
	.asciz	">> AVX Failed vpmuldq_ymmi"
	.size	.Lstr.105, 27

	.type	.Lstr.106,@object               # @str.106
.Lstr.106:
	.asciz	">> AVX Failed vpmulld_zmmi"
	.size	.Lstr.106, 27

	.type	.Lstr.107,@object               # @str.107
.Lstr.107:
	.asciz	">> AVX Failed vpmulld_ymmi"
	.size	.Lstr.107, 27

	.type	.Lstr.108,@object               # @str.108
.Lstr.108:
	.asciz	">> AVX Failed vpaddq_zmmi"
	.size	.Lstr.108, 26

	.type	.Lstr.109,@object               # @str.109
.Lstr.109:
	.asciz	">> AVX Failed vpaddq_ymmi"
	.size	.Lstr.109, 26

	.type	.Lstr.110,@object               # @str.110
.Lstr.110:
	.asciz	">> AVX Failed vpminsq_zmmi"
	.size	.Lstr.110, 27

	.type	.Lstr.111,@object               # @str.111
.Lstr.111:
	.asciz	">> AVX Failed vpminsq_ymmi"
	.size	.Lstr.111, 27

	.type	.Lstr.112,@object               # @str.112
.Lstr.112:
	.asciz	">> AVX Failed vfmaddps_zmm"
	.size	.Lstr.112, 27

	.type	.Lstr.113,@object               # @str.113
.Lstr.113:
	.asciz	">> AVX Failed vfnmaddps_zmm"
	.size	.Lstr.113, 28

	.type	.Lstr.114,@object               # @str.114
.Lstr.114:
	.asciz	">> AVX Passed"
	.size	.Lstr.114, 14

	.ident	"clang version 12.0.0 (git@github.com:PolyArch/llvm-project.git 691ef975491daeb1332a6439746d479141f70f7e)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
