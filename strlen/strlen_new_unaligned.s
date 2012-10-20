# red
	.file	"test_sse2.c"
	.text
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	reversed, .-reversed
	.p2align 4,,15
	.globl	strlen2
	.type	strlen2, @function
strlen2:
.LFB552:
	.cfi_startproc
	movq	%rdi, %rax
  movq  %rdi, %rcx
  andq $4095, %rcx
  pxor  %xmm5, %xmm5
  cmpq $4031, %rcx
  ja .next  
  movdqu   (%rax), %xmm3
  movdqu 16(%rax), %xmm2
	pcmpeqb %xmm5, %xmm3
  movdqu 32(%rax), %xmm1
	pcmpeqb %xmm5, %xmm2
	pmovmskb	%xmm3, %r8d
  movdqu 48(%rax), %xmm0
	pmovmskb	%xmm2, %edx
	pcmpeqb %xmm5, %xmm1
	pcmpeqb %xmm5, %xmm0
	pmovmskb	%xmm1, %esi
	andq	$-64, %rax
  pmovmskb	%xmm0, %ecx
	salq	$16, %rdx
	salq	$16, %rcx
	orq	%r8, %rdx
	orq	%rsi, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
  test %rdx, %rdx
	je	.L16
	bsfq	%rdx, %rax
	ret

  .next:
  andq	$-64, %rax
	pxor %xmm3,%xmm3
	pxor %xmm2,%xmm2
	pcmpeqb (%rax), %xmm3
	pxor %xmm1,%xmm1
	pcmpeqb 16(%rax), %xmm2
	pmovmskb	%xmm3, %r8d
	pcmpeqb 32(%rax), %xmm1
  pxor %xmm0, %xmm0
	pmovmskb	%xmm2, %edx
	pcmpeqb 48(%rax), %xmm0
	pmovmskb	%xmm1, %esi
	pmovmskb	%xmm0, %ecx
	salq	$16, %rdx
	salq	$16, %rcx
	orq	%r8, %rdx
	orq	%rsi, %rcx
	movq	$-1, %rsi
	salq	$32, %rcx
	orq	%rcx, %rdx
	movl	%edi, %ecx
	andl	$63, %ecx
	salq	%cl, %rsi
	andq	%rsi, %rdx
	je	.L16
	bsfq	%rdx, %rdx
	addq	%rdx, %rax
	subq	%rdi, %rax
	ret

	.p2align 4,,10
	.p2align 3
.L19:
	addq	$64, %rax
.L17:
	pxor %xmm3,%xmm3
	pcmpeqb (%rax),%xmm5
	pxor %xmm2,%xmm2
	pcmpeqb 16(%rax),%xmm3
	pxor %xmm1,%xmm1
	pmovmskb	%xmm5, %r8d
	pcmpeqb 32(%rax),%xmm3
	pmovmskb	%xmm3, %ecx
	pcmpeqb 48(%rax),%xmm3
	pmovmskb	%xmm1, %edx
	salq	$16, %rcx
	pmovmskb	%xmm2, %esi
	salq	$16, %rdx
	orq	%rsi, %rdx
	orq	%r8, %rcx
	salq	$32, %rdx
	orq	%rcx, %rdx
	bsfq	%rdx, %rdx
	addq	%rdx, %rax
	subq	%rdi, %rax
	ret

	.p2align 4,,10
	.p2align 3
.L16:
	#prefetcht0	576(%rax)
	movdqa	64(%rax), %xmm0
	pminub	80(%rax), %xmm0
	pminub	96(%rax), %xmm0
	pminub 112(%rax), %xmm0
	pcmpeqb	%xmm5, %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	jne	.L19
	subq	$-128, %rax
	#prefetcht0	512(%rax)
	movdqa	  (%rax), %xmm0
	pminub	16(%rax), %xmm0
	pminub	32(%rax), %xmm0
	pminub  48(%rax), %xmm0
	pcmpeqb	%xmm5, %xmm0
	pmovmskb	%xmm0, %edx
	testl	%edx, %edx
	je	.L16
	jmp	.L17
	.cfi_endproc
.LFE552:
	.size	strlen2, .-strlen2
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB553:
	.cfi_startproc
	jmp	strlen2@PLT
	.cfi_endproc
.LFE553:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
