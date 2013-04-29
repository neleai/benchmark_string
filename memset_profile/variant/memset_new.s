	.file	"memset_new.c"
	.text
	.p2align 4,,15
	.globl	memset_new
	.type	memset_new, @function
memset_new:
.LFB517:
	.cfi_startproc
	movd	%esi, %xmm8
	cmpq	$64, %rdx
	movq	%rdi, %rax
	punpcklbw	%xmm8, %xmm8
	punpcklwd	%xmm8, %xmm8
	pshufd	$0, %xmm8, %xmm8
	ja	.L2
	cmpq	$16, %rdx
	jbe	.L17
	cmpq	$32, %rdx
	movdqu	%xmm8, (%rdi)
	movdqu	%xmm8, -16(%rdi,%rdx)
	ja	.L18
.L5:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	movdqu	%xmm8, 16(%rdi)
	movdqu	%xmm8, -32(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L2:
	leaq	64(%rdi), %rcx
	movdqu	%xmm8, (%rdi)
	andq	$-64, %rcx
	movdqu	%xmm8, -16(%rdi,%rdx)
	movdqu	%xmm8, 16(%rdi)
	movdqu	%xmm8, -32(%rdi,%rdx)
	movdqu	%xmm8, 32(%rdi)
	movdqu	%xmm8, -48(%rdi,%rdx)
	movdqu	%xmm8, 48(%rdi)
	movdqu	%xmm8, -64(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-64, %rdx
	cmpq	%rdx, %rcx
	je	.L5
	.p2align 4,,10
	.p2align 4
.L13:
	movdqa	%xmm8, (%rcx)
	movdqa	%xmm8, 16(%rcx)
	movdqa	%xmm8, 32(%rcx)
	movdqa	%xmm8, 48(%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.L13
	rep
	ret
.L17:
	movq %xmm8, %rcx
	testb	$24, %dl
	jne	.L19
	testb	$4, %dl
	.p2align 4,,5
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
	.size	memset_new, .-memset_new

	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
