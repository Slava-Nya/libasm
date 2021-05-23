section .text
    global _ft_strlen   ; запуск линкера

 _ft_strlen:
    mov rax, 0 ; сохраняем в регистр rax возвращаемое значение

    .loop: ; цикл
    cmp byte [rdi + rax],0  ; сравниваем текущий символ с нулём (аналог while (str[i])
    je .return ; jump to return if equal 0  (если находим 0, ретерним значение ret)
    inc rax ; инкрементнируем rax
    jmp .loop ; jump в новую итерацию цикла

    .return:
    ret


