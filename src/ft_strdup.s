section .text
    global  ft_strdup
    extern  ft_strlen
    extern  ft_strcpy
    extern  malloc
    extern  __errno_location

ft_strdup: ;  char		*ft_strdup(char const *s1)
    cmp     rdi, 0
    mov     rax, 0
    call    ft_strlen
    add     rax, 1
    push    rdi
    mov     rdi, rax
    call    [rel malloc wrt ..got]
    cmp     rax, 0
	je      .return_error
    pop     r9
    mov     rdi, rax
    mov     rsi, r9
    call    ft_strcpy
    ret

    .return_error:
    ret