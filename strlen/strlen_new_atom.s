# violet

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
  pxor  %xmm0, %xmm0
  and $0x3f, %ecx
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
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
  add %rdx, %rax
  add $64, %rax
  ret

  .p2align 4
.exit:
  sub %rdi, %rax
.exit_less16:
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
  add %rdx, %rax
  ret
  .p2align 4
.exit16:
  sub %rdi, %rax
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
  add %rdx, %rax
  add $16, %rax
  ret
  .p2align 4
.exit32:
  sub %rdi, %rax
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
  add %rdx, %rax
  add $32, %rax
  ret
  .p2align 4
.exit48:
  sub %rdi, %rax
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
  add %rdx, %rax
  add $48, %rax
  ret
  .p2align 4
.exit64:
  sub %rdi, %rax
        movq    %rdx, %rcx
        negq    %rcx
        andq    %rdx, %rcx
        leaq  first_byte_idx(%rip), %rdx
        movzbl  (%rdx,%rcx), %edx
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
 
.section	.rodata
	.align 32
	.type	first_byte_idx, @object
	.size	first_byte_idx, 32792

first_byte_idx:
	.zero	1
	.byte	0
	.byte	1
	.zero	1
	.byte	2
	.zero	1
	.byte	16
	.byte	17
	.byte	3
	.byte	18
	.zero	1
	.byte	32
	.byte	33
	.byte	19
	.byte	34
	.zero	1
	.byte	4
	.zero	1
	.byte	35
	.zero	2
	.byte	20
	.zero	2
	.byte	48
	.byte	49
	.byte	36
	.byte	50
	.zero	3
	.byte	51
	.byte	5
	.zero	4
	.byte	21
	.zero	1
	.byte	52
	.zero	2
	.byte	37
	.zero	12
	.byte	53
	.zero	8
	.byte	6
	.zero	4
	.byte	22
	.zero	4
	.byte	38
	.zero	12
	.byte	54
	.zero	40
	.byte	7
	.zero	4
	.byte	23
	.zero	4
	.byte	39
	.zero	12
	.byte	55
	.zero	104
	.byte	8
	.zero	4
	.byte	24
	.zero	4
	.byte	40
	.zero	12
	.byte	56
	.zero	232
	.byte	9
	.zero	4
	.byte	25
	.zero	4
	.byte	41
	.zero	12
	.byte	57
	.zero	488
	.byte	10
	.zero	4
	.byte	26
	.zero	4
	.byte	42
	.zero	12
	.byte	58
	.zero	1000
	.byte	11
	.zero	4
	.byte	27
	.zero	4
	.byte	43
	.zero	12
	.byte	59
	.zero	2024
	.byte	12
	.zero	4
	.byte	28
	.zero	4
	.byte	44
	.zero	12
	.byte	60
	.zero	4072
	.byte	13
	.zero	4
	.byte	29
	.zero	4
	.byte	45
	.zero	12
	.byte	61
	.zero	8168
	.byte	14
	.zero	4
	.byte	30
	.zero	4
	.byte	46
	.zero	12
	.byte	62
	.zero	16360
	.byte	15
	.zero	4
	.byte	31
	.zero	4
	.byte	47
	.zero	12
	.byte	63
 .ident "GCC: (Debian 4.5.3-12) 4.5.3"
 .section .note.GNU-stack,"",@progbits
