# red
	.file	"strchr.c"
	.text
	.p2align 4,,15
.globl strchr2
	.type	strchr2, @function
strchr2:
.LFB547:
	.cfi_startproc
	movq	%rdi, %rax
  andq $255, %rsi
	movd	%esi, %xmm1
	punpcklbw	%xmm1, %xmm1
	punpcklwd	%xmm1, %xmm1
	pxor	%xmm9, %xmm9
  movq  %rdi, %rcx
  andq $4095, %rcx
	pshufd	$0, %xmm1, %xmm1
  pxor  %xmm5, %xmm5
  cmpq $4031, %rcx
  ja .next
	
	movdqu	(%rax), %xmm0
	movdqu 	%xmm0, %xmm4
	pcmpeqb	%xmm1, %xmm4
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm4
	movdqu	16(%rax), %xmm0
	movdqu 	%xmm0, %xmm3
	pmovmskb	%xmm4, %r9d
	pcmpeqb	%xmm1, %xmm3
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm3
	movdqu	32(%rax), %xmm0
	movdqu 	%xmm0, %xmm2
	pmovmskb	%xmm3, %edx
	pcmpeqb	%xmm1, %xmm2
	salq	$16, %rdx
	orq	%r9, %rdx
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm2
	movdqu	48(%rax), %xmm0
	movdqu 	%xmm0, %xmm5
	pmovmskb	%xmm2, %r8d
	pcmpeqb	%xmm1, %xmm5
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm5
	pmovmskb	%xmm5, %ecx
	andq	$-64, %rax
	salq	$16, %rcx
	orq	%r8, %rcx
	salq	$32, %rcx
	orq	%rcx, %rdx
  testq %rdx,%rdx	
  je .L9
  movq %rdi , %rax
.L2: 
	bsfq	%rdx, %rdx
	addq	%rdx, %rax
	movzbl	(%rax), %edx
	cmpl	%esi, %edx
  jne .end
  xorq  %rax, %rax
  .end: ret
 
  .next:
  andq	$-64, %rax
	movdqa	(%rax), %xmm0
	movdqa	%xmm0, %xmm4
	pcmpeqb	%xmm1, %xmm4
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm4
	movdqa	16(%rax), %xmm0
	movdqa	%xmm0, %xmm3
	pmovmskb	%xmm4, %r9d
	pcmpeqb	%xmm1, %xmm3
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm3
	movdqa	32(%rax), %xmm0
	movdqa	%xmm0, %xmm2
	pmovmskb	%xmm3, %edx
	pcmpeqb	%xmm1, %xmm2
	salq	$16, %rdx
	orq	%r9, %rdx
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm2
	movdqa	48(%rax), %xmm0
	movdqa	%xmm0, %xmm5
	pmovmskb	%xmm2, %r8d
	pcmpeqb	%xmm1, %xmm5
  pcmpeqb %xmm9, %xmm0
  por     %xmm0, %xmm5
	pmovmskb	%xmm5, %ecx
	salq	$16, %rcx
	orq	%r8, %rcx
	movq	$-1, %r8
	salq	$32, %rcx
	orq	%rcx, %rdx
	movl	%edi, %ecx
	andl	$63, %ecx
	salq	%cl, %r8
	andq	%r8, %rdx
	je	.L9
  jmp .L2
	.p2align 4,,10
	.p2align 3
.L9:
 	addq	$64, %rax
	movdqa	(%rax), %xmm5
	#prefetcht0	512(%rax)
	movdqa	16(%rax), %xmm2
	movdqa	32(%rax), %xmm3
	pxor	%xmm1, %xmm5
	movdqa	48(%rax), %xmm4
	pxor	%xmm1, %xmm2
	pxor	%xmm1, %xmm3
	pminub	(%rax), %xmm5
	pxor	%xmm1, %xmm4
	pminub	16(%rax), %xmm2
	pminub	32(%rax), %xmm3
	pminub	%xmm2, %xmm5
	pminub	48(%rax), %xmm4
	pminub	%xmm3, %xmm5
	pminub	%xmm4, %xmm5
	pcmpeqb	%xmm9, %xmm5
	pmovmskb	%xmm5, %edx
	testl	%edx, %edx
	je	.L9

	movdqa	(%rax), %xmm5
  pxor	%xmm1, %xmm5
	pminub	(%rax), %xmm5
  pcmpeqb	%xmm9, %xmm4
	pcmpeqb	%xmm9, %xmm2
	pcmpeqb	%xmm9, %xmm5
	pmovmskb	%xmm4, %edx
	pcmpeqb	%xmm9, %xmm3
	pmovmskb	%xmm2, %r8d
	pmovmskb	%xmm5, %edi
	pmovmskb	%xmm3, %ecx
	salq	$16, %rdx
	salq	$16, %r8
	orq	%rcx, %rdx
	orq	%rdi, %r8
	salq	$32, %rdx
	orq	%r8, %rdx
	jmp	.L2

	.cfi_endproc
.LFE547:
	.size	strchr2, .-strchr2
	.p2align 4,,15
.globl reversed
	.type	reversed, @function
reversed:
.LFB548:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE548:
	.size	reversed, .-reversed
	.p2align 4,,15
.globl strstr2
	.type	strstr2, @function
strstr2:
.LFB549:
	.cfi_startproc
	movsbl	(%rsi), %esi
	jmp	strchr2@PLT
	.cfi_endproc
.LFE549:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
