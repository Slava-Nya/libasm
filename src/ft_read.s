section .text
    global  _ft_read ; ft_read (rdi, rsi, rdx)

_ft_read:   ;ssize_t    ft_read(int fd, void *buf, size_t nbyte);
    mov     rax, 0x2000003
    syscall
    jc      .return_error
    jmp     .return

    .return_error:
    mov     rax, -1
    ret

    .return:
    ret