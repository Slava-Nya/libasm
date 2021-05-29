section .text
    global _ft_strcmp

_ft_strcmp: ;int    ft_strcmp(char const *s1, char const *s2);
    mov     rax, 0
    jmp     .CMPR

    .CMPR:
    mov     al, byte[rdi]
    mov     bl, byte[rsi]
    cmp     al, 0
    je      .return
    cmp     bl, 0
    je      .return
    cmp     al, bl
    jne     .return
    inc     rdi
    inc     rsi
    jmp     .CMPR

    .return
    movzx   rax, al
    movzx   rbx, bl
    sub     rax, rbx    ; rax = (unsigned char)s1[i] - (unsigned char)s2[i])
    ret
