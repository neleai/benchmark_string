# red #
	.file	"test_strlen.c"
	.text
	.p2align 4,,15
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB576:
	.cfi_startproc
	movq	%rdi, %rcx
	movq	%rdi, %rax
	andl	$63, %ecx
	pxor	%xmm0, %xmm0
	subq	%rcx, %rax
	movdqu	(%rax), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %r9d
	movdqu	16(%rax), %xmm1
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %edx
	movdqu	32(%rax), %xmm1
	pcmpeqb	%xmm0, %xmm1
	salq	$16, %rdx
	pmovmskb	%xmm1, %r8d
	movdqu	48(%rax), %xmm1
	orq	%r9, %rdx
	pcmpeqb	%xmm0, %xmm1
	pmovmskb	%xmm1, %esi
	salq	$16, %rsi
	orq	%r8, %rsi
	salq	$32, %rsi
	orq	%rsi, %rdx
	movq	$-1, %rsi
	salq	%cl, %rsi
	andq	%rsi, %rdx
	je	.L13
.L2:
	bsfq	%rdx, %rdx
	addq	%rdx, %rax
	subq	%rdi, %rax
	ret
.L16:
	movdqu	(%rax), %xmm5
	movdqu	32(%rax), %xmm3
	pcmpeqb	%xmm0, %xmm5
  pcmpeqb	%xmm0, %xmm3

	pmovmskb	%xmm2, %edx
	pmovmskb	%xmm4, %ecx
	pmovmskb	%xmm5, %r8d
	pmovmskb	%xmm3, %esi
	salq	$16, %rdx
	salq	$16, %rcx
	orq	%rsi, %rdx
	orq	%r8, %rcx
	salq	$32, %rdx
	orq	%rcx, %rdx
	jne	.L2
	.p2align 4,,10
	.p2align 3
.L13:
	addq	$64, %rax
	movdqu	(%rax), %xmm5
	prefetcht0	400(%rax)
	movdqu	32(%rax), %xmm3
	pcmpeqb	%xmm0, %xmm5
	movdqu	16(%rax), %xmm4
	pcmpeqb	%xmm0, %xmm3
	movdqu	48(%rax), %xmm2
	pcmpeqb	%xmm0, %xmm4
	pcmpeqb	%xmm0, %xmm2
	por	%xmm4, %xmm3
	por	%xmm2, %xmm5
	por	%xmm3, %xmm5
	pmovmskb	%xmm5, %edx
	testl	%edx, %edx
	je	.L13
	jmp	.L16
	.cfi_endproc
.LFE576:
	.size	strlen, .-strlen
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB577:
	.cfi_startproc
	xorl	%eax, %eax
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
	jmp	strlen@PLT
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
