global _ft_isalpha

section .text

_ft_isalpha:

is_lower:
    cmp rdi, 'A'
    jl exit
    cmp rdi, 'Z'
    jg is_upper

    mov rax, 1
    ret

is_upper:
    cmp rdi, 'a'
    jl exit
    cmp rdi, 'z'
    jg exit

    mov rax, 1
    ret

exit:
    mov rax, 0
    ret
