# red #	
.file	"unroll.c"
	.text
	.p2align 4,,15
	.type	strstr2v.isra.2, @function
strstr2v.isra.2:
.LFB596:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	cmpl	$8, %edx
	movl	$8, %r10d
	cmovle	%edx, %r10d
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, -16(%rsp)
	movl	%edx, %edi
	subl	%r10d, %edi
	movslq	%edi, %rbx
	subq	$1, %rbx
	testl	%edx, %edx
	leaq	(%rsi,%rbx), %r9
	jle	.L8
	leal	-1(%rdx), %eax
	pxor	%xmm0, %xmm0
	cmpl	$1, %edx
	cltq
	movzbl	(%rsi,%rax), %ecx
	movd	%ecx, %xmm4
	pshufb	%xmm0, %xmm4
	je	.L8
	movzbl	-1(%rsi,%rax), %ecx
	cmpl	$2, %edx
	movd	%ecx, %xmm3
	pshufb	%xmm0, %xmm3
	je	.L8
	movzbl	-2(%rsi,%rax), %ecx
	cmpl	$3, %edx
	movd	%ecx, %xmm6
	pshufb	%xmm0, %xmm6
	je	.L8
	movzbl	-3(%rsi,%rax), %ecx
	cmpl	$4, %edx
	movd	%ecx, %xmm7
	pshufb	%xmm0, %xmm7
	je	.L8
	movzbl	-4(%rsi,%rax), %ecx
	cmpl	$5, %edx
	movd	%ecx, %xmm8
	pshufb	%xmm0, %xmm8
	je	.L8
	movzbl	-5(%rsi,%rax), %ecx
	cmpl	$6, %edx
	movd	%ecx, %xmm9
	pshufb	%xmm0, %xmm9
	je	.L8
	movzbl	-6(%rsi,%rax), %ecx
	cmpl	$7, %edx
	movd	%ecx, %xmm10
	pshufb	%xmm0, %xmm10
	je	.L8
	movzbl	-7(%rsi,%rax), %esi
	movl	%esi, %eax
	movd	%eax, %xmm11
	pshufb	%xmm0, %xmm11
.L8:
	movq	-16(%rsp), %rcx
	movslq	%edx, %rbp
	pxor	%xmm12, %xmm12
	leaq	-1(%rcx,%rbp), %rsi
	movl	%esi, %ecx
	andq	$-64, %rsi
	andl	$63, %ecx
	cmpq	%rsi, -16(%rsp)
	jae	.L9
	movdqa	-16(%rsi), %xmm12
.L9:
	pxor	%xmm0, %xmm0
	movdqa	(%rsi), %xmm2
	movdqa	%xmm0, %xmm5
	movdqa	%xmm2, %xmm13
	movdqa	%xmm0, %xmm1
	pcmpeqb	%xmm2, %xmm5
	palignr	$15, %xmm12, %xmm13
	movdqa	%xmm13, %xmm12
	pmovmskb	%xmm5, %eax
	movdqa	%xmm2, %xmm5
	pxor	%xmm3, %xmm12
	pxor	%xmm4, %xmm5
	cltq
	por	%xmm12, %xmm5
	movdqa	%xmm0, %xmm12
	pcmpeqb	%xmm0, %xmm5
	pmovmskb	%xmm5, %r12d
	movdqa	16(%rsi), %xmm5
	pcmpeqb	%xmm5, %xmm12
	movdqa	%xmm5, %xmm13
	pmovmskb	%xmm12, %r8d
	palignr	$15, %xmm2, %xmm13
	movdqa	%xmm5, %xmm12
	movdqa	%xmm13, %xmm2
	pxor	%xmm4, %xmm12
	movslq	%r8d, %r8
	pxor	%xmm3, %xmm2
	salq	$16, %r8
	por	%xmm2, %xmm12
	movdqa	32(%rsi), %xmm2
	pcmpeqb	%xmm0, %xmm12
	movdqa	%xmm2, %xmm13
	pmovmskb	%xmm12, %r11d
	movdqa	%xmm0, %xmm12
	palignr	$15, %xmm5, %xmm13
	movdqa	%xmm13, %xmm5
	pcmpeqb	%xmm2, %xmm12
	movslq	%r11d, %r11
	pxor	%xmm3, %xmm5
	salq	$16, %r11
	pmovmskb	%xmm12, %edx
	movdqa	%xmm2, %xmm12
	pxor	%xmm4, %xmm12
	salq	$32, %rdx
	orq	%r8, %rdx
	orq	%rdx, %rax
	por	%xmm5, %xmm12
	movdqa	%xmm0, %xmm5
	pcmpeqb	%xmm12, %xmm1
	pmovmskb	%xmm1, %edx
	movdqa	48(%rsi), %xmm1
	pcmpeqb	%xmm1, %xmm5
	movdqa	%xmm1, %xmm12
	salq	$32, %rdx
	pmovmskb	%xmm5, %r8d
	palignr	$15, %xmm2, %xmm12
	movdqa	%xmm1, %xmm5
	movdqa	%xmm12, %xmm2
	orq	%rdx, %r11
	pxor	%xmm4, %xmm5
	movslq	%r12d, %rdx
	pxor	%xmm3, %xmm2
	orq	%rdx, %r11
	salq	$48, %r8
	orq	%rax, %r8
	por	%xmm2, %xmm5
	sarq	%cl, %r8
	salq	%cl, %r8
	pcmpeqb	%xmm0, %xmm5
	pmovmskb	%xmm5, %edx
	salq	$48, %rdx
	orq	%r11, %rdx
	movl	$1, %r11d
	sarq	%cl, %rdx
	subq	%rbp, %r11
	salq	%cl, %rdx
	jmp	.L37
.L54:
	cmpq	%rsi, -16(%rsp)
	pxor	%xmm1, %xmm1
	jae	.L12
	movdqa	-16(%rsi), %xmm1
.L12:
	movdqa	(%rsi), %xmm2
	cmpl	$3, %r10d
	movdqa	%xmm2, %xmm12
	palignr	$14, %xmm1, %xmm12
	pxor	%xmm6, %xmm12
	movdqa	%xmm12, %xmm5
	je	.L14
	movdqa	%xmm2, %xmm13
	cmpl	$4, %r10d
	palignr	$13, %xmm1, %xmm13
	pxor	%xmm7, %xmm13
	por	%xmm12, %xmm13
	movdqa	%xmm13, %xmm5
	je	.L14
	movdqa	%xmm2, %xmm12
	cmpl	$5, %r10d
	palignr	$12, %xmm1, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm13, %xmm12
	movdqa	%xmm12, %xmm5
	je	.L14
	movdqa	%xmm2, %xmm13
	cmpl	$6, %r10d
	palignr	$11, %xmm1, %xmm13
	pxor	%xmm9, %xmm13
	por	%xmm12, %xmm13
	je	.L15
	movdqa	%xmm2, %xmm5
	cmpl	$7, %r10d
	palignr	$10, %xmm1, %xmm5
	pxor	%xmm10, %xmm5
	por	%xmm13, %xmm5
	je	.L16
	movdqa	%xmm2, %xmm12
	palignr	$9, %xmm1, %xmm12
	movdqa	%xmm12, %xmm1
	pxor	%xmm11, %xmm1
	por	%xmm1, %xmm5
.L16:
	pcmpeqb	%xmm0, %xmm5
	movdqa	16(%rsi), %xmm1
	pmovmskb	%xmm5, %ecx
	movdqa	%xmm1, %xmm5
	palignr	$14, %xmm2, %xmm5
	pxor	%xmm6, %xmm5
	movslq	%ecx, %rcx
.L38:
	movdqa	%xmm1, %xmm12
	cmpl	$4, %r10d
	palignr	$13, %xmm2, %xmm12
	pxor	%xmm7, %xmm12
	por	%xmm12, %xmm5
	jle	.L19
.L43:
	movdqa	%xmm1, %xmm12
	cmpl	$5, %r10d
	palignr	$12, %xmm2, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm12, %xmm5
	je	.L19
	movdqa	%xmm1, %xmm12
	cmpl	$6, %r10d
	palignr	$11, %xmm2, %xmm12
	pxor	%xmm9, %xmm12
	por	%xmm12, %xmm5
	je	.L19
	movdqa	%xmm1, %xmm12
	cmpl	$7, %r10d
	palignr	$10, %xmm2, %xmm12
	pxor	%xmm10, %xmm12
	por	%xmm5, %xmm12
	je	.L20
	movdqa	%xmm1, %xmm13
	palignr	$9, %xmm2, %xmm13
	movdqa	%xmm13, %xmm2
	pxor	%xmm11, %xmm2
	por	%xmm2, %xmm12
.L20:
	movdqa	32(%rsi), %xmm2
	pcmpeqb	%xmm0, %xmm12
	movdqa	%xmm2, %xmm5
	pmovmskb	%xmm12, %eax
	movdqa	%xmm2, %xmm12
	palignr	$14, %xmm1, %xmm5
	pxor	%xmm6, %xmm5
	cltq
	palignr	$13, %xmm1, %xmm12
	pxor	%xmm7, %xmm12
	salq	$16, %rax
	orq	%rcx, %rax
	por	%xmm12, %xmm5
	movdqa	%xmm2, %xmm12
	palignr	$12, %xmm1, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm12, %xmm5
.L41:
	movdqa	%xmm2, %xmm12
	cmpl	$6, %r10d
	palignr	$11, %xmm1, %xmm12
	pxor	%xmm9, %xmm12
	por	%xmm12, %xmm5
	je	.L23
	movdqa	%xmm2, %xmm12
	cmpl	$7, %r10d
	palignr	$10, %xmm1, %xmm12
	pxor	%xmm10, %xmm12
	por	%xmm5, %xmm12
	je	.L24
	movdqa	%xmm2, %xmm5
	palignr	$9, %xmm1, %xmm5
	movdqa	%xmm5, %xmm1
	pxor	%xmm11, %xmm1
	por	%xmm1, %xmm12
.L24:
	movdqa	48(%rsi), %xmm1
	pcmpeqb	%xmm0, %xmm12
	movdqa	%xmm1, %xmm5
	pmovmskb	%xmm12, %ecx
	movdqa	%xmm1, %xmm12
	palignr	$14, %xmm2, %xmm5
	pxor	%xmm6, %xmm5
	salq	$32, %rcx
	palignr	$13, %xmm2, %xmm12
	pxor	%xmm7, %xmm12
	orq	%rax, %rcx
	por	%xmm12, %xmm5
	movdqa	%xmm1, %xmm12
	palignr	$12, %xmm2, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm12, %xmm5
.L42:
	movdqa	%xmm1, %xmm12
	cmpl	$6, %r10d
	palignr	$11, %xmm2, %xmm12
	pxor	%xmm9, %xmm12
	por	%xmm12, %xmm5
	je	.L28
	movdqa	%xmm1, %xmm12
	cmpl	$7, %r10d
	palignr	$10, %xmm2, %xmm12
	pxor	%xmm10, %xmm12
	por	%xmm12, %xmm5
	je	.L28
	movdqa	%xmm1, %xmm12
	palignr	$9, %xmm2, %xmm12
	movdqa	%xmm12, %xmm2
	pxor	%xmm11, %xmm2
	por	%xmm2, %xmm5
.L28:
	pcmpeqb	%xmm0, %xmm5
	pmovmskb	%xmm5, %eax
	salq	$48, %rax
	orq	%rcx, %rax
	andq	%rax, %rdx
	movq	%rdx, %rax
	orq	%r8, %rax
	jne	.L11
.L10:
	addq	$64, %rsi
	movdqa	%xmm0, %xmm5
	movdqa	(%rsi), %xmm2
	pcmpeqb	%xmm2, %xmm5
	movdqa	%xmm2, %xmm12
	pmovmskb	%xmm5, %ecx
	palignr	$15, %xmm1, %xmm12
	movdqa	%xmm2, %xmm5
	movdqa	%xmm12, %xmm1
	pxor	%xmm4, %xmm5
	movslq	%ecx, %rcx
	pxor	%xmm3, %xmm1
	por	%xmm1, %xmm5
	movdqa	16(%rsi), %xmm1
	pcmpeqb	%xmm0, %xmm5
	movdqa	%xmm1, %xmm13
	pmovmskb	%xmm5, %eax
	movdqa	%xmm0, %xmm5
	palignr	$15, %xmm2, %xmm13
	movdqa	%xmm13, %xmm2
	pcmpeqb	%xmm1, %xmm5
	cltq
	pxor	%xmm3, %xmm2
	pmovmskb	%xmm5, %r8d
	movdqa	%xmm1, %xmm5
	pxor	%xmm4, %xmm5
	movslq	%r8d, %r8
	salq	$16, %r8
	por	%xmm2, %xmm5
	movdqa	32(%rsi), %xmm2
	pcmpeqb	%xmm0, %xmm5
	movdqa	%xmm2, %xmm12
	pmovmskb	%xmm5, %edx
	movdqa	%xmm0, %xmm5
	palignr	$15, %xmm1, %xmm12
	movdqa	%xmm12, %xmm1
	pcmpeqb	%xmm2, %xmm5
	movslq	%edx, %rdx
	pxor	%xmm3, %xmm1
	salq	$16, %rdx
	pmovmskb	%xmm5, %ebp
	movdqa	%xmm2, %xmm5
	pxor	%xmm4, %xmm5
	salq	$32, %rbp
	orq	%rbp, %r8
	orq	%rcx, %r8
	por	%xmm1, %xmm5
	movdqa	48(%rsi), %xmm1
	movdqa	%xmm1, %xmm13
	pcmpeqb	%xmm0, %xmm5
	palignr	$15, %xmm2, %xmm13
	movdqa	%xmm13, %xmm2
	pmovmskb	%xmm5, %ecx
	movdqa	%xmm0, %xmm5
	pxor	%xmm3, %xmm2
	pcmpeqb	%xmm1, %xmm5
	salq	$32, %rcx
	orq	%rcx, %rdx
	orq	%rax, %rdx
	pmovmskb	%xmm5, %eax
	movdqa	%xmm1, %xmm5
	salq	$48, %rax
	pxor	%xmm4, %xmm5
	orq	%rax, %r8
	por	%xmm2, %xmm5
	pcmpeqb	%xmm0, %xmm5
	pmovmskb	%xmm5, %eax
	salq	$48, %rax
	orq	%rax, %rdx
.L37:
	movq	%r8, %rax
	prefetchnta	256(%rsi)
	orq	%rdx, %rax
	je	.L10
	cmpl	$2, %r10d
	jg	.L54
.L11:
	testq	%r8, %r8
	jne	.L55
	movq	%rbx, %r14
	.p2align 4,,10
	.p2align 3
.L49:
	testq	%rdx, %rdx
	je	.L35
	bsfq	%rdx, %rcx
	movslq	%ecx, %rax
	addq	%r11, %rax
	addq	%rsi, %rax
	cmpl	$0, %edi
	jle	.L31
	leaq	(%rax,%r14), %r12
	movzbl	(%r9), %ebx
	cmpb	%bl, (%r12)
	jne	.L32
	movq	%r9, %r13
	xorl	%ebp, %ebp
	movq	%r14, %rbx
	jmp	.L34
	.p2align 4,,10
	.p2align 3
.L57:
	movzbl	-1(%r12), %r15d
	movzbl	-1(%r13), %r14d
	subq	$1, %r12
	subq	$1, %r13
	cmpb	%r14b, %r15b
	jne	.L56
.L34:
	addl	$1, %ebp
	cmpl	%edi, %ebp
	jne	.L57
.L33:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L31:
	.cfi_restore_state
	je	.L33
	.p2align 4,,10
	.p2align 3
.L32:
	addl	$1, %ecx
	cmpl	$63, %ecx
	jbe	.L58
.L35:
	testq	%r8, %r8
	movq	%r14, %rbx
	je	.L10
	xorl	%eax, %eax
	jmp	.L33
	.p2align 4,,10
	.p2align 3
.L58:
	sarq	%cl, %rdx
	salq	%cl, %rdx
	jmp	.L49
	.p2align 4,,10
	.p2align 3
.L56:
	movq	%rbx, %r14
	jmp	.L32
.L14:
	pcmpeqb	%xmm0, %xmm5
	movdqa	16(%rsi), %xmm1
	cmpl	$3, %r10d
	pmovmskb	%xmm5, %ecx
	movdqa	%xmm1, %xmm5
	movslq	%ecx, %rcx
	palignr	$14, %xmm2, %xmm5
	pxor	%xmm6, %xmm5
	jne	.L38
.L19:
	pcmpeqb	%xmm0, %xmm5
	movdqa	32(%rsi), %xmm2
	pmovmskb	%xmm5, %eax
	movdqa	%xmm2, %xmm5
	cltq
	palignr	$14, %xmm1, %xmm5
	pxor	%xmm6, %xmm5
	salq	$16, %rax
	orq	%rcx, %rax
	cmpl	$3, %r10d
	jne	.L39
.L23:
	pcmpeqb	%xmm0, %xmm5
	movdqa	48(%rsi), %xmm1
	pmovmskb	%xmm5, %ecx
	movdqa	%xmm1, %xmm5
	salq	$32, %rcx
	palignr	$14, %xmm2, %xmm5
	pxor	%xmm6, %xmm5
	orq	%rax, %rcx
	cmpl	$3, %r10d
	je	.L28
	movdqa	%xmm1, %xmm12
	cmpl	$4, %r10d
	palignr	$13, %xmm2, %xmm12
	pxor	%xmm7, %xmm12
	por	%xmm12, %xmm5
	jle	.L28
	movdqa	%xmm1, %xmm12
	cmpl	$5, %r10d
	palignr	$12, %xmm2, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm12, %xmm5
	jne	.L42
	jmp	.L28
.L15:
	movdqa	16(%rsi), %xmm1
	pcmpeqb	%xmm0, %xmm13
	movdqa	%xmm1, %xmm5
	pmovmskb	%xmm13, %ecx
	movdqa	%xmm1, %xmm12
	palignr	$14, %xmm2, %xmm5
	pxor	%xmm6, %xmm5
	movslq	%ecx, %rcx
	palignr	$13, %xmm2, %xmm12
	pxor	%xmm7, %xmm12
	por	%xmm12, %xmm5
	jmp	.L43
.L39:
	movdqa	%xmm2, %xmm12
	cmpl	$4, %r10d
	palignr	$13, %xmm1, %xmm12
	pxor	%xmm7, %xmm12
	por	%xmm12, %xmm5
	jle	.L23
	movdqa	%xmm2, %xmm12
	cmpl	$5, %r10d
	palignr	$12, %xmm1, %xmm12
	pxor	%xmm8, %xmm12
	por	%xmm12, %xmm5
	jne	.L41
	jmp	.L23
.L55:
	bsfq	%r8, %rax
	cmpl	$63, %eax
	ja	.L46
	movl	$64, %ecx
	movq	%rbx, %r14
	subl	%eax, %ecx
	salq	%cl, %rdx
	sarq	%cl, %rdx
	jmp	.L49
.L46:
	xorl	%edx, %edx
	movq	%rbx, %r14
	jmp	.L49
	.cfi_endproc
.LFE596:
	.size	strstr2v.isra.2, .-strstr2v.isra.2
	.p2align 4,,15
	.globl	reversed
	.type	reversed, @function
reversed:
.LFB0:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE0:
	.size	reversed, .-reversed
	.p2align 4,,15
	.globl	strstr2two_way
	.type	strstr2two_way, @function
strstr2two_way:
.LFB591:
	.cfi_startproc
	rep
	ret
	.cfi_endproc
.LFE591:
	.size	strstr2two_way, .-strstr2two_way
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB593:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movzbl	(%rsi), %edx
	movzbl	%dl, %esi
	movb	%dl, 15(%rsp)
	call	strchr@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L62
	movzbl	15(%rsp), %r13d
	xorl	%edi, %edi
	xorl	%r14d, %r14d
	movslq	%edi, %rax
	subq	%rax, %rbx
	testb	%r13b, %r13b
	je	.L73
	.p2align 4,,10
	.p2align 3
.L87:
	leaq	(%rbx,%rax), %rsi
	cmpb	%r13b, (%rsi)
	jne	.L74
	addq	$1, %rax
	movl	%edi, %r12d
	jmp	.L65
	.p2align 4,,10
	.p2align 3
.L83:
	leaq	1(%rax), %rcx
	leaq	(%rbx,%rax), %rsi
	cmpb	%dl, -1(%rbx,%rcx)
	jne	.L72
	movq	%rcx, %rax
.L65:
	movzbl	0(%rbp,%rax), %edx
	addl	$1, %r12d
	testb	%dl, %dl
	jne	.L83
	addl	$1, %r14d
	cmpl	$4, %r14d
	je	.L66
.L88:
	testl	%edi, %edi
	jle	.L76
	movzbl	15(%rsp), %ecx
	movl	$1, %eax
	cmpb	%cl, (%rbx)
	je	.L81
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L85:
	leaq	1(%rax), %rdx
	leaq	(%rbx,%rax), %rsi
	movzbl	-1(%rbx,%rdx), %ecx
	cmpb	%cl, 0(%rbp,%rax)
	jne	.L72
	movq	%rdx, %rax
.L81:
	cmpl	%edi, %eax
	movl	%eax, %r12d
	jl	.L85
.L67:
	cmpl	%edi, %r12d
	je	.L62
	movslq	%r12d, %rax
	leaq	(%rbx,%rax), %rsi
.L72:
	cmpb	$0, (%rsi)
	je	.L79
	movq	%rbx, %rdx
	subq	%r15, %rdx
	cmpq	$127, %rdx
	jg	.L86
	movzbl	0(%rbp,%rax), %r13d
	leaq	1(%rbx,%rax), %rdi
	movzbl	%r13b, %esi
	call	strchr@PLT
	testq	%rax, %rax
	movq	%rax, %rbx
	je	.L62
	movl	%r12d, %edi
	movslq	%edi, %rax
	subq	%rax, %rbx
	testb	%r13b, %r13b
	jne	.L87
.L73:
	addl	$1, %r14d
	movl	%edi, %r12d
	cmpl	$4, %r14d
	jne	.L88
.L66:
	movl	%r12d, %edx
	jmp	.L82
.L79:
	xorl	%ebx, %ebx
.L62:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L74:
	.cfi_restore_state
	movl	%edi, %r12d
	jmp	.L72
.L89:
	movq	%rbx, %rsi
	xorb	%al, %al
	xorl	%r12d, %r12d
	jmp	.L72
.L76:
	xorl	%r12d, %r12d
	jmp	.L67
.L86:
	movq	%rbp, %rdi
	call	strlen@PLT
	movl	%eax, %edx
.L82:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	strstr2v.isra.2
	.cfi_endproc
.LFE593:
	.size	strstr2, .-strstr2
	.globl	treshold
	.section	.rodata
	.align 4
	.type	treshold, @object
	.size	treshold, 4
treshold:
	.long	128
	.globl	prefetch
	.align 4
	.type	prefetch, @object
	.size	prefetch, 4
prefetch:
	.long	4
	.globl	phase2
	.align 4
	.type	phase2, @object
	.size	phase2, 4
phase2:
	.long	8
	.globl	phase1
	.align 4
	.type	phase1, @object
	.size	phase1, 4
phase1:
	.long	2
	.globl	unroll
	.align 4
	.type	unroll, @object
	.size	unroll, 4
unroll:
	.long	4
	.ident	"GCC: (Debian 4.6.3-7) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
