	.file	"memset_small.c"
	.text
	.p2align 4,,15
	.globl	memset_small
	.type	memset_small, @function
memset_small:
.LFB517:
	.cfi_startproc
	movd	%esi, %xmm8
	cmpq	$15, %rdx
	movq	%rdi, %rax
	punpcklbw	%xmm8, %xmm8
	punpcklwd	%xmm8, %xmm8
	pshufd	$0, %xmm8, %xmm8
	movq	%xmm8, %rsi
	jbe	.L16
	leaq	16(%rdi), %rcx
	movdqu	%xmm8, (%rdi)
	andq	$-16, %rcx
	movdqu	%xmm8, -16(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-16, %rdx
	cmpq	%rcx, %rdx
	je	.L4
	.p2align 4,,10
	.p2align 4
.L12:
	movdqa	%xmm8, (%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	jne	.L12
.L4:
	rep
	ret
	.p2align 4,,10
	.p2align 4
.L16:
	testb	$8, %dl
	jne	.L17
	testb	$4, %dl
	.p2align 4,,5
	jne	.L18
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	movb	%sil, (%rdi)
.L6:
	testb	$2, %dl
	je	.L4
	movw	%si, -2(%rax,%rdx)
	ret
	.p2align 4,,10
	.p2align 4
.L18:
	movl	%esi, (%rdi)
	movl	%esi, -4(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 4
.L17:
	movq	%rsi, (%rdi)
	movq	%rsi, -8(%rdi,%rdx)
	ret
	.cfi_endproc
.LFE517:
	.size	memset_small, .-memset_small
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
