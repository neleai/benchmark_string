# gray
	.file	"test_glibc.c"
	.text
	.p2align 4,,15
.globl reversed
	.type	reversed, @function
reversed:
.LFB12:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE12:
	.size	reversed, .-reversed
	.p2align 4,,15
.globl strstr2
	.type	strstr2, @function
strstr2:
.LFB13:
	.cfi_startproc
	movq	%rdi, %rax
	movslq	%edx, %rdx
	andq	$-64, %rax
	addq	%rdx, %rdi
	cmpq	%rdi, %rax
	jae	.L3
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L6:
  movdqa (%rax),%xmm0
  movdqa 16(%rax),%xmm0
  movdqa 32(%rax),%xmm0
  movdqa 48(%rax),%xmm0
	addq	$64, %rax
	cmpq	%rdi, %rax
	jb	.L6
.L3:
	rep
	ret
.L10:
	.p2align 4,,4
	rep
	ret
	.cfi_endproc
.LFE13:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
