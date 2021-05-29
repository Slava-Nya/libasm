section .text
    global _ft_write ; ft_write (rdi, rsi, rdx)

_ft_write:  ;ssize_t    ft_write(int fd, void const *buf, size_t nbyte);
    mov     r8, rdx
    mov     rax, 0x2000004 ;кладем в rax системный код write
    syscall
    jc      .return_error
    jmp     .return

.return_error:
    mov     rax, -1
    ret

.return:
    mov     rax, r8
    ret