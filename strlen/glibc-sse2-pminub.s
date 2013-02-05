# yellow

 .file "test_sse2.c"
 .text
 .p2align 4,,15
.globl strlen2
 .type strlen2, @function
strlen2:
.LFB550:
 .cfi_startproc
xor %rax, %rax
  mov %edi, %ecx
  and $0x3f, %ecx
  pxor  %xmm0, %xmm0
  cmp $0x30, %ecx
  ja  .next
  movdqu  (%rdi), %xmm1
  pcmpeqb %xmm1, %xmm0
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit_less16
  mov %rdi, %rax
  and $-16, %rax
  jmp .align16_start
.next:
  mov %rdi, %rax
  and $-16, %rax
  pcmpeqb (%rax), %xmm0
  mov $-1, %r10d
  sub %rax, %rcx
  shl %cl, %r10d
  pmovmskb %xmm0, %edx
  and %r10d, %edx
  jnz .exit
.align16_start:
  pxor  %xmm0, %xmm0
  pxor  %xmm1, %xmm1
  pxor  %xmm2, %xmm2
  pxor  %xmm3, %xmm3
  pcmpeqb 16(%rax), %xmm0
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit16

  pcmpeqb 32(%rax), %xmm1
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit32

  pcmpeqb 48(%rax), %xmm2
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit48

  pcmpeqb 64(%rax), %xmm3
  pmovmskb %xmm3, %edx
  test  %edx, %edx
  jnz .exit64

  pcmpeqb 80(%rax), %xmm0
  add $64, %rax
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit16

  pcmpeqb 32(%rax), %xmm1
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit32

  pcmpeqb 48(%rax), %xmm2
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit48

  pcmpeqb 64(%rax), %xmm3
  pmovmskb %xmm3, %edx
  test  %edx, %edx
  jnz .exit64

  pcmpeqb 80(%rax), %xmm0
  add $64, %rax
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit16

  pcmpeqb 32(%rax), %xmm1
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit32

  pcmpeqb 48(%rax), %xmm2
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit48

  pcmpeqb 64(%rax), %xmm3
  pmovmskb %xmm3, %edx
  test  %edx, %edx
  jnz .exit64

  pcmpeqb 80(%rax), %xmm0
  add $64, %rax
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit16

  pcmpeqb 32(%rax), %xmm1
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit32

  pcmpeqb 48(%rax), %xmm2
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit48

  pcmpeqb 64(%rax), %xmm3
  pmovmskb %xmm3, %edx
  test  %edx, %edx
  jnz .exit64


  test  $0x3f, %rax
  jz  .align64_loop

  pcmpeqb 80(%rax), %xmm0
  add $80, %rax
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit

  test  $0x3f, %rax
  jz  .align64_loop

  pcmpeqb 16(%rax), %xmm1
  add $16, %rax
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit

  test  $0x3f, %rax
  jz  .align64_loop

  pcmpeqb 16(%rax), %xmm2
  add $16, %rax
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit

  test  $0x3f, %rax
  jz  .align64_loop

  pcmpeqb 16(%rax), %xmm3
  add $16, %rax
  pmovmskb %xmm3, %edx
  test  %edx, %edx
  jnz .exit

  add $16, %rax
  .p2align 4
  .align64_loop:
  movaps  (%rax), %xmm4
  pminub  16(%rax), %xmm4
  movaps  32(%rax), %xmm5
  pminub  48(%rax), %xmm5
  add $64,  %rax
  pminub  %xmm4,  %xmm5
  pcmpeqb %xmm0,  %xmm5
  pmovmskb %xmm5, %edx
  test  %edx, %edx
  jz  .align64_loop


  pcmpeqb -64(%rax), %xmm0
  sub $80,  %rax
  pmovmskb %xmm0, %edx
  test  %edx, %edx
  jnz .exit16

  pcmpeqb 32(%rax), %xmm1
  pmovmskb %xmm1, %edx
  test  %edx, %edx
  jnz .exit32

  pcmpeqb 48(%rax), %xmm2
  pmovmskb %xmm2, %edx
  test  %edx, %edx
  jnz .exit48

  pcmpeqb 64(%rax), %xmm3
  pmovmskb %xmm3, %edx
  sub %rdi, %rax
  bsf %rdx, %rdx
  add %rdx, %rax
  add $64, %rax
  ret

  .p2align 4
.exit:
  sub %rdi, %rax
.exit_less16:
  bsf %rdx, %rdx
  add %rdx, %rax
  ret
  .p2align 4
.exit16:
  sub %rdi, %rax
  bsf %rdx, %rdx
  add %rdx, %rax
  add $16, %rax
  ret
  .p2align 4
.exit32:
  sub %rdi, %rax
  bsf %rdx, %rdx
  add %rdx, %rax
  add $32, %rax
  ret
  .p2align 4
.exit48:
  sub %rdi, %rax
  bsf %rdx, %rdx
  add %rdx, %rax
  add $48, %rax
  ret
  .p2align 4
.exit64:
  sub %rdi, %rax
  bsf %rdx, %rdx
  add %rdx, %rax
  add $64, %rax
  ret

  .cfi_endproc
.LFE550:
 .size strlen2, .-strlen2
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
 jmp strlen2@PLT
 .cfi_endproc
.LFE552:
 .size strstr2, .-strstr2
 .data
 .align 64
 .type byte_rindex, @object
 .size byte_rindex, 128
byte_rindex:
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 0
 .byte 64
 .byte 63
 .byte 62
 .byte 61
 .byte 60
 .byte 59
 .byte 58
 .byte 57
 .byte 56
 .byte 55
 .byte 54
 .byte 53
 .byte 52
 .byte 51
 .byte 50
 .byte 49
 .byte 48
 .byte 47
 .byte 46
 .byte 45
 .byte 44
 .byte 43
 .byte 42
 .byte 41
 .byte 40
 .byte 39
 .byte 38
 .byte 37
 .byte 36
 .byte 35
 .byte 34
 .byte 33
 .byte 32
 .byte 31
 .byte 30
 .byte 29
 .byte 28
 .byte 27
 .byte 26
 .byte 25
 .byte 24
 .byte 23
 .byte 22
 .byte 21
 .byte 20
 .byte 19
 .byte 18
 .byte 17
 .byte 16
 .byte 15
 .byte 14
 .byte 13
 .byte 12
 .byte 11
 .byte 10
 .byte 9
 .byte 8
 .byte 7
 .byte 6
 .byte 5
 .byte 4
 .byte 3
 .byte 2
 .byte 1
 .ident "GCC: (Debian 4.5.3-12) 4.5.3"
 .section .note.GNU-stack,"",@progbits
