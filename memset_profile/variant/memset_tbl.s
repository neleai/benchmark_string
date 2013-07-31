	.file	"memset2.c"
	.text
	.p2align 4,,15
	.globl	memset_new_tbl
	.type	memset_new_tbl, @function
memset_new_tbl:
.LFB519:
	.cfi_startproc
	movd	%esi, %xmm0
	cmpq	$15, %rdx
	movq	%rdi, %rsi
        movq    %rdi, %rax
 	pxor    %xmm1, %xmm1
        pshufb  %xmm1, %xmm0
	movq	%xmm0, %rcx
	jbe	.L16
	cmpq	$1023, %rdx
	jbe	.L17

        leaq    16(%rdi), %rcx
        movdqu  %xmm8, (%rdi)
        andq    $-16, %rcx
        movdqu  %xmm8, -16(%rdi,%rdx)
        addq    %rdi, %rdx
        andq    $-16, %rdx
        cmpq    %rcx, %rdx
        je      .L7
        .p2align 4,,10
        .p2align 4
.L12:
        movdqa  %xmm8, (%rcx)
        addq    $16, %rcx
        cmpq    %rcx, %rdx
        jne     .L12


.L7:
	rep
	ret
	.p2align 4,,10
	.p2align 3
.L16:
	testb	$8, %dl
	jne	.L18
	testb	$4, %dl
	.p2align 4,,2
	jne	.L19
	testb	$1, %dl
	.p2align 4,,2
	je	.L6
	movb	%cl, (%rdi)
.L6:
	testb	$2, %dl
	je	.L7
	movw	%cx, -2(%rdi,%rdx)
	ret
.L19:
	movl	%ecx, (%rdi)
	movl	%ecx, -4(%rdi,%rdx)
	ret

	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rcx, (%rdi)
	movq	%rcx, -8(%rdi,%rdx)
	ret
	.p2align 4,,10
	.p2align 3
.L17:
	leaq	-16(%rdi,%rdx), %rdx
	andq	$-16, %rsi
	movdqu	%xmm0, (%rdi)
	movdqu	%xmm0, (%rdx)
	andq	$-16, %rdx
        movq    %rdx, %rcx
	subq	%rsi, %rdx
	sarq	%rdx
        lea TABLE(%rip),%rdi
        subq %rdx,%rdi
        jmpq *%rdi


.p2align 3
 vmovdqa %xmm0, -1024(%rcx)
.p2align 3
 vmovdqa %xmm0, -1008(%rcx)
.p2align 3
 vmovdqa %xmm0, -992(%rcx)
.p2align 3
 vmovdqa %xmm0, -976(%rcx)
.p2align 3
 vmovdqa %xmm0, -960(%rcx)
.p2align 3
 vmovdqa %xmm0, -944(%rcx)
.p2align 3
 vmovdqa %xmm0, -928(%rcx)
.p2align 3
 vmovdqa %xmm0, -912(%rcx)
.p2align 3
 vmovdqa %xmm0, -896(%rcx)
.p2align 3
 vmovdqa %xmm0, -880(%rcx)
.p2align 3
 vmovdqa %xmm0, -864(%rcx)
.p2align 3
 vmovdqa %xmm0, -848(%rcx)
.p2align 3
 vmovdqa %xmm0, -832(%rcx)
.p2align 3
 vmovdqa %xmm0, -816(%rcx)
.p2align 3
 vmovdqa %xmm0, -800(%rcx)
.p2align 3
 vmovdqa %xmm0, -784(%rcx)
.p2align 3
 vmovdqa %xmm0, -768(%rcx)
.p2align 3
 vmovdqa %xmm0, -752(%rcx)
.p2align 3
 vmovdqa %xmm0, -736(%rcx)
.p2align 3
 vmovdqa %xmm0, -720(%rcx)
.p2align 3
 vmovdqa %xmm0, -704(%rcx)
.p2align 3
 vmovdqa %xmm0, -688(%rcx)
.p2align 3
 vmovdqa %xmm0, -672(%rcx)
.p2align 3
 vmovdqa %xmm0, -656(%rcx)
.p2align 3
 vmovdqa %xmm0, -640(%rcx)
.p2align 3
 vmovdqa %xmm0, -624(%rcx)
.p2align 3
 vmovdqa %xmm0, -608(%rcx)
.p2align 3
 vmovdqa %xmm0, -592(%rcx)
.p2align 3
 vmovdqa %xmm0, -576(%rcx)
.p2align 3
 vmovdqa %xmm0, -560(%rcx)
.p2align 3
 vmovdqa %xmm0, -544(%rcx)
.p2align 3
 vmovdqa %xmm0, -528(%rcx)
.p2align 3
 vmovdqa %xmm0, -512(%rcx)
.p2align 3
 vmovdqa %xmm0, -496(%rcx)
.p2align 3
 vmovdqa %xmm0, -480(%rcx)
.p2align 3
 vmovdqa %xmm0, -464(%rcx)
.p2align 3
 vmovdqa %xmm0, -448(%rcx)
.p2align 3
 vmovdqa %xmm0, -432(%rcx)
.p2align 3
 vmovdqa %xmm0, -416(%rcx)
.p2align 3
 vmovdqa %xmm0, -400(%rcx)
.p2align 3
 vmovdqa %xmm0, -384(%rcx)
.p2align 3
 vmovdqa %xmm0, -368(%rcx)
.p2align 3
 vmovdqa %xmm0, -352(%rcx)
.p2align 3
 vmovdqa %xmm0, -336(%rcx)
.p2align 3
 vmovdqa %xmm0, -320(%rcx)
.p2align 3
 vmovdqa %xmm0, -304(%rcx)
.p2align 3
 vmovdqa %xmm0, -288(%rcx)
.p2align 3
 vmovdqa %xmm0, -272(%rcx)
.p2align 3
 vmovdqa %xmm0, -256(%rcx)
.p2align 3
 vmovdqa %xmm0, -240(%rcx)
.p2align 3
 vmovdqa %xmm0, -224(%rcx)
.p2align 3
 vmovdqa %xmm0, -208(%rcx)
.p2align 3
 vmovdqa %xmm0, -192(%rcx)
.p2align 3
 vmovdqa %xmm0, -176(%rcx)
.p2align 3
 vmovdqa %xmm0, -160(%rcx)
.p2align 3
 vmovdqa %xmm0, -144(%rcx)
.p2align 3
 vmovdqa %xmm0, -128(%rcx)
.p2align 3
 vmovdqa %xmm0, -112(%rcx)
.p2align 3
 vmovdqa %xmm0, -96(%rcx)
.p2align 3
 vmovdqa %xmm0, -80(%rcx)
.p2align 3
 vmovdqa %xmm0, -64(%rcx)
.p2align 3
 vmovdqa %xmm0, -48(%rcx)
.p2align 3
 vmovdqa %xmm0, -32(%rcx)
.p2align 3
 vmovdqa %xmm0, -16(%rcx)
.p2align 3
 vmovdqa %xmm0, (%rcx)
.p2align 3
	TABLE:
        ret


	.p2align 4,,10
	.p2align 3
	.cfi_endproc
.LFE519:
	.size	memset_new_tbl, .-memset_new_tbl
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
