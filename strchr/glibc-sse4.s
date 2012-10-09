# blue
	.file	"strchr.c"
	.text
	.p2align 4,,15
.globl strchr2
	.type	strchr2, @function
strchr2:
.LFB541:
	.cfi_startproc


	pxor	%xmm2, %xmm2
	movd	%esi, %xmm1
	movl	%edi, %ecx
	pshufb  %xmm2, %xmm1
	andl	$15, %ecx
	movq	%rdi, %r8
	je	.aligned_start

/* Handle unaligned string.  */
	andq	$-16, %r8
	movdqa	(%r8), %xmm0
	pcmpeqb	 %xmm0, %xmm2
	pcmpeqb	 %xmm1, %xmm0
	/* Find where NULL is.  */
	pmovmskb %xmm2, %edx
	/* Check if there is a match.  */
	pmovmskb %xmm0, %esi
	/* Remove the leading  bytes.  */
	sarl	%cl, %edx
	sarl	%cl, %esi
	testl	%esi, %esi
	je	.unaligned_no_match
	/* Check which byte is a match.  */
	bsfl	%esi, %eax
	/* Is there a NULL? */
	testl	%edx, %edx
	je      .unaligned_match
	bsfl	%edx, %esi
	cmpl	%esi, %eax
	/* Return NULL if NULL comes first.  */
	ja	.return_null
.unaligned_match:
	addq	%rdi, %rax
	ret

	.p2align 4
.unaligned_no_match:
	testl	%edx, %edx
	jne	.return_null

/* Loop start on aligned string.  */
.loop:
	addq	$16, %r8
.aligned_start:
	pcmpistri	$0x2, (%r8), %xmm1
	jbe	.wrap
	addq	$16, %r8
	pcmpistri	$0x2, (%r8), %xmm1
	jbe	.wrap
	addq	$16, %r8
	pcmpistri       $0x2, (%r8), %xmm1
	jbe     .wrap
	addq	$16, %r8
	pcmpistri	$0x2, (%r8), %xmm1
	jbe	.wrap
	jmp	.loop
.wrap:
	jc	.loop_exit

/* Return NULL.  */
.return_null:
	xorl	%eax, %eax
	ret

/* Loop exit.  */
	.p2align 4
.loop_exit:
	leaq	(%r8,%rcx), %rax
	ret
		.cfi_endproc
.LFE541:
	.size	strchr2, .-strchr2
	.p2align 4,,15
.globl reversed
	.type	reversed, @function
reversed:
.LFB542:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE542:
	.size	reversed, .-reversed
	.p2align 4,,15
.globl strstr2
	.type	strstr2, @function
strstr2:
.LFB543:
	.cfi_startproc
	movsbl	(%rsi), %esi
	jmp	strchr2@PLT
	.cfi_endproc
.LFE543:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
