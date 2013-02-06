# blue
# 1 "variant/gen_new.h"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "variant/gen_new.h"
# 17 "variant/gen_new.h"
# 1 "variant/strlen-new.S" 1
# 19 "variant/strlen-new.S"
# 1 "variant/sysdep.h" 1
# 20 "variant/strlen-new.S" 2
# 33 "variant/strlen-new.S"
.text
.text ;.globl strlen_new; .type strlen_new, @function;strlen_new:; .cfi_startproc
# 69 "variant/strlen-new.S"
 pxor %xmm8, %xmm8
 pxor %xmm9, %xmm9
 pxor %xmm10, %xmm10
 pxor %xmm11, %xmm11
 movq %rdi, %rax
 movq %rdi, %rcx
 andq $4095, %rcx
 cmpq $4032, %rcx

 ja .Lnext
# 102 "variant/strlen-new.S"
 andq $-16, %rax
 pcmpeqb (%rax), %xmm8; pcmpeqb 16(%rax), %xmm9; pcmpeqb 32(%rax), %xmm10; pcmpeqb 48(%rax), %xmm11; pmovmskb %xmm8, %esi; pmovmskb %xmm9, %edx; pmovmskb %xmm10, %r8d; pmovmskb %xmm11, %ecx; salq $16, %rdx; salq $16, %rcx; orq %rsi, %rdx; orq %r8, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax, %rcx; andq $-64, %rax;; sarq %cl, %rdx; test %rdx, %rdx; je .Lloop; bsfq %rdx, %rax; ret

.p2align 4
.Lnext:
 andq $-64, %rax
 pcmpeqb (%rax), %xmm8; pcmpeqb 16(%rax), %xmm9; pcmpeqb 32(%rax), %xmm10; pcmpeqb 48(%rax), %xmm11; pmovmskb %xmm8, %esi; pmovmskb %xmm9, %edx; pmovmskb %xmm10, %r8d; pmovmskb %xmm11, %ecx; salq $16, %rdx; salq $16, %rcx; orq %rsi, %rdx; orq %r8, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax, %rcx; andq $-64, %rax;; sarq %cl, %rdx; test %rdx, %rdx; je .Lloop_init; bsfq %rdx, %rax; ret
# 121 "variant/strlen-new.S"
.p2align 4
.Lloop_init:
 pxor %xmm9, %xmm9
 pxor %xmm10, %xmm10
 pxor %xmm11, %xmm11
# 167 "variant/strlen-new.S"
.p2align 4
.Lloop:

 movdqa 64(%rax), %xmm8
 pminub 80(%rax), %xmm8
 pminub 96(%rax), %xmm8
 pminub 112(%rax), %xmm8
 pcmpeqb %xmm11, %xmm8
 pmovmskb %xmm8, %edx
 testl %edx, %edx
 jne .Lexit64

 subq $-128, %rax

 movdqa (%rax), %xmm8
 pminub 16(%rax), %xmm8
 pminub 32(%rax), %xmm8
 pminub 48(%rax), %xmm8
 pcmpeqb %xmm11, %xmm8
 pmovmskb %xmm8, %edx
 testl %edx, %edx
 jne .Lexit0
 jmp .Lloop
.p2align 4
.Lexit64:
 addq $64, %rax
.Lexit0:
 pxor %xmm8, %xmm8
 pcmpeqb (%rax), %xmm8; pcmpeqb 16(%rax), %xmm9; pcmpeqb 32(%rax), %xmm10; pcmpeqb 48(%rax), %xmm11; pmovmskb %xmm8, %esi; pmovmskb %xmm9, %edx; pmovmskb %xmm10, %r8d; pmovmskb %xmm11, %ecx; salq $16, %rdx; salq $16, %rcx; orq %rsi, %rdx; orq %r8, %rcx; salq $32, %rcx; orq %rcx, %rdx;

 bsfq %rdx, %rdx
 addq %rdx, %rax
 subq %rdi, %rax
 ret



.cfi_endproc ; .size strlen_new, .-strlen_new

 .p2align 4,,15
.globl reversed
 .type reversed, @function
reversed:
.LFB551:
 .cfi_startproc
 xorl %eax, %eax
 ret
 .cfi_endproc
.LFE551:
 .size reversed, .-reversed
 .p2align 4,,15
.globl strstr2
 .type strstr2, @function
strstr2:
.LFB552:
 .cfi_startproc
 jmp strlen_new@PLT
 .cfi_endproc
.LFE552:
 .size strstr2, .-strstr2


# 17 "variant/gen_new.h" 2
