global _ft_isdigit

section .text

_ft_isdigit:

is_lower:
    cmp rdi, '0'
    jl exit
    cmp rdi, '9'
    jg exit

    mov rax, 1
    ret

exit:
    mov rax, 0
    ret
