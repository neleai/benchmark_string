	.file	"memset_512.c"
	.text
	.p2align 4,,15
	.globl	memset_512
	.type	memset_512, @function
memset_512:
.LFB517:
	.cfi_startproc
	movd	%esi, %xmm8
	movq	%rdi, %rax
	punpcklbw	%xmm8, %xmm8
	punpcklwd	%xmm8, %xmm8
	pshufd	$0, %xmm8, %xmm8
	movq	%xmm8, %rsi
	cmpq	$512, %rdx
	ja     .loop
        cmpq    $256, %rdx
        ja     .to512
        cmpq    $128, %rdx
        ja     .to256
        cmpq    $64,  %rdx
        ja     .to128
        cmpq    $32,  %rdx
        ja     .to64
        cmpq    $16,  %rdx
        ja     .to32

	cmpq	$15, %rdx
	jbe	.L16
        .loop:
	leaq	16(%rdi), %rcx
	movdqu	%xmm8, (%rdi)
	andq	$-16, %rcx
	movdqu	%xmm8, -16(%rdi,%rdx)
	addq	%rdi, %rdx
	andq	$-16, %rdx
	cmpq	%rcx, %rdx
	je	.L4
	.p2align 4,,10
	.p2align 4
.L12:
	movdqa	%xmm8, (%rcx)
	addq	$16, %rcx
	cmpq	%rcx, %rdx
	jne	.L12
.L4:
	rep
	ret
	.p2align 4,,10
	.p2align 4
.L16:
	testb	$8, %dl
	jne	.L17
	testb	$4, %dl
	.p2align 4,,5
	jne	.L18
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	movb	%sil, (%rdi)
.L6:
	testb	$2, %dl
	je	.L4
	movw	%si, -2(%rax,%rdx)
	ret
	.p2align 4,,10
	.p2align 4
.L18:
	movl	%esi, (%rdi)
	movl	%esi, -4(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 4
.L17:
	movq	%rsi, (%rdi)
	movq	%rsi, -8(%rdi,%rdx)
	ret
       
.p2align 4
.to32:
movdqu %xmm8, 0(%rdi)
movdqu %xmm8, -16(%rdi,%rdx)
ret
.p2align 4
.to64:
movdqu %xmm8, 0(%rdi)
movdqu %xmm8, 16(%rdi)
movdqu %xmm8, -16(%rdi,%rdx)
movdqu %xmm8, -32(%rdi,%rdx)
ret
.p2align 4
.to128:
movdqu %xmm8, 0(%rdi)
movdqu %xmm8, 16(%rdi)
movdqu %xmm8, 32(%rdi)
movdqu %xmm8, 48(%rdi)
movdqu %xmm8, -16(%rdi,%rdx)
movdqu %xmm8, -32(%rdi,%rdx)
movdqu %xmm8, -48(%rdi,%rdx)
movdqu %xmm8, -64(%rdi,%rdx)
ret
.p2align 4
.to256:
movdqu %xmm8, 0(%rdi)
movdqu %xmm8, 16(%rdi)
movdqu %xmm8, 32(%rdi)
movdqu %xmm8, 48(%rdi)
movdqu %xmm8, 64(%rdi)
movdqu %xmm8, 80(%rdi)
movdqu %xmm8, 96(%rdi)
movdqu %xmm8, 112(%rdi)
movdqu %xmm8, -16(%rdi,%rdx)
movdqu %xmm8, -32(%rdi,%rdx)
movdqu %xmm8, -48(%rdi,%rdx)
movdqu %xmm8, -64(%rdi,%rdx)
movdqu %xmm8, -80(%rdi,%rdx)
movdqu %xmm8, -96(%rdi,%rdx)
movdqu %xmm8, -112(%rdi,%rdx)
movdqu %xmm8, -128(%rdi,%rdx)
ret
.p2align 4
.to512:
vinsertf128 $1, %xmm8, %ymm8, %ymm8
vmovups %ymm8, 0(%rdi)
vmovups %ymm8, 32(%rdi)
vmovups %ymm8, 64(%rdi)
vmovups %ymm8, 96(%rdi)
vmovups %ymm8, 128(%rdi)
vmovups %ymm8, 160(%rdi)
vmovups %ymm8, 192(%rdi)
vmovups %ymm8, 224(%rdi)
vmovups %ymm8, -32(%rdi,%rdx)
vmovups %ymm8, -64(%rdi,%rdx)
vmovups %ymm8, -96(%rdi,%rdx)
vmovups %ymm8, -128(%rdi,%rdx)
vmovups %ymm8, -160(%rdi,%rdx)
vmovups %ymm8, -192(%rdi,%rdx)
vmovups %ymm8, -224(%rdi,%rdx)
vmovups %ymm8, -256(%rdi,%rdx)
vzeroupper
ret
	.cfi_endproc
.LFE517:
	.size	memset_512, .-memset_512
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
