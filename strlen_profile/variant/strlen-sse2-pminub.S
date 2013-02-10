/* strlen SSE2
   Copyright (C) 2011 Free Software Foundation, Inc.
   Contributed by Intel Corporation.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <http://www.gnu.org/licenses/>.  */

#if !defined NOT_IN_libc && (defined SHARED || defined USE_AS_STRCAT)

# ifndef USE_AS_STRCAT

#  include <sysdep.h>

#  define RETURN ret

	.section .text.sse2,"ax",@progbits
ENTRY (__strlen_sse2_pminub)

# endif
	xor	%rax, %rax
	mov	%edi, %ecx
	and	$0x3f, %ecx
	pxor	%xmm8, %xmm8
	cmp	$0x30, %ecx
	ja	L(next)
	movdqu	(%rdi), %xmm9
	pcmpeqb	%xmm9, %xmm8
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit_less16)
	mov	%rdi, %rax
	and	$-16, %rax
	jmp	L(align16_start)
L(next):
	mov	%rdi, %rax
	and	$-16, %rax
	pcmpeqb	(%rax), %xmm8
	mov	$-1, %r10d
	sub	%rax, %rcx
	shl	%cl, %r10d
	pmovmskb %xmm8, %edx
	and	%r10d, %edx
	jnz	L(exit)
L(align16_start):
	pxor	%xmm8, %xmm8
	pxor	%xmm9, %xmm9
	pxor	%xmm10, %xmm10
	pxor	%xmm11, %xmm11
	pcmpeqb	16(%rax), %xmm8
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit16)

	pcmpeqb	32(%rax), %xmm9
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit32)

	pcmpeqb	48(%rax), %xmm10
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit48)

	pcmpeqb	64(%rax), %xmm11
	pmovmskb %xmm11, %edx
	test	%edx, %edx
	jnz	L(exit64)

	pcmpeqb	80(%rax), %xmm8
	add	$64, %rax
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit16)

	pcmpeqb	32(%rax), %xmm9
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit32)

	pcmpeqb	48(%rax), %xmm10
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit48)

	pcmpeqb	64(%rax), %xmm11
	pmovmskb %xmm11, %edx
	test	%edx, %edx
	jnz	L(exit64)

	pcmpeqb	80(%rax), %xmm8
	add	$64, %rax
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit16)

	pcmpeqb	32(%rax), %xmm9
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit32)

	pcmpeqb	48(%rax), %xmm10
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit48)

	pcmpeqb	64(%rax), %xmm11
	pmovmskb %xmm11, %edx
	test	%edx, %edx
	jnz	L(exit64)

	pcmpeqb	80(%rax), %xmm8
	add	$64, %rax
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit16)

	pcmpeqb	32(%rax), %xmm9
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit32)

	pcmpeqb	48(%rax), %xmm10
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit48)

	pcmpeqb	64(%rax), %xmm11
	pmovmskb %xmm11, %edx
	test	%edx, %edx
	jnz	L(exit64)


	test	$0x3f, %rax
	jz	L(align64_loop)

	pcmpeqb	80(%rax), %xmm8
	add	$80, %rax
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit)

	test	$0x3f, %rax
	jz	L(align64_loop)

	pcmpeqb	16(%rax), %xmm9
	add	$16, %rax
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit)

	test	$0x3f, %rax
	jz	L(align64_loop)

	pcmpeqb	16(%rax), %xmm10
	add	$16, %rax
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit)

	test	$0x3f, %rax
	jz	L(align64_loop)

	pcmpeqb	16(%rax), %xmm11
	add	$16, %rax
	pmovmskb %xmm11, %edx
	test	%edx, %edx
	jnz	L(exit)

	add	$16, %rax
	.p2align 4
	L(align64_loop):
	movaps	(%rax),	%xmm12
	pminub	16(%rax),	%xmm12
	movaps	32(%rax),	%xmm13
	pminub	48(%rax),	%xmm13
	add	$64,	%rax
	pminub	%xmm12,	%xmm13
	pcmpeqb	%xmm8,	%xmm13
	pmovmskb %xmm13,	%edx
	test	%edx,	%edx
	jz	L(align64_loop)


	pcmpeqb	-64(%rax), %xmm8
	sub	$80,	%rax
	pmovmskb %xmm8, %edx
	test	%edx, %edx
	jnz	L(exit16)

	pcmpeqb	32(%rax), %xmm9
	pmovmskb %xmm9, %edx
	test	%edx, %edx
	jnz	L(exit32)

	pcmpeqb	48(%rax), %xmm10
	pmovmskb %xmm10, %edx
	test	%edx, %edx
	jnz	L(exit48)

	pcmpeqb	64(%rax), %xmm11
	pmovmskb %xmm11, %edx
	sub	%rdi, %rax
	bsf	%rdx, %rdx
	add	%rdx, %rax
	add	$64, %rax
	RETURN

	.p2align 4
L(exit):
	sub	%rdi, %rax
L(exit_less16):
	bsf	%rdx, %rdx
	add	%rdx, %rax
	RETURN
	.p2align 4
L(exit16):
	sub	%rdi, %rax
	bsf	%rdx, %rdx
	add	%rdx, %rax
	add	$16, %rax
	RETURN
	.p2align 4
L(exit32):
	sub	%rdi, %rax
	bsf	%rdx, %rdx
	add	%rdx, %rax
	add	$32, %rax
	RETURN
	.p2align 4
L(exit48):
	sub	%rdi, %rax
	bsf	%rdx, %rdx
	add	%rdx, %rax
	add	$48, %rax
	RETURN
	.p2align 4
L(exit64):
	sub	%rdi, %rax
	bsf	%rdx, %rdx
	add	%rdx, %rax
	add	$64, %rax
# ifndef USE_AS_STRCAT
	RETURN

END (__strlen_sse2_pminub)
# endif
#endif
