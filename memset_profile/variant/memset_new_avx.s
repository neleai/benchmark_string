	.file	"memset_new_avx.c"
	.text
	.p2align 4,,15
	.globl	memset_new_avx
	.type	memset_new_avx, @function
memset_new_avx:
.LFB517:
	.cfi_startproc
	vpxor	%xmm1, %xmm1, %xmm1
	vmovd	%esi, %xmm0
	cmpq	$64, %rdx
	movq	%rdi, %rax
	vpshufb	%xmm1, %xmm0, %xmm1
	vmovdqa	%xmm1, %xmm0
	vpextrq	$0, %xmm1, %rcx
	ja	.L2
	cmpq	$16, %rdx
	jbe	.L17
	cmpq	$32, %rdx
	vmovdqu	%xmm1, (%rdi)
	vmovdqu	%xmm1, -16(%rdi,%rdx)
	ja	.L18
.L5:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	64(%rdi), %rcx
	vmovdqu	%xmm1, (%rdi)
	andq	$-64, %rcx
	vmovdqu	%xmm1, -16(%rdi,%rdx)
	vmovdqu	%xmm1, 16(%rdi)
	vmovdqu	%xmm1, -32(%rdi,%rdx)
	vmovdqu	%xmm1, 32(%rdi)
	vmovdqu	%xmm1, -48(%rdi,%rdx)
	vmovdqu	%xmm1, 48(%rdi)
	vmovdqu	%xmm1, -64(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-64, %rdx
	cmpq	%rdx, %rcx
	je	.L5

	movdqu	%xmm0, -16(%rsp)
	vbroadcastf128 -16(%rsp), %ymm0
	.p2align 4,,10
	.p2align 4
.L13:
	vmovapd	%ymm0, (%rcx)
	vmovapd	%ymm0, 32(%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.L13
	vzeroupper
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	vmovdqu	%xmm1, 16(%rdi)
	vmovdqu	%xmm1, -32(%rdi,%rdx)
	ret
.L17:
	testb	$24, %dl
	jne	.L19
	testb	$4, %dl
	jne	.L20
	testb	$1, %dl
	.p2align 4,,2
	je	.L7
	movb	%cl, (%rdi)
.L7:
	testb	$2, %dl
	je	.L5
	movw	%cx, -2(%rax,%rdx)
	ret
.L20:
	movl	%ecx, (%rdi)
	movl	%ecx, -4(%rdi,%rdx)
	ret
.L19:
	movq	%rcx, (%rdi)
	movq	%rcx, -8(%rdi,%rdx)
	ret
	.cfi_endproc
.LFE517:
	.size	memset_new_avx, .-memset_new_avx

	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
