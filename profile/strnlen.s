# 1 "strnlen.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "strnlen.S"
.text
.globl strnlen3
  .type strnlen3, @function
strnlen3:
.LFB20:
  .cfi_startproc

# 14 "strnlen.S"
test %rsi,%rsi
jne .l1
xor %rax,%rax
ret
.l1:
# 60 "strnlen.S"
 # We optimize start. This is hot part, In gcc 99.5% of calls end here.
 movq %rdi, %rax
 pxor %xmm8,%xmm8
  movq %rdi, %r8
 pxor %xmm9,%xmm9
  andq $4095, %r8
 pxor %xmm10,%xmm10
 pxor %xmm11,%xmm11

 movq $-64, %r9

  cmpq $4032, %r8

 # we cannot unify this branch with next as it is ~6 cycles slower.
  ja .next
 andq $-16,%rax
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax,%rcx; mov %rsi,%r8; andq $-64,%rax; addq %rdi,%rsi; subq %rax,%rsi; addq %rcx,%r8; testq %r9,%r8; jne .fall1 ; bts %r8,%rdx; .fall1:; sarq %cl,%rdx; test %rdx, %rdx;
 je .L16
 bsfq %rdx, %rax
 ret
 .next:


 andq $-64,%rax
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax,%rcx; mov %rsi,%r8; andq $-64,%rax; addq %rdi,%rsi; subq %rax,%rsi; addq %rcx,%r8; testq %r9,%r8; jne .fall2 ; bts %r8,%rdx; .fall2:; sarq %cl,%rdx; test %rdx, %rdx;
 pxor %xmm11,%xmm11
 je .L16
 bsfq %rdx, %rax
 ret

 #.p2align 4,,10
 #.p2align 3
.L19:
 addq $64, %rax
.L17:
 pxor %xmm8,%xmm8
 pxor %xmm9,%xmm9
 pxor %xmm10,%xmm10
 pxor %xmm11,%xmm11

 testq %rsi,%rsi
 jne .fall3
 subq %rdi,%rax
 ret
 .fall3:
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;
 testq %r9,%rsi
 jne .fall4
 bts %rsi,%rdx
 .fall4:




 bsfq %rdx, %rdx
 addq %rdx, %rax
 subq %rdi, %rax
 ret

 #.p2align 4,,10
 #.p2align 3
.L16:

 addq %r9,%rsi
 testq %r9,%rsi
 je .L19

 #prefetcht0 576(%rax)
 movdqa 64(%rax), %xmm8
 pminub 80(%rax), %xmm8
 pminub 96(%rax), %xmm8
 pminub 112(%rax), %xmm8
 pcmpeqb %xmm11, %xmm8
 pmovmskb %xmm8, %edx
 testl %edx, %edx
 jne .L19
 subq $-128, %rax

 addq %r9,%rsi
 testq %r9,%rsi
 je .L17

 #prefetcht0 512(%rax)
 movdqa (%rax), %xmm8
 pminub 16(%rax), %xmm8
 pminub 32(%rax), %xmm8
 pminub 48(%rax), %xmm8
 pcmpeqb %xmm11, %xmm8
 pmovmskb %xmm8, %edx
 testl %edx, %edx
 je .L16
 jmp .L17
.cfi_endproc
.LFE20:
  .size strnlen3, .-strnlen3

