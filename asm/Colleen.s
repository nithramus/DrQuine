section .data
code db "section .data", 10, "code db ", "%s", 10, "yolo db %c%s%c, 0", 10, "section .text", 10 , "extern _printf", 10, "global _main", 10, "; coucou", 10, "_main:", 10, "push rdi", 10, "; yolo", 10, "call foo", 10, "mov rax, 5", 10, "lea rdi, [rel code]", 10, "lea rsi, [rel yolo]", 10, "mov rdx, 96", 10, "lea rcx, [ rel yolo]", 10, "mov r8, 96", 10, "call _printf", 10, "pop rdi", 10, "ret", 10,"foo:", 10, "ret", 0
yolo db `"section .data", 10, "code db ", "%s", 10, "yolo db %c%s%c, 0", 10, "section .text", 10 , "extern _printf", 10, "global _main", 10, "; coucou", 10, "_main:", 10, "push rdi", 10, "; yolo", 10, "call foo", 10, "mov rax, 5", 10, "lea rdi, [rel code]", 10, "lea rsi, [rel yolo]", 10, "mov rdx, 96", 10, "lea rcx, [ rel yolo]", 10, "mov r8, 96", 10, "call _printf", 10, "pop rdi", 10, "ret", 10,"foo:", 10, "ret", 0`, 0
section .text
extern _printf
global _main
; coucou
_main:
push rdi
; yolo
call foo
mov rax, 5
lea rdi, [rel code]
lea rsi, [rel yolo]
mov rdx, 96
lea rcx, [ rel yolo]
mov r8, 96
call _printf
pop rdi
ret
foo:
ret