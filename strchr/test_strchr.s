# red #
	.file	"test_strchr.c"
	.text
	.p2align 4,,15
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB576:
	.cfi_startproc
	movq	%rdi, %rcx
	pxor	%xmm0, %xmm0
	andl	$255, %esi
	andl	$63, %ecx
	subq	%rcx, %rdi
	movd	%esi, %xmm1
	movl	%esi, -12(%rsp)
	movdqu	(%rdi), %xmm2
	pshufb	%xmm0, %xmm1
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm3
	por	%xmm3, %xmm2
	pmovmskb	%xmm2, %r8d
	movdqu	16(%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm3
	por	%xmm3, %xmm2
	pmovmskb	%xmm2, %eax
	movdqu	32(%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	salq	$16, %rax
	pcmpeqb	%xmm1, %xmm3
	orq	%r8, %rax
	por	%xmm3, %xmm2
	pmovmskb	%xmm2, %esi
	movdqu	48(%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm3
	por	%xmm3, %xmm2
	pmovmskb	%xmm2, %edx
	salq	$16, %rdx
	orq	%rsi, %rdx
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	$-1, %rdx
	salq	%cl, %rdx
	andq	%rdx, %rax
	je	.L14
.L2:
	bsfq	%rax, %rax
	movl	$0, %edx
	addq	%rdi, %rax
	cmpb	$0, (%rax)
	cmove	%rdx, %rax
	ret
.L17:
	pmovmskb	%xmm3, %eax
	pmovmskb	%xmm5, %edx
	pmovmskb	%xmm6, %esi
	pmovmskb	%xmm4, %ecx
	salq	$16, %rax
	salq	$16, %rdx
	orq	%rcx, %rax
	orq	%rsi, %rdx
	salq	$32, %rax
	orq	%rdx, %rax
	jne	.L2
	.p2align 4,,10
	.p2align 3
.L14:
	addq	$64, %rdi
	movdqu	(%rdi), %xmm2
	prefetcht0	512(%rdi)
	movdqa	%xmm2, %xmm6
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm6
	por	%xmm2, %xmm6
	movdqu	16(%rdi), %xmm2
	movdqa	%xmm2, %xmm5
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm5
	por	%xmm2, %xmm5
	movdqu	32(%rdi), %xmm2
	movdqa	%xmm2, %xmm4
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm4
	por	%xmm2, %xmm4
	movdqu	48(%rdi), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	movdqa	%xmm4, %xmm7
	pcmpeqb	%xmm1, %xmm3
	por	%xmm2, %xmm3
	movdqa	%xmm6, %xmm2
	por	%xmm3, %xmm7
	por	%xmm5, %xmm2
	por	%xmm7, %xmm2
	pmovmskb	%xmm2, %eax
	testl	%eax, %eax
	je	.L14
	jmp	.L17
	.cfi_endproc
.LFE576:
	.size	strchr, .-strchr
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB577:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE577:
	.size	reversed, .-reversed
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB578:
	.cfi_startproc
	movsbl	(%rsi), %esi
	jmp	strchr@PLT
	.cfi_endproc
.LFE578:
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
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
