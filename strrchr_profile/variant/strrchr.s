# 1 "variant/__strrchr_sse2.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "variant/__strrchr_sse2.S"
# 20 "variant/__strrchr_sse2.S"
# 1 "variant/sysdep.h" 1
# 21 "variant/__strrchr_sse2.S" 2


 .text
.text ;.globl __strrchr_sse2; .type __strrchr_sse2, @function;__strrchr_sse2:; .cfi_startproc
 movd %esi, %xmm1
 movq %rdi, %rcx
 punpcklbw %xmm1, %xmm1
 andq $~15, %rdi
 pxor %xmm2, %xmm2
 punpcklbw %xmm1, %xmm1
 orl $0xffffffff, %esi
 movdqa (%rdi), %xmm0
 pshufd $0, %xmm1, %xmm1
 subq %rdi, %rcx
 movdqa %xmm0, %xmm3
 leaq 16(%rdi), %rdi
 pcmpeqb %xmm1, %xmm0
 pcmpeqb %xmm2, %xmm3
 shl %cl, %esi
 pmovmskb %xmm0, %edx
 pmovmskb %xmm3, %ecx
 andl %esi, %edx
 andl %esi, %ecx
 xorl %eax, %eax
 movl %edx, %esi
 orl %ecx, %esi
 jnz 1f

2: movdqa (%rdi), %xmm0
 leaq 16(%rdi), %rdi
 movdqa %xmm0, %xmm3
 pcmpeqb %xmm1, %xmm0
 pcmpeqb %xmm2, %xmm3
 pmovmskb %xmm0, %edx
 pmovmskb %xmm3, %ecx
 movl %edx, %esi
 orl %ecx, %esi
 jz 2b

1: bsfl %ecx, %r9d
 movl $0xffffffff, %r8d
 movl $31, %ecx
 jnz 5f

 bsrl %edx, %edx
 jz 2b
 leaq -16(%rdi,%rdx), %rax
 jmp 2b

5: subl %r9d, %ecx
 shrl %cl, %r8d
 andl %r8d, %edx
 bsrl %edx, %edx
 jz 4f
 leaq -16(%rdi,%rdx), %rax
4: ret
.cfi_endproc ; .size __strrchr_sse2, .-__strrchr_sse2



