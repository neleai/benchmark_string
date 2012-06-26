# black #
# mark_description "Intel(R) C Intel(R) 64 Compiler XE for applications running on Intel(R) 64, Version 12.1.4.319 Build 2012041";
# mark_description "0";
# mark_description "-O3 -S -mssse3";
	.file "test_strlen.c"
	.text
..TXTST0:
# -- Begin  strlen
# mark_begin;
       .align    16,0x90
	.globl strlen
strlen:
# parameter 1: %rdi
..B1.1:                         # Preds ..B1.0
..___tag_value_strlen.1:                                        #16.1
        movq      %rdi, %rsi                                    #119.3
        andq      $63, %rsi                                     #119.3
        movq      %rdi, %rax                                    #119.3
        subq      %rsi, %rax                                    #119.3
        pxor      %xmm0, %xmm0                                  #94.20
        movdqa    (%rax), %xmm1                                 #120.3
        movdqa    32(%rax), %xmm3                               #120.3
        pcmpeqb   %xmm0, %xmm1                                  #120.3
        movdqa    16(%rax), %xmm2                               #120.3
        pcmpeqb   %xmm0, %xmm3                                  #120.3
        movdqa    48(%rax), %xmm4                               #120.3
        pcmpeqb   %xmm0, %xmm2                                  #120.3
        pmovmskb  %xmm1, %r8d                                   #120.3
        pcmpeqb   %xmm0, %xmm4                                  #120.3
        pmovmskb  %xmm3, %edx                                   #120.3
        pmovmskb  %xmm2, %ecx                                   #120.3
        pmovmskb  %xmm4, %r9d                                   #120.3
        movq      %r8, %r11                                     #120.3
        movq      %rdx, %r10                                    #120.3
        orq       %rcx, %r11                                    #120.3
        orq       %r9, %r10                                     #120.3
        orq       %r10, %r11                                    #120.3
        jne       ..B1.10       # Prob 5%                       #122.3
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 xmm0
..B1.2:                         # Preds ..B1.3 ..B1.5 ..B1.8 ..B1.11 ..B1.14
                                #       ..B1.1
        addq      $64, %rax                                     #125.3
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 xmm0
..B1.3:                         # Preds ..B1.2
        movdqa    (%rax), %xmm1                                 #127.6
        movdqa    32(%rax), %xmm3                               #127.6
        pcmpeqb   %xmm0, %xmm1                                  #127.6
        movdqa    16(%rax), %xmm2                               #127.6
        pcmpeqb   %xmm0, %xmm3                                  #127.6
        movdqa    48(%rax), %xmm4                               #127.6
        pcmpeqb   %xmm0, %xmm2                                  #127.6
        pmovmskb  %xmm1, %esi                                   #127.6
        pcmpeqb   %xmm0, %xmm4                                  #127.6
        pmovmskb  %xmm3, %ecx                                   #127.6
        pmovmskb  %xmm2, %edx                                   #127.6
        pmovmskb  %xmm4, %r8d                                   #127.6
        movq      %rsi, %r10                                    #127.6
        movq      %rcx, %r9                                     #127.6
        orq       %rdx, %r10                                    #127.6
        orq       %r8, %r9                                      #127.6
        orq       %r9, %r10                                     #127.6
        je        ..B1.2        # Prob 95%                      #129.6
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm0
..B1.5:                         # Preds ..B1.3                  # Infreq
        shlq      $16, %rdx                                     #129.6
        shlq      $32, %rcx                                     #129.6
        orq       %rdx, %rsi                                    #129.6
        shlq      $48, %r8                                      #129.6
        orq       %r8, %rcx                                     #129.6
        orq       %rcx, %rsi                                    #129.6
        movq      %rsi, %rdx                                    #129.6
        je        ..B1.2        # Prob 10%                      #129.6
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.7:                         # Preds ..B1.5 ..B1.8           # Infreq
        movq      %rdx, %r8                                     #129.6
        movl      $1, %r11d                                     #129.6
        shrq      $32, %r8                                      #129.6
        lea       -1(%rdx), %r10                                #129.6
        bsf       %r8d, %r9d                                    #129.6
        bsf       %edx, %ecx                                    #129.6
        addl      $32, %r9d                                     #129.6
        testl     %edx, %edx                                    #129.6
        cmove     %r9d, %ecx                                    #129.6
        andq      %r10, %rdx                                    #129.6
        shll      %cl, %r11d                                    #129.6
        movslq    %r11d, %r11                                   #129.6
        testq     %r11, %rsi                                    #129.6
        jne       ..B1.17       # Prob 5%                       #129.6
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B1.8:                         # Preds ..B1.7                  # Infreq
        testq     %rdx, %rdx                                    #129.6
        jne       ..B1.7        # Prob 82%                      #129.6
        jmp       ..B1.2        # Prob 100%                     #129.6
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B1.10:                        # Preds ..B1.1                  # Infreq
        shlq      $16, %rcx                                     #122.3
        shlq      $32, %rdx                                     #122.3
        orq       %rcx, %r8                                     #122.3
        shlq      $48, %r9                                      #122.3
        orq       %r9, %rdx                                     #122.3
        orq       %rdx, %r8                                     #122.3
                                # LOE rax rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm0
..B1.11:                        # Preds ..B1.10                 # Infreq
        movl      %esi, %ecx                                    #122.3
        movq      %r8, %rdx                                     #122.3
        sarq      %cl, %rdx                                     #122.3
        movl      %esi, %ecx                                    #122.3
        shlq      %cl, %rdx                                     #122.3
        testq     %rdx, %rdx                                    #122.3
        je        ..B1.2        # Prob 10%                      #122.3
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 xmm0
..B1.13:                        # Preds ..B1.11 ..B1.14         # Infreq
        movq      %rdx, %rsi                                    #122.3
        movl      $1, %r11d                                     #122.3
        shrq      $32, %rsi                                     #122.3
        lea       -1(%rdx), %r10                                #122.3
        bsf       %esi, %r9d                                    #122.3
        bsf       %edx, %ecx                                    #122.3
        addl      $32, %r9d                                     #122.3
        testl     %edx, %edx                                    #122.3
        cmove     %r9d, %ecx                                    #122.3
        andq      %r10, %rdx                                    #122.3
        shll      %cl, %r11d                                    #122.3
        movslq    %r11d, %r11                                   #122.3
        testq     %r11, %r8                                     #122.3
        jne       ..B1.18       # Prob 5%                       #122.3
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx xmm0
..B1.14:                        # Preds ..B1.13                 # Infreq
        testq     %rdx, %rdx                                    #122.3
        jne       ..B1.13       # Prob 82%                      #122.3
        jmp       ..B1.2        # Prob 100%                     #122.3
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 xmm0
..B1.17:                        # Preds ..B1.7                  # Infreq
        movslq    %ecx, %rcx                                    #129.6
        subq      %rdi, %rcx                                    #129.6
        addq      %rcx, %rax                                    #129.6
        ret                                                     #129.6
                                # LOE
..B1.18:                        # Preds ..B1.13                 # Infreq
        movslq    %ecx, %rcx                                    #122.3
        subq      %rdi, %rax                                    #122.3
        addq      %rcx, %rax                                    #122.3
        ret                                                     #122.3
        .align    16,0x90
..___tag_value_strlen.3:                                        #
                                # LOE
# mark_end;
	.type	strlen,@function
	.size	strlen,.-strlen
	.data
# -- End  strlen
	.text
# -- Begin  reversed
# mark_begin;
       .align    16,0x90
	.globl reversed
reversed:
..B2.1:                         # Preds ..B2.0
..___tag_value_reversed.4:                                      #2.15
        xorl      %eax, %eax                                    #2.23
        ret                                                     #2.23
        .align    16,0x90
..___tag_value_reversed.6:                                      #
                                # LOE
# mark_end;
	.type	reversed,@function
	.size	reversed,.-reversed
	.data
# -- End  reversed
	.text
# -- Begin  strstr2
# mark_begin;
       .align    16,0x90
	.globl strstr2
strstr2:
# parameter 1: %rdi
# parameter 2: %rsi
..B3.1:                         # Preds ..B3.0
..___tag_value_strstr2.7:                                       #3.31
        movq      %rdi, %rsi                                    #3.39
        andq      $63, %rsi                                     #3.39
        movq      %rdi, %rax                                    #3.46
        subq      %rsi, %rax                                    #3.46
        pxor      %xmm0, %xmm0                                  #3.39
        movdqa    (%rax), %xmm1                                 #3.39
        movdqa    32(%rax), %xmm3                               #3.39
        pcmpeqb   %xmm0, %xmm1                                  #3.39
        movdqa    16(%rax), %xmm2                               #3.39
        pcmpeqb   %xmm0, %xmm3                                  #3.39
        movdqa    48(%rax), %xmm4                               #3.39
        pcmpeqb   %xmm0, %xmm2                                  #3.39
        pmovmskb  %xmm1, %r8d                                   #3.39
        pcmpeqb   %xmm0, %xmm4                                  #3.39
        pmovmskb  %xmm3, %edx                                   #3.39
        pmovmskb  %xmm2, %ecx                                   #3.39
        pmovmskb  %xmm4, %r9d                                   #3.39
        movq      %r8, %r11                                     #3.39
        movq      %rdx, %r10                                    #3.39
        orq       %rcx, %r11                                    #3.39
        orq       %r9, %r10                                     #3.39
        orq       %r10, %r11                                    #3.39
        jne       ..B3.12       # Prob 5%                       #3.39
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r9 r12 r13 r14 r15 xmm0
..B3.2:                         # Preds ..B3.3 ..B3.5 ..B3.8 ..B3.13 ..B3.16
                                #       ..B3.1
        addq      $64, %rax                                     #3.39
                                # LOE rax rbx rbp rdi r12 r13 r14 r15 xmm0
..B3.3:                         # Preds ..B3.2
        movdqa    (%rax), %xmm1                                 #3.39
        movdqa    32(%rax), %xmm3                               #3.39
        pcmpeqb   %xmm0, %xmm1                                  #3.39
        movdqa    16(%rax), %xmm2                               #3.39
        pcmpeqb   %xmm0, %xmm3                                  #3.39
        movdqa    48(%rax), %xmm4                               #3.39
        pcmpeqb   %xmm0, %xmm2                                  #3.39
        pmovmskb  %xmm1, %esi                                   #3.39
        pcmpeqb   %xmm0, %xmm4                                  #3.39
        pmovmskb  %xmm3, %ecx                                   #3.39
        pmovmskb  %xmm2, %edx                                   #3.39
        pmovmskb  %xmm4, %r8d                                   #3.39
        movq      %rsi, %r10                                    #3.39
        movq      %rcx, %r9                                     #3.39
        orq       %rdx, %r10                                    #3.39
        orq       %r8, %r9                                      #3.39
        orq       %r9, %r10                                     #3.39
        je        ..B3.2        # Prob 95%                      #3.39
                                # LOE rax rdx rcx rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm0
..B3.5:                         # Preds ..B3.3                  # Infreq
        shlq      $16, %rdx                                     #3.39
        shlq      $32, %rcx                                     #3.39
        orq       %rdx, %rsi                                    #3.39
        shlq      $48, %r8                                      #3.39
        orq       %r8, %rcx                                     #3.39
        orq       %rcx, %rsi                                    #3.39
        movq      %rsi, %rdx                                    #3.39
        je        ..B3.2        # Prob 10%                      #3.39
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.7:                         # Preds ..B3.5 ..B3.8           # Infreq
        movq      %rdx, %r8                                     #3.39
        movl      $1, %r11d                                     #3.39
        shrq      $32, %r8                                      #3.39
        lea       -1(%rdx), %r10                                #3.39
        bsf       %r8d, %r9d                                    #3.39
        bsf       %edx, %ecx                                    #3.39
        addl      $32, %r9d                                     #3.39
        testl     %edx, %edx                                    #3.39
        cmove     %r9d, %ecx                                    #3.39
        andq      %r10, %rdx                                    #3.39
        shll      %cl, %r11d                                    #3.39
        movslq    %r11d, %r11                                   #3.39
        testq     %r11, %rsi                                    #3.39
        jne       ..B3.10       # Prob 5%                       #3.39
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 ecx xmm0
..B3.8:                         # Preds ..B3.7                  # Infreq
        testq     %rdx, %rdx                                    #3.39
        jne       ..B3.7        # Prob 82%                      #3.39
        jmp       ..B3.2        # Prob 100%                     #3.39
                                # LOE rax rdx rbx rbp rsi rdi r12 r13 r14 r15 xmm0
..B3.10:                        # Preds ..B3.7                  # Infreq
        movslq    %ecx, %rcx                                    #3.39
        subq      %rdi, %rcx                                    #3.39
        addq      %rcx, %rax                                    #3.39
                                # LOE rax rbx rbp r12 r13 r14 r15
..B3.11:                        # Preds ..B3.10                 # Infreq
        ret                                                     #3.39
                                # LOE
..B3.12:                        # Preds ..B3.1                  # Infreq
        shlq      $16, %rcx                                     #3.39
        shlq      $32, %rdx                                     #3.39
        orq       %rcx, %r8                                     #3.39
        shlq      $48, %r9                                      #3.39
        orq       %r9, %rdx                                     #3.39
        orq       %rdx, %r8                                     #3.39
                                # LOE rax rbx rbp rsi rdi r8 r12 r13 r14 r15 xmm0
..B3.13:                        # Preds ..B3.12                 # Infreq
        movl      %esi, %ecx                                    #3.39
        movq      %r8, %rdx                                     #3.39
        sarq      %cl, %rdx                                     #3.39
        movl      %esi, %ecx                                    #3.39
        shlq      %cl, %rdx                                     #3.39
        testq     %rdx, %rdx                                    #3.39
        je        ..B3.2        # Prob 10%                      #3.39
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 xmm0
..B3.15:                        # Preds ..B3.13 ..B3.16         # Infreq
        movq      %rdx, %rsi                                    #3.39
        movl      $1, %r11d                                     #3.39
        shrq      $32, %rsi                                     #3.39
        lea       -1(%rdx), %r10                                #3.39
        bsf       %esi, %r9d                                    #3.39
        bsf       %edx, %ecx                                    #3.39
        addl      $32, %r9d                                     #3.39
        testl     %edx, %edx                                    #3.39
        cmove     %r9d, %ecx                                    #3.39
        andq      %r10, %rdx                                    #3.39
        shll      %cl, %r11d                                    #3.39
        movslq    %r11d, %r11                                   #3.39
        testq     %r11, %r8                                     #3.39
        jne       ..B3.19       # Prob 5%                       #3.39
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 ecx xmm0
..B3.16:                        # Preds ..B3.15                 # Infreq
        testq     %rdx, %rdx                                    #3.39
        jne       ..B3.15       # Prob 82%                      #3.39
        jmp       ..B3.2        # Prob 100%                     #3.39
                                # LOE rax rdx rbx rbp rdi r8 r12 r13 r14 r15 xmm0
..B3.19:                        # Preds ..B3.15                 # Infreq
        movslq    %ecx, %rcx                                    #3.39
        subq      %rdi, %rax                                    #3.39
        addq      %rcx, %rax                                    #3.39
        ret                                                     #3.39
        .align    16,0x90
..___tag_value_strstr2.9:                                       #
                                # LOE rax rbx rbp r12 r13 r14 r15
# mark_end;
	.type	strstr2,@function
	.size	strstr2,.-strstr2
	.data
# -- End  strstr2
	.section .rodata, "a"
	.align 4
	.align 4
	.globl unroll
unroll:
	.long	4
	.type	unroll,@object
	.size	unroll,4
	.align 4
	.globl prefetch
prefetch:
	.long	8
	.type	prefetch,@object
	.size	prefetch,4
	.data
	.section .note.GNU-stack, ""
// -- Begin DWARF2 SEGMENT .eh_frame
	.section .eh_frame,"a",@progbits
.eh_frame_seg:
	.align 8
	.4byte 0x00000014
	.8byte 0x7801000100000000
	.8byte 0x0000019008070c10
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000001c
	.8byte ..___tag_value_strlen.1
	.8byte ..___tag_value_strlen.3-..___tag_value_strlen.1
	.4byte 0x00000014
	.4byte 0x00000034
	.8byte ..___tag_value_reversed.4
	.8byte ..___tag_value_reversed.6-..___tag_value_reversed.4
	.4byte 0x00000014
	.4byte 0x0000004c
	.8byte ..___tag_value_strstr2.7
	.8byte ..___tag_value_strstr2.9-..___tag_value_strstr2.7
# End
