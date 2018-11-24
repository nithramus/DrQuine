%define yolo1 2
%define yolo2 3
%define yolo3 _main
; comment
section .data
yolo db "%%define yolo1 2", 10, "%%define yolo2 3", 10, "%%define yolo3 _main", 10, "; comment", 10, "section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "file db ", 34, "Grace_kid.s", 34, ", 0", 10,"mode db ", 34, "w+", 34, 10,"section .text", 10,"global yolo3", 10,"extern _fprintf", 10,"extern _fopen", 10,"yolo3:", 10,"push rbp", 10,"mov rbp, rsp", 10,"lea rdi, [rel file]", 10,"lea rsi, [rel mode]", 10,"call _fopen", 10,"mov r9, 96", 10,"lea r8, [rel swag]", 10,"mov rcx, 96", 10,"lea rdx, [rel swag]", 10,"lea rsi, [rel yolo]", 10,"mov rdi, rax", 10,"call _fprintf", 10,"pop rbp", 10, "ret", 10, 0
swag db `"%%define yolo1 2", 10, "%%define yolo2 3", 10, "%%define yolo3 _main", 10, "; comment", 10, "section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "file db ", 34, "Grace_kid.s", 34, ", 0", 10,"mode db ", 34, "w+", 34, 10,"section .text", 10,"global yolo3", 10,"extern _fprintf", 10,"extern _fopen", 10,"yolo3:", 10,"push rbp", 10,"mov rbp, rsp", 10,"lea rdi, [rel file]", 10,"lea rsi, [rel mode]", 10,"call _fopen", 10,"mov r9, 96", 10,"lea r8, [rel swag]", 10,"mov rcx, 96", 10,"lea rdx, [rel swag]", 10,"lea rsi, [rel yolo]", 10,"mov rdi, rax", 10,"call _fprintf", 10,"pop rbp", 10, "ret", 10, 0`, 0
file db "Grace_kid.s", 0
mode db "w+"
section .text
global yolo3
extern _fprintf
extern _fopen
yolo3:
push rbp
mov rbp, rsp
lea rdi, [rel file]
lea rsi, [rel mode]
call _fopen
mov r9, 96
lea r8, [rel swag]
mov rcx, 96
lea rdx, [rel swag]
lea rsi, [rel yolo]
mov rdi, rax
call _fprintf
pop rbp
ret
