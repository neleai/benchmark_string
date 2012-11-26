# 1 "strlen.S"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "strlen.S"
.text
.globl strlen3
	.type	strlen3, @function
strlen3:
.LFB20:
	.cfi_startproc

# 60 "strlen.S"
 # strlen spends 99% time on first 80 characters which we optimize
 movq %rdi, %rax
 pxor %xmm8,%xmm8
  movq %rdi, %r8
 pxor %xmm9,%xmm9
  andq $4095, %r8
 pxor %xmm10,%xmm10
 pxor %xmm11,%xmm11



  cmpq $4032, %r8

 # we cannot unify this branch with next as it is ~6 cycles slower.
  ja .next
 andq $-16,%rax
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax,%rcx; andq $-64,%rax; sarq %cl,%rdx; test %rdx, %rdx;
 je .L16
 bsfq %rdx, %rax
 ret
 .next:


 andq $-64,%rax
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;; movq %rdi, %rcx; xorq %rax,%rcx; andq $-64,%rax; sarq %cl,%rdx; test %rdx, %rdx;
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
# 111 "strlen.S"
 pcmpeqb (%rax),%xmm8 ; pcmpeqb 16(%rax),%xmm9; pmovmskb %xmm8, %r8d; pcmpeqb 32(%rax),%xmm10; pmovmskb %xmm9, %edx; pcmpeqb 48(%rax),%xmm11; salq $16, %rdx; pmovmskb %xmm10, %r10d; pmovmskb %xmm11, %ecx; salq $16, %rcx; orq %r8, %rdx; orq %r10, %rcx; salq $32, %rcx; orq %rcx, %rdx;


 bsfq %rdx, %rdx
 addq %rdx, %rax
 subq %rdi, %rax
 ret

 #.p2align 4,,10
 #.p2align 3
.L16:





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
	.size	strlen3, .-strlen3


