# red #
	.file	"test_strchr.c"
	.text
	.p2align 4,,15
	.globl	strchr
	.type	strchr, @function
strchr:
.LFB576:
	.cfi_startproc
	pxor	%xmm2, %xmm2
	andl	$255, %esi
	movd	%esi, %xmm0
	movq	%rdi, %rcx
	movq	%rdi, %rax
	andl	$63, %ecx
	movl	%esi, -12(%rsp)
	pshufb	%xmm2, %xmm0
	subq	%rcx, %rax
	movdqu	(%rax), %xmm3
	movdqa	%xmm2, %xmm1
	movdqa	%xmm3, %xmm6
	pcmpeqb	%xmm0, %xmm3
	pcmpeqb	%xmm2, %xmm6
	pmovmskb	%xmm3, %edi
	movdqu	16(%rax), %xmm3
	movdqa	%xmm3, %xmm5
	movslq	%edi, %rdi
	pcmpeqb	%xmm0, %xmm3
	pcmpeqb	%xmm2, %xmm5
	pmovmskb	%xmm3, %edx
	movdqu	32(%rax), %xmm3
	movdqa	%xmm3, %xmm4
	movslq	%edx, %rdx
	pcmpeqb	%xmm0, %xmm3
	salq	$16, %rdx
	pcmpeqb	%xmm2, %xmm4
	pmovmskb	%xmm3, %r8d
	movdqu	48(%rax), %xmm3
	pmovmskb	%xmm4, %r9d
	pcmpeqb	%xmm3, %xmm2
	salq	$32, %r8
	pcmpeqb	%xmm0, %xmm3
	orq	%r8, %rdx
	pmovmskb	%xmm6, %r8d
	orq	%rdi, %rdx
	salq	$32, %r9
	pmovmskb	%xmm2, %edi
	pmovmskb	%xmm3, %esi
	movslq	%r8d, %r8
	salq	$48, %rdi
	salq	$48, %rsi
	orq	%rsi, %rdx
	pmovmskb	%xmm5, %esi
	movslq	%esi, %rsi
	salq	$16, %rsi
	orq	%r9, %rsi
	orq	%r8, %rsi
	orq	%rdi, %rsi
	movq	$-1, %rdi
	orq	%rsi, %rdx
	salq	%cl, %rdi
	andq	%rdi, %rdx
	je	.L2
	bsfq	%rdx, %rcx
	movslq	%ecx, %rdx
	addq	%rdx, %rax
	movl	$1, %edx
	salq	%cl, %rdx
	testq	%rsi, %rdx
	movl	$0, %edx
	cmovne	%rdx, %rax
	ret
.L17:
  movdqu	(%rax), %xmm2
	movdqa	%xmm2, %xmm6
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm6
	pmovmskb	%xmm2, %ecx
	movdqu	16(%rax), %xmm2
	movdqa	%xmm2, %xmm5
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm5
	pmovmskb	%xmm2, %edi
	movdqu	32(%rax), %xmm2
	movdqa	%xmm2, %xmm4
	movl	%edi, %edx
	pcmpeqb	%xmm0, %xmm2
	orl	%ecx, %edx
	pcmpeqb	%xmm1, %xmm4
	pmovmskb	%xmm2, %esi
	movdqu	48(%rax), %xmm2
	movdqa	%xmm4, %xmm7
	movdqa	%xmm2, %xmm3
	orl	%esi, %edx
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm3
	pmovmskb	%xmm2, %r8d
	movdqa	%xmm6, %xmm2
	por	%xmm3, %xmm7
	por	%xmm5, %xmm2
	orl	%r8d, %edx
	por	%xmm7, %xmm2
	pmovmskb	%xmm2, %r9d
	orl	%r9d, %edx

	movslq	%edi, %rdi
	salq	$32, %rsi
	movslq	%ecx, %rcx
	salq	$16, %rdi
	salq	$48, %r8
	pmovmskb	%xmm5, %edx
	orq	%rsi, %rdi
	pmovmskb	%xmm6, %esi
	orq	%rcx, %rdi
	movslq	%edx, %rdx
	pmovmskb	%xmm3, %ecx
	orq	%r8, %rdi
	pmovmskb	%xmm4, %r8d
	salq	$16, %rdx
	movslq	%esi, %rsi
	salq	$48, %rcx
	salq	$32, %r8
	orq	%r8, %rdx
	orq	%rsi, %rdx
	orq	%rcx, %rdx
	movq	%rdi, %rcx
	orq	%rdx, %rcx
	jne	.L15
	.p2align 4,,10
	.p2align 3
.L2:
	addq	$64, %rax
	prefetcht0	512(%rax)
	movdqu	(%rax), %xmm2
	movdqa	%xmm2, %xmm3
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm1, %xmm3
  por     %xmm2, %xmm3
	movdqu	16(%rax), %xmm4
	movdqa	%xmm4, %xmm5
	pcmpeqb	%xmm0, %xmm4
	pcmpeqb	%xmm1, %xmm5
  por     %xmm4, %xmm5
  por     %xmm3, %xmm5
 	movdqu	32(%rax), %xmm6
	movdqa	%xmm6, %xmm7
	pcmpeqb	%xmm0, %xmm6
	pcmpeqb	%xmm1, %xmm7
  por     %xmm6, %xmm7
  movdqu  48(%rax), %xmm8
  movdqa  %xmm8, %xmm9
  pcmpeqb %xmm0, %xmm8
  pcmpeqb %xmm1, %xmm9
  por     %xmm8, %xmm9
  por     %xmm7, %xmm9
  por     %xmm5, %xmm9

	pmovmskb	%xmm9, %edx
  testq %edx, %edx
	je	.L2
	jmp	.L17
.L15:
	bsfq	%rcx, %rcx
	movl	$1, %esi
	movslq	%ecx, %rdi
	salq	%cl, %rsi
	addq	%rax, %rdi
	xorl	%eax, %eax
	testq	%rdx, %rsi
	cmove	%rdi, %rax
	ret
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
