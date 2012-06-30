# blue #
	.file	"test_strlen.c"
	.text
	.p2align 4,,15
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB575:
	.cfi_startproc
	movq	%rdi, %rdx
	pxor	%xmm0, %xmm0
	andq	$-64, %rdx
	movl	%edi, %ecx
	movdqa	(%rdx), %xmm1
	andl	$63, %ecx
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm5
	movdqa	16(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm4
	movdqa	32(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm3
	movdqa	48(%rdx), %xmm1
	movdqa	%xmm3, %xmm6
	pcmpeqb	%xmm0, %xmm1
	por	%xmm1, %xmm6
	movdqa	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm4, %xmm1
	por	%xmm6, %xmm1
	pmovmskb	%xmm1, %eax
	testl	%eax, %eax
	jne	.L8
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$64, %rdx
	movdqa	(%rdx), %xmm1
	prefetcht0	512(%rdx)
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm5
	movdqa	16(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm4
	movdqa	32(%rdx), %xmm1
	pcmpeqb	%xmm0, %xmm1
	movdqa	%xmm1, %xmm3
	movdqa	48(%rdx), %xmm1
	movdqa	%xmm3, %xmm6
	pcmpeqb	%xmm0, %xmm1
	por	%xmm1, %xmm6
	movdqa	%xmm1, %xmm2
	movdqa	%xmm5, %xmm1
	por	%xmm4, %xmm1
	por	%xmm6, %xmm1
	pmovmskb	%xmm1, %eax
	testl	%eax, %eax
	je	.L2
	pmovmskb	%xmm4, %eax
	pmovmskb	%xmm3, %r8d
	pmovmskb	%xmm5, %esi
	pmovmskb	%xmm2, %ecx
	cltq
	salq	$32, %r8
	salq	$16, %rax
	movslq	%esi, %rsi
	salq	$48, %rcx
	orq	%r8, %rax
	orq	%rsi, %rax
	orq	%rcx, %rax
	je	.L2
.L6:
	bsfq	%rax, %rax
	cltq
	addq	%rax, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	ret
.L8:
	pmovmskb	%xmm4, %eax
	pmovmskb	%xmm3, %r9d
	pmovmskb	%xmm5, %r8d
	pmovmskb	%xmm2, %esi
	cltq
	salq	$32, %r9
	salq	$16, %rax
	movslq	%r8d, %r8
	salq	$48, %rsi
	orq	%r9, %rax
	orq	%r8, %rax
	orq	%rsi, %rax
	sarq	%cl, %rax
	salq	%cl, %rax
	testq	%rax, %rax
	je	.L2
	jmp	.L6
	.cfi_endproc
.LFE575:
	.size	strlen, .-strlen
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB576:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE576:
	.size	reversed, .-reversed
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB577:
	.cfi_startproc
	jmp	strlen@PLT
	.cfi_endproc
.LFE577:
	.size	strstr2, .-strstr2
	.globl	prefetch
	.section	.rodata
	.align 4
	.type	prefetch, @object
	.size	prefetch, 4
prefetch:
	.long	8
	.globl	unroll
	.align 4
	.type	unroll, @object
	.size	unroll, 4
unroll:
	.long	4
	.ident	"GCC: (Debian 4.6.3-7) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
