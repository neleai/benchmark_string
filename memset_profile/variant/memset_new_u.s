	.file	"memset_new2.c"
	.text
	.p2align 4,,15
.globl memset_new2
	.type	memset_new2, @function
memset_new2:
.LFB516:
	.cfi_startproc
	movd	%esi, %xmm0
	cmpq	$15, %rdx
	movq	%rdi, %rax
	punpcklbw	%xmm0, %xmm0
	punpcklwd	%xmm0, %xmm0
	pshufd	$0, %xmm0, %xmm0
	movq	%xmm0, %rcx
	jbe	.L10
	movdqu	%xmm0, (%rdi)
	leaq	16(%rdi), %rcx
	andq	$-16, %rcx
	movdqu	%xmm0, -16(%rdi,%rdx)
	leaq	(%rdi,%rdx), %rdx
	andq	$-16, %rdx
	cmpq	%rcx, %rdx
	je	.L4
	.p2align 4,,10
	.p2align 4
.L7:
	movdqa	%xmm0, (%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	jne	.L7
.L4:
	rep
	ret
.L10:
	testb	$8, %dl
	jne	.L11
	testb	$4, %dl
	.p2align 4,,5
	jne	.L12
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	movb	%cl, (%rdi)
.L6:
	testb	$2, %dl
	je	.L4
	movw	%cx, -2(%rax,%rdx)
	ret
.L12:
	movl	%ecx, (%rdi)
	movl	%ecx, -4(%rdi,%rdx)
	ret
.L11:
	movq	%rcx, (%rdi)
	movq	%rcx, -8(%rdi,%rdx)
	ret
	.cfi_endproc
.LFE516:
	.size	memset_new2, .-memset_new2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
