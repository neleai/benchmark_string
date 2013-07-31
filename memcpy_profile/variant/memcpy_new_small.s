	.file	"memcpy_new.c"
	.text
	.p2align 4,,15
	.globl	__memcpy_overlap
	.type	__memcpy_overlap, @function
__memcpy_overlap:
.LFB517:
	.cfi_startproc
	cmpq	%rsi, %rdi
	movq	%rdi, %rax
	jae	.L2
	testq	%rdx, %rdx
	je	.L3
	movq	%rdx, %r9
	leaq	16(%rsi), %rdi
	leaq	16(%rax), %r8
	shrq	$4, %r9
	movq	%r9, %rcx
	salq	$4, %rcx
	cmpq	%rdi, %rax
	setae	%dil
	cmpq	%r8, %rsi
	setae	%r8b
	orl	%r8d, %edi
	cmpq	$15, %rdx
	seta	%r8b
	testb	%r8b, %dil
	je	.L9
	testq	%rcx, %rcx
	je	.L9
	xorl	%edi, %edi
	xorl	%r8d, %r8d
.L5:
	movdqu	(%rsi,%rdi), %xmm8
	addq	$1, %r8
	movdqu	%xmm8, (%rax,%rdi)
	addq	$16, %rdi
	cmpq	%r8, %r9
	ja	.L5
	cmpq	%rcx, %rdx
	je	.L17
.L12:
	movzbl	(%rsi,%rcx), %edi
	movb	%dil, (%rax,%rcx)
	addq	$1, %rcx
	cmpq	%rcx, %rdx
	ja	.L12
	rep
	ret
.L3:
	ret
.L2:
	subq	$1, %rdx
	.p2align 4,,10
	.p2align 3
.L8:
	movzbl	(%rsi,%rdx), %ecx
	movb	%cl, (%rax,%rdx)
	subq	$1, %rdx
	jmp	.L8
.L9:
	xorl	%ecx, %ecx
	jmp	.L12
.L17:
	ret
	.cfi_endproc
.LFE517:
	.size	__memcpy_overlap, .-__memcpy_overlap
	.p2align 4,,15
	.globl	memcpy_new_small
	.type	memcpy_new_small, @function
memcpy_new_small:
.LFB518:
	.cfi_startproc
	movq	%rsi, %rax
	leaq	(%rdx,%rdx), %rcx
	subq	%rdi, %rax
	subq	%rdx, %rax
	cmpq	%rcx, %rax
	jb	.L35
	cmpq	$15, %rdx
	jbe	.L36
	movdqu	(%rsi), %xmm8
	leaq	16(%rdi), %rcx
	movdqu	%xmm8, (%rdi)
	andq	$-16, %rcx
	movq	%rcx, %rax
	subq	%rdi, %rax
	movdqu	-16(%rsi,%rdx), %xmm8
	addq	%rax, %rsi
	subq	%rcx, %rsi
	movdqu	%xmm8, -16(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-16, %rdx
	cmpq	%rdx, %rcx
	je	.L26
	addq %rcx,%rsi
	.p2align 4,,10
	.p2align 4
.L32:
	movdqu	(%rsi), %xmm8
	movdqa	%xmm8, (%rcx)
	addq	$16, %rcx
	addq	$16, %rsi

	cmpq	%rcx, %rdx
	jne	.L32
.L26:
	movq	%rdi, %rax
	ret
.L35:
	jmp	__memcpy_overlap@PLT
.L36:
	testb	$24, %dl
	.p2align 4,,3
	jne	.L37
	testb	$4, %dl
	.p2align 4,,2
	jne	.L38
	testq	%rdx, %rdx
	.p2align 4,,2
	je	.L26
	movzbl	(%rsi), %eax
	testb	$2, %dl
	movb	%al, (%rdi)
	je	.L26
	movzwl	-2(%rsi,%rdx), %eax
	movw	%ax, -2(%rdi,%rdx)
	jmp	.L26
.L37:
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	-8(%rsi,%rdx), %rax
	movq	%rax, -8(%rdi,%rdx)
	jmp	.L26
.L38:
	movl	(%rsi), %eax
	movl	%eax, (%rdi)
	movl	-4(%rsi,%rdx), %eax
	movl	%eax, -4(%rdi,%rdx)
	jmp	.L26
	.cfi_endproc
.LFE518:
	.size	memcpy_new_small, .-memcpy_new_small
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
