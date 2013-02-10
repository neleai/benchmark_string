/* strlen_avx2(str) -- determine the length of the string STR.
   Copyright (C) 2012 Free Software Foundation, Inc.
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

#include <sysdep.h>


	.text
ENTRY(strlen_avx2)
  vzeroupper
	movq	%rdi, %rax
	vpxor	%ymm8, %ymm8, %ymm8
  andq	$-64, %rax
	vpcmpeqb    (%rax), %ymm8, %ymm9
	vpcmpeqb  32(%rax), %ymm8, %ymm10
  vpmovmskb %ymm9, %rcx
  vpmovmskb %ymm10, %rdx
  salq $32, %rdx
  orq %rcx, %rdx
  movl	%edi, %ecx
/*	andl	$63, %ecx # x64 shift do modulo implicitly */
	sarq	%cl, %rdx
	testq %rdx,%rdx
	je	L(loop)
  vzeroupper
	bsfq	%rdx, %rax
	ret

	.p2align 4,,10
	.p2align 3
L(ret0):
	addq	$64, %rax
L(ret64):
  vpmovmskb %ymm9, %rcx
  vpmovmskb %ymm10, %rdx
  salq $32, %rdx
  orq %rcx, %rdx
	bsfq	%rdx, %rdx
	addq	%rdx, %rax
	subq	%rdi, %rax
  vzeroupper
	ret

	.p2align 4,,10
	.p2align 3
L(loop):
	vpcmpeqb  64(%rax), %ymm8, %ymm9
	vpcmpeqb  96(%rax), %ymm8, %ymm10
  vpor %ymm9, %ymm10, %ymm11
	vpmovmskb	%ymm11, %edx
	testl	%edx, %edx
	jne	L(ret0)
	subq	$-128, %rax
	vpcmpeqb    (%rax), %ymm8, %ymm9
	vpcmpeqb  32(%rax), %ymm8, %ymm10
  vpor %ymm9, %ymm10, %ymm11
	vpmovmskb	%ymm11, %edx
	testl	%edx, %edx
	je	L(loop)
	jmp	L(ret64)
END(strlen_avx2)
libc_hidden_builtin_def (strlen_avx2)
