# blue

 .file "test_sse2.c"
 .text
 .p2align 4,,15
.globl strlen2
 .type strlen2, @function
strlen2:
.LFB550:
 .cfi_startproc
  pxor  %xmm1, %xmm1
  movl  %edi, %ecx
  movq  %rdi, %r8
  andq  $~15, %rdi
  xor %edi, %ecx
  pcmpeqb (%rdi), %xmm1
  pmovmskb %xmm1, %edx
  shrl  %cl, %edx
  shll  %cl, %edx
  andl  %edx, %edx
  jnz .less16bytes
  pxor  %xmm1, %xmm1

  .p2align 4
.more64bytes_loop:
  pcmpistri $0x08, 16(%rdi), %xmm1
  jz  .more32bytes

  pcmpistri $0x08, 32(%rdi), %xmm1
  jz  .more48bytes

  pcmpistri $0x08, 48(%rdi), %xmm1
  jz  .more64bytes

  add $64, %rdi
  pcmpistri $0x08, (%rdi), %xmm1
  jnz .more64bytes_loop
  leaq  (%rdi,%rcx), %rax
  subq  %r8, %rax
  ret

  .p2align 4
.more32bytes:
  leaq  16(%rdi,%rcx, 1), %rax
  subq  %r8, %rax
  ret

  .p2align 4
.more48bytes:
  leaq  32(%rdi,%rcx, 1), %rax
  subq  %r8, %rax
  ret

  .p2align 4
.more64bytes:
  leaq  48(%rdi,%rcx, 1), %rax
  subq  %r8, %rax
  ret

  .p2align 4
.less16bytes:
  subq  %r8, %rdi
  bsfl  %edx, %eax
  addq  %rdi, %rax
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
