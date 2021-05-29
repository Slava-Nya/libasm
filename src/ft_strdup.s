section .text
    global  _ft_strdup
    extern  _ft_strlen
    extern  _ft_strcpy
    extern  _malloc

_ft_strdup: ;  char		*ft_strdup(char const *s1)
    call    _ft_strlen
    add     rax, 1
    push    rdi
    mov     rdi, rax
    call    _malloc
    js      .return_error
    pop     r9
    mov     rdi, rax
    mov     rsi, r9
    call    _ft_strcpy
    ret

    .return_error:
    mov     rax, -1
    ret