section .text
    global ft_strlen        ; run linker

 ft_strlen:                 ; size_t ft_strlen(char const *str);
    mov     rax, 0          ; copy 0 in rax register

    .loop: ; цикл
    cmp     byte [rdi + rax],0
    je      .return         ; jump to return if equal 0
    inc     rax
    jmp     .loop

    .return:
    ret                     ; return rax

; rdi - 1 argument
; rsi - 2 argument
; rdx - 3 argument
; rcx - 4 argument
; r8 - 5 argument
; r9 - 6 argument
; rsp - Points to the top of the stack 