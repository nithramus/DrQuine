section .data
code db "section .data", 10, "code db ", "%s", 10, "yolo db %c%s%c, 0", 10, "section .text", 10 , "extern printf", 10, "global main", 10, "; coucou", 10, "main:", 10, "push rdi", 10, "; yolo", 10, "call foo", 10, "mov rax, 5", 10, "mov rdi, code", 10, "mov rsi, yolo", 10, "mov rdx, 96", 10, "mov rcx, yolo", 10, "mov r8, 96", 10, "call printf", 10, "pop rdi", 10, "ret", 10,"foo:", 10, "ret", 0
yolo db `"section .data", 10, "code db ", "%s", 10, "yolo db %c%s%c, 0", 10, "section .text", 10 , "extern printf", 10, "global main", 10, "; coucou", 10, "main:", 10, "push rdi", 10, "; yolo", 10, "call foo", 10, "mov rax, 5", 10, "mov rdi, code", 10, "mov rsi, yolo", 10, "mov rdx, 96", 10, "mov rcx, yolo", 10, "mov r8, 96", 10, "call printf", 10, "pop rdi", 10, "ret", 10,"foo:", 10, "ret", 0`, 0
section .text
extern printf
global main
; coucou
main:
push rdi
; yolo
call foo
mov rax, 5
mov rdi, code
mov rsi, yolo
mov rdx, 96
mov rcx, yolo
mov r8, 96
call printf
pop rdi
ret
foo:
ret