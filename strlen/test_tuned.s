# red
	.file	"test_strlen.c"
	.text
	.p2align 4,,15
	.globl	strlen
	.type	strlen, @function
strlen:
.LFB529:
	.cfi_startproc
	movq	%rdi, %rcx
	movq	%rdi, %rdx
	andl	$31, %ecx
	pxor	%xmm0, %xmm0
	subq	%rcx, %rdx
	movdqa	16(%rdx), %xmm1
	movdqa	(%rdx), %xmm2
	pcmpeqb	%xmm0, %xmm1
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm1, %eax
	pmovmskb	%xmm2, %esi
	sall	$16, %eax
	orl	%esi, %eax
	sarl	%cl, %eax
	sall	%cl, %eax
	testl	%eax, %eax
	jne	.L9
	movdqa	48(%rdx), %xmm1
	leaq	64(%rdx), %rax
	movdqa	32(%rdx), %xmm2
	pcmpeqb	%xmm0, %xmm1
	andq	$-64, %rax
	pcmpeqb	%xmm0, %xmm2
	pmovmskb	%xmm1, %ecx
	pmovmskb	%xmm2, %esi
	sall	$16, %ecx
	orl	%esi, %ecx
	je	.L7
	bsfl	%ecx, %ecx
	movslq	%ecx, %rcx
	leaq	32(%rdx,%rcx), %rax
	subq	%rdi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	prefetcht0	512(%rax)
	addq	$64, %rax
.L7:
	movdqa	(%rax), %xmm3
	movdqa	16(%rax), %xmm2
	movdqa	32(%rax), %xmm5
	pcmpeqb	%xmm0, %xmm3
	movdqa	48(%rax), %xmm4
	pcmpeqb	%xmm0, %xmm2
	pcmpeqb	%xmm0, %xmm4
	por	%xmm2, %xmm4
	pcmpeqb	%xmm0, %xmm5
	por	%xmm3, %xmm5
	por	%xmm4, %xmm5
	pmovmskb	%xmm5, %edx
	testl	%edx, %edx
	je	.L5
	pmovmskb	%xmm2, %edx
	pmovmskb	%xmm3, %ecx
	sall	$16, %edx
	orl	%ecx, %edx
	je	.L6
	bsfl	%edx, %edx
	movslq	%edx, %rdx
	addq	%rdx, %rax
	subq	%rdi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L9:
	bsfl	%eax, %eax
	cltq
	addq	%rdx, %rax
	subq	%rdi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L6:
  movdqa	32(%rax), %xmm5
	movdqa	48(%rax), %xmm4
	pcmpeqb	%xmm0, %xmm5
	pcmpeqb	%xmm0, %xmm4
	pmovmskb	%xmm4, %edx
	pmovmskb	%xmm5, %ecx
	sall	$16, %edx
	orl	%ecx, %edx
	bsfl	%edx, %edx
	movslq	%edx, %rdx
	leaq	32(%rax,%rdx), %rax
	subq	%rdi, %rax
	ret
	.cfi_endproc
.LFE529:
	.size	strlen, .-strlen
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB530:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE530:
	.size	reversed, .-reversed
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB531:
	.cfi_startproc
	jmp	strlen@PLT
	.cfi_endproc
.LFE531:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.6.3-7) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
