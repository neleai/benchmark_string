	.file	"memset_new.c"
	.text
	.p2align 4,,15
	.globl	memset_new
	.type	memset_new, @function
memset_new:
.LFB517:
	.cfi_startproc
	movd	%esi, %xmm1
	leaq	-16(%rdx), %rcx
	movq	%rdi, %rax
	punpcklbw	%xmm1, %xmm1
	cmpq	$784, %rcx
	punpcklwd	%xmm1, %xmm1
	pshufd	$0, %xmm1, %xmm1
	movdqa	%xmm1, %xmm0
	movq	%xmm0, -16(%rsp)
	ja	.L23
	movdqu	%xmm1, (%rdi)
	addq	%rdi, %rdx
	movdqu	%xmm1, (%rdi,%rcx)
	leaq	16(%rdi), %rcx
	andq	$-16, %rdx
	andq	$-16, %rcx
	cmpq	%rcx, %rdx
	je	.L5
	.p2align 4,,10
	.p2align 4
.L17:
	movdqa	%xmm0, (%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	jne	.L17
.L5:
	rep
	ret
.L23:
	cmpq	$800, %rdx
	jbe	.L3
	movdqu	%xmm1, (%rdi)
	movdqu	%xmm1, (%rdi,%rcx)
	leaq	64(%rdi), %rcx
	movdqu	%xmm1, 16(%rdi)
	andq	$-64, %rcx
	movdqu	%xmm1, -32(%rdi,%rdx)
	movdqu	%xmm1, 32(%rdi)
	movdqu	%xmm1, -48(%rdi,%rdx)
	movdqu	%xmm1, 48(%rdi)
	movdqu	%xmm1, -64(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-64, %rdx
	cmpq	%rcx, %rdx
	je	.L5
	.p2align 4,,10
	.p2align 4
.L16:
	movdqa	%xmm0, (%rcx)
	movdqa	%xmm0, 16(%rcx)
	movdqa	%xmm0, 32(%rcx)
	movdqa	%xmm0, 48(%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.L16
	rep
	ret
.L3:
	testb	$8, %dl
	jne	.L24
	testb	$4, %dl
	.p2align 4,,5
	jne	.L25
	testb	$1, %dl
	.p2align 4,,2
	je	.L10
	movzbl	-16(%rsp), %ecx
	movb	%cl, (%rdi)
.L10:
	testb	$2, %dl
	je	.L5
	movzwl	-16(%rsp), %ecx
	movw	%cx, -2(%rax,%rdx)
	ret
.L25:
	movl	-16(%rsp), %ecx
	movl	%ecx, (%rdi)
	movl	%ecx, -4(%rdi,%rdx)
	ret
.L24:
	movq	-16(%rsp), %rcx
	movq	%rcx, (%rdi)
	movq	%rcx, -8(%rdi,%rdx)
	ret
	.cfi_endproc
.LFE517:
	.size	memset_new, .-memset_new
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
