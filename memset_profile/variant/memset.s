	.file	"memset.c"
	.text
	.p2align 4,,15
	.globl	memset_new
	.type	memset_new, @function
memset_new:
.LFB517:
	.cfi_startproc
	movd	%esi, %xmm1
	cmpq	$15, %rdx
	punpcklbw	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm1
	pshufd	$0, %xmm1, %xmm1
	movq	%xmm1, %rcx
	jbe	.L17
	leaq	16(%rdi), %rax
	movdqu	%xmm1, (%rdi)
	andq	$-16, %rax
	movdqu	%xmm1, -16(%rdi,%rdx)
	addq	%rdi, %rdx
	movq	%rax, %rdi
	andq	$-16, %rdx
	cmpq	%rax, %rdx
	je	.L7
	.p2align 4,,10
	.p2align 3
.L8:
	movdqa	%xmm1, (%rax)
	addq	$16, %rax
	cmpq	%rax, %rdx
	jne	.L8
	movq	%rdx, %rdi
.L7:
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	testb	$8, %dl
	jne	.L18
	testb	$4, %dl
	jne	.L19
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	movb	%cl, (%rdi)
.L6:
	testb	$2, %dl
	je	.L7
	movw	%cx, -2(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	movl	%ecx, (%rdi)
	movl	%ecx, -4(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L18:
	rovq	%rcx, (%rdi)
	movq	%rcx, -8(%rdi,%rdx)
	ret
	.cfi_endproc
.LFE517:
	.size	memset_new, .-memset_new
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
