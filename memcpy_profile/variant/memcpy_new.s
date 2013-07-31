	.file	"memcpy_new.c"
	.text
	.p2align 4,,15
	.globl	memcpy_new_u
	.type	memcpy_new_u, @function
memcpy_new_u:
.LFB520:
	.cfi_startproc
	movq	%rsi, %rcx
	movq	%rdi, %rax
	subq	%rdi, %rcx
	leaq	(%rdx,%rdx), %rdi
	subq	%rdx, %rcx
	cmpq	%rdi, %rcx
	jb	.L22
	cmpq	$128, %rdx
	ja	.L7
	testb	$24, %dl
	jne	.L23
	testb	$4, %dl
	jne	.L24
	testq	%rdx, %rdx
	.p2align 4,,2
	je	.L4
	movzbl	(%rsi), %ecx
	testb	$2, %dl
	movb	%cl, (%rax)
	je	.L4
	movzwl	-2(%rsi,%rdx), %ecx
	movw	%cx, -2(%rax,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L24:
	movl	(%rsi), %ecx
	movl	%ecx, (%rax)
	movl	-4(%rsi,%rdx), %ecx
	movl	%ecx, -4(%rax,%rdx)
	ret
.L7:
	movdqu	(%rsi), %xmm0
	leaq	64(%rax), %rcx
	movdqu	%xmm0, (%rax)
	andq	$-64, %rcx
	movq	%rcx, %rdi
	subq	%rax, %rdi
	movdqu	-16(%rsi,%rdx), %xmm0
	movdqu	%xmm0, -16(%rax,%rdx)
	movdqu	16(%rsi), %xmm0
	movdqu	%xmm0, 16(%rax)
	movdqu	-32(%rsi,%rdx), %xmm0
	movdqu	%xmm0, -32(%rax,%rdx)
	movdqu	32(%rsi), %xmm0
	movdqu	%xmm0, 32(%rax)
	movdqu	-48(%rsi,%rdx), %xmm0
	movdqu	%xmm0, -48(%rax,%rdx)
	movdqu	48(%rsi), %xmm0
	movdqu	%xmm0, 48(%rax)
	movdqu	-64(%rsi,%rdx), %xmm0
	addq	%rdi, %rsi
	movdqu	%xmm0, -64(%rax,%rdx)
	addq	%rax, %rdx
	andq	$-64, %rdx
	cmpq	%rdx, %rcx
	je	.L4
	movq	%rsi, %r9
	subq	%rcx, %r9
	movq	%r9, %rdi
	movq	%r9, %rsi
	leaq	16(%r9), %r8
	addq	$32, %rdi
	addq	$48, %rsi
.L16:
	movdqu	(%rcx,%r9), %xmm0
	movdqa	%xmm0, (%rcx)
	movdqu	(%rcx,%r8), %xmm0
	movdqa	%xmm0, 16(%rcx)
	movdqu	(%rcx,%rdi), %xmm0
	movdqa	%xmm0, 32(%rcx)
	movdqu	(%rcx,%rsi), %xmm0
	movdqa	%xmm0, 48(%rcx)
	addq	$64, %rcx
	cmpq	%rcx, %rdx
	jne	.L16
	.p2align 4,,10
	.p2align 3
.L4:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L23:
	movq	(%rsi), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rsi,%rdx), %rcx
	movq	%rcx, -8(%rax,%rdx)
	ret
.L22:
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	testq	%rdx, %rdx
	je	.L4
.L15:
	movzbl	(%rsi,%rdi), %r8d
	addq	$1, %rcx
	cmpq	%rdx, %rcx
	movb	%r8b, (%rax,%rdi)
	movq	%rcx, %rdi
	jne	.L15
	ret
	.cfi_endproc
.LFE520:
	.size	memcpy_new_u, .-memcpy_new_u
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
