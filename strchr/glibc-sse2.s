# green
	.file	"strchr.c"
	.text
	.p2align 4,,15
.globl strchr2
	.type	strchr2, @function
strchr2:
.LFB541:
	.cfi_startproc

  movd  %esi, %xmm1
  movq  %rdi, %rcx
  punpcklbw %xmm1, %xmm1
  andq  $~15, %rdi
  pxor  %xmm2, %xmm2
  punpcklbw %xmm1, %xmm1
  orl $0xffffffff, %esi
  movdqa  (%rdi), %xmm0
  pshufd  $0, %xmm1, %xmm1
  subq  %rdi, %rcx
  movdqa  %xmm0, %xmm3
  leaq  16(%rdi), %rdi
  pcmpeqb %xmm1, %xmm0
  pcmpeqb %xmm2, %xmm3
  shl %cl, %esi
  pmovmskb %xmm0, %edx
  pmovmskb %xmm3, %ecx
  andl  %esi, %edx
  andl  %esi, %ecx
  orl %edx, %ecx
  jnz 1f

2:  movdqa  (%rdi), %xmm0
  leaq  16(%rdi), %rdi
  movdqa  %xmm0, %xmm3
  pcmpeqb %xmm1, %xmm0
  pcmpeqb %xmm2, %xmm3
  pmovmskb %xmm0, %edx
  pmovmskb %xmm3, %ecx
  orl %edx, %ecx
  jz  2b

1:  bsfl  %edx, %edx
  jz  4f
  bsfl  %ecx, %ecx
  leaq  -16(%rdi,%rdx), %rax
  cmpl  %edx, %ecx
  je  5f
4:  xorl  %eax, %eax
5:  ret
		.cfi_endproc
.LFE541:
	.size	strchr2, .-strchr2
	.p2align 4,,15
.globl reversed
	.type	reversed, @function
reversed:
.LFB542:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE542:
	.size	reversed, .-reversed
	.p2align 4,,15
.globl strstr2
	.type	strstr2, @function
strstr2:
.LFB543:
	.cfi_startproc
	movsbl	(%rsi), %esi
	jmp	strchr2@PLT
	.cfi_endproc
.LFE543:
	.size	strstr2, .-strstr2
	.ident	"GCC: (Debian 4.5.3-12) 4.5.3"
	.section	.note.GNU-stack,"",@progbits
