	.file	"memcpy_new_u.c"
	.text
	.p2align 4,,15
	.globl	memcpy_new_u
	.type	memcpy_new_u, @function
memcpy_new_u:
.LFB518:
	.cfi_startproc
	movq	%rsi, %rax
	leaq	(%rdx,%rdx), %rcx
	subq	%rdi, %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	.L29
	cmpq	$16, %rdx
	jbe	.L30
	movdqu	(%rsi), %xmm8
	cmpq	$32, %rdx
	movdqu	%xmm8, (%rdi)
	movdqu	-16(%rsi,%rdx), %xmm8
	movdqu	%xmm8, -16(%rdi,%rdx)
	ja	.L31
.L5:
	movq	%rdi, %rax
	ret
	.p2align 4,,10
	.p2align 3
.L31:
	movdqu	16(%rsi), %xmm8
	cmpq	$64, %rdx
	movdqu	%xmm8, 16(%rdi)
	movdqu	-32(%rsi,%rdx), %xmm8
	movdqu	%xmm8, -32(%rdi,%rdx)
	jbe	.L5
	movdqu	32(%rsi), %xmm8
	cmpq	$128, %rdx
	movdqu	%xmm8, 32(%rdi)
	movdqu	-48(%rsi,%rdx), %xmm8
	movdqu	%xmm8, -48(%rdi,%rdx)
	movdqu	48(%rsi), %xmm8
	movdqu	%xmm8, 48(%rdi)
	movdqu	-64(%rsi,%rdx), %xmm8
	movdqu	%xmm8, -64(%rdi,%rdx)
	jbe	.L5
	leaq	64(%rdi), %rcx
	addq	%rdi, %rdx
	andq	$-64, %rdx
	andq	$-64, %rcx
	movq	%rcx, %rax
	subq	%rdi, %rax
	addq	%rax, %rsi
	cmpq	%rdx, %rcx
	je	.L5
	movq	%rsi, %r10
	subq	%rcx, %r10
	leaq	16(%r10), %r9
	leaq	32(%r10), %r8
	leaq	48(%r10), %rax
	.p2align 4,,10
	.p2align 3
.L22:
	movdqu	(%rcx,%r10), %xmm8
	movdqa	%xmm8, (%rcx)
	movdqu	(%rcx,%r9), %xmm8
	movdqa	%xmm8, 16(%rcx)
	movdqu	(%rcx,%r8), %xmm8
	movdqa	%xmm8, 32(%rcx)
	movdqu	(%rcx,%rax), %xmm8
	movdqa	%xmm8, 48(%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.L22
	jmp	.L5
.L29:
	cmpq	%rsi, %rdi
	jae	.L3
	testq	%rdx, %rdx
	.p2align 4,,5
	je	.L5
	movq	%rdx, %r9
	leaq	16(%rsi), %rcx
	leaq	16(%rdi), %r8
	shrq	$4, %r9
	movq	%r9, %rax
	salq	$4, %rax
	cmpq	%rcx, %rdi
	setae	%cl
	cmpq	%r8, %rsi
	setae	%r8b
	orl	%r8d, %ecx
	cmpq	$15, %rdx
	seta	%r8b
	testb	%r8b, %cl
	je	.L16
	testq	%rax, %rax
	je	.L16
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
.L7:
	movdqu	(%rsi,%rcx), %xmm8
	addq	$1, %r8
	movdqu	%xmm8, (%rdi,%rcx)
	addq	$16, %rcx
	cmpq	%r8, %r9
	ja	.L7
	cmpq	%rax, %rdx
	je	.L5
.L21:
	movzbl	(%rsi,%rax), %ecx
	movb	%cl, (%rdi,%rax)
	addq	$1, %rax
	cmpq	%rax, %rdx
	ja	.L21
	jmp	.L5
.L30:
	testb	$24, %dl
	jne	.L32
	testb	$4, %dl
	.p2align 4,,5
	jne	.L33
	testq	%rdx, %rdx
	.p2align 4,,2
	je	.L5
	movzbl	(%rsi), %eax
	testb	$2, %dl
	movb	%al, (%rdi)
	je	.L5
	movzwl	-2(%rsi,%rdx), %eax
	movw	%ax, -2(%rdi,%rdx)
	jmp	.L5
.L3:
	leaq	-1(%rdx), %rax
	.p2align 4,,10
	.p2align 3
.L11:
	movzbl	(%rsi,%rax), %edx
	movb	%dl, (%rdi,%rax)
	subq	$1, %rax
	jmp	.L11
.L32:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	-8(%rsi,%rdx), %rax
	movq	%rax, -8(%rdi,%rdx)
	jmp	.L5
.L16:
	xorl	%eax, %eax
	jmp	.L21
.L33:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	-4(%rsi,%rdx), %eax
	movl	%eax, -4(%rdi,%rdx)
	jmp	.L5
	.cfi_endproc
.LFE518:
	.size	memcpy_new_u, .-memcpy_new_u
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
