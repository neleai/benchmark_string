# cyan
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
	.globl	__strlen_sse2
	.type	__strlen_sse2, @function
__strlen_sse2:
  .cfi_startproc



	xor	%eax, %eax
	cmpb	$0, (%rdi)
	jz	.exit_tail0
	cmpb	$0, 1(%rdi)
	jz	.exit_tail1
	cmpb	$0, 2(%rdi)
	jz	.exit_tail2
	cmpb	$0, 3(%rdi)
	jz	.exit_tail3

	cmpb	$0, 4(%rdi)
	jz	.exit_tail4
	cmpb	$0, 5(%rdi)
	jz	.exit_tail5
	cmpb	$0, 6(%rdi)
	jz	.exit_tail6
	cmpb	$0, 7(%rdi)
	jz	.exit_tail7

	cmpb	$0, 8(%rdi)
	jz	.exit_tail8
	cmpb	$0, 9(%rdi)
	jz	.exit_tail9
	cmpb	$0, 10(%rdi)
	jz	.exit_tail10
	cmpb	$0, 11(%rdi)
	jz	.exit_tail11

	cmpb	$0, 12(%rdi)
	jz	.exit_tail12
	cmpb	$0, 13(%rdi)
	jz	.exit_tail13
	cmpb	$0, 14(%rdi)
	jz	.exit_tail14
	cmpb	$0, 15(%rdi)
	jz	.exit_tail15
	pxor	%xmm0, %xmm0
	lea	16(%rdi), %rcx
	lea	16(%rdi), %rax
	and	$-16, %rax

	pcmpeqb	(%rax), %xmm0
	pmovmskb %xmm0, %edx
	pxor	%xmm1, %xmm1
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm1
	pmovmskb %xmm1, %edx
	pxor	%xmm2, %xmm2
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm2
	pmovmskb %xmm2, %edx
	pxor	%xmm3, %xmm3
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm3
	pmovmskb %xmm3, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm0
	pmovmskb %xmm0, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm1
	pmovmskb %xmm1, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm2
	pmovmskb %xmm2, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm3
	pmovmskb %xmm3, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm0
	pmovmskb %xmm0, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm1
	pmovmskb %xmm1, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm2
	pmovmskb %xmm2, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm3
	pmovmskb %xmm3, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm0
	pmovmskb %xmm0, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm1
	pmovmskb %xmm1, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm2
	pmovmskb %xmm2, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	pcmpeqb	(%rax), %xmm3
	pmovmskb %xmm3, %edx
	test	%edx, %edx
	lea	16(%rax), %rax
	jnz	.exit

	and	$-0x40, %rax

	.p2align 4
.aligned_64:
	pcmpeqb	(%rax), %xmm0
	pcmpeqb	16(%rax), %xmm1
	pcmpeqb	32(%rax), %xmm2
	pcmpeqb	48(%rax), %xmm3
	pmovmskb %xmm0, %edx
	pmovmskb %xmm1, %r11d
	pmovmskb %xmm2, %r10d
	pmovmskb %xmm3, %r9d
	or	%edx, %r9d
	or	%r11d, %r9d
	or	%r10d, %r9d
	lea	64(%rax), %rax
	jz	.aligned_64

	test	%edx, %edx
	jnz	.aligned_64_exit_16
	test	%r11d, %r11d
	jnz	.aligned_64_exit_32
	test	%r10d, %r10d
	jnz	.aligned_64_exit_48
.aligned_64_exit_64:
	pmovmskb %xmm3, %edx
	jmp	.aligned_64_exit
.aligned_64_exit_48:
	lea	-16(%rax), %rax
	mov	%r10d, %edx
	jmp	.aligned_64_exit
.aligned_64_exit_32:
	lea	-32(%rax), %rax
	mov	%r11d, %edx
	jmp	.aligned_64_exit
.aligned_64_exit_16:
	lea	-48(%rax), %rax
.aligned_64_exit:
.exit:
	sub	%rcx, %rax
	test	%dl, %dl
	jz	.exit_high
	test	$0x01, %dl
	jnz	.exit_tail0

	test	$0x02, %dl
	jnz	.exit_tail1

	test	$0x04, %dl
	jnz	.exit_tail2

	test	$0x08, %dl
	jnz	.exit_tail3

	test	$0x10, %dl
	jnz	.exit_tail4

	test	$0x20, %dl
	jnz	.exit_tail5

	test	$0x40, %dl
	jnz	.exit_tail6
	add	$7, %eax
.exit_tail0:
	ret

.exit_high:
	add	$8, %eax
	test	$0x01, %dh
	jnz	.exit_tail0

	test	$0x02, %dh
	jnz	.exit_tail1

	test	$0x04, %dh
	jnz	.exit_tail2

	test	$0x08, %dh
	jnz	.exit_tail3

	test	$0x10, %dh
	jnz	.exit_tail4

	test	$0x20, %dh
	jnz	.exit_tail5

	test	$0x40, %dh
	jnz	.exit_tail6
	add	$7, %eax
	ret


	.p2align 4
.exit_tail1:
	add	$1, %eax
	ret

	.p2align 4
.exit_tail2:
	add	$2, %eax
	ret

	.p2align 4
.exit_tail3:
	add	$3, %eax
	ret

	.p2align 4
.exit_tail4:
	add	$4, %eax
	ret

	.p2align 4
.exit_tail5:
	add	$5, %eax
	ret

	.p2align 4
.exit_tail6:
	add	$6, %eax
	ret

	.p2align 4
.exit_tail7:
	add	$7, %eax
	ret

	.p2align 4
.exit_tail8:
	add	$8, %eax
	ret

	.p2align 4
.exit_tail9:
	add	$9, %eax
	ret

	.p2align 4
.exit_tail10:
	add	$10, %eax
	ret

	.p2align 4
.exit_tail11:
	add	$11, %eax
	ret

	.p2align 4
.exit_tail12:
	add	$12, %eax
	ret

	.p2align 4
.exit_tail13:
	add	$13, %eax
	ret

	.p2align 4
.exit_tail14:
	add	$14, %eax
	ret

	.p2align 4
.exit_tail15:
	add	$15, %eax
	ret

	.cfi_endproc
.LFE552:
	.size	__strlen_sse2, .-__strlen_sse2
	.p2align 4,,15
	.globl	strstr2
	.type	strstr2, @function
strstr2:
.LFB553:
	.cfi_startproc
	jmp	__strlen_sse2@PLT
	.cfi_endproc
.LFE553:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.7.1-2) 4.7.1"
	.section	.note.GNU-stack,"",@progbits
