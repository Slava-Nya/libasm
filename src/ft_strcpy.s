section .text
    global ft_strcpy

ft_strcpy: ;char	*ft_strcpy(char *dst, char const *src)
    mov     rax, rdi
    mov     rdx, 0

    .loop:
        mov     cl, byte[rsi + rdx]
        mov     byte[rdi + rdx], cl
        cmp     byte[rsi + rdx], 0
        je      .return
        inc     rdx
        jmp     .loop

    .return:
        ret
