%define yolo1 2
%define yolo2 3
%define yolo3 main
; comment
section .data
yolo db "%%define yolo1 2", 10, "%%define yolo2 3", 10, "%%define yolo3 main", 10, "; comment", 10, "section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "file db ", 34, "Grace_kid.s", 34, ", 0", 10,"mode db ", 34, "w+", 34, 10,"section .text", 10,"global yolo3", 10,"extern fprintf", 10,"extern fopen", 10,"yolo3:", 10,"push rbp", 10,"mov rbp, rsp", 10,"mov rdi, file", 10,"mov rsi, mode", 10,"call fopen", 10,"mov r9, 96", 10,"mov r8, swag", 10,"mov rcx, 96", 10,"mov rdx, swag", 10,"mov rsi, yolo", 10,"mov rdi, rax", 10,"call fprintf", 10,"pop rbp", 10, "ret", 10, 0
swag db `"%%define yolo1 2", 10, "%%define yolo2 3", 10, "%%define yolo3 main", 10, "; comment", 10, "section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "file db ", 34, "Grace_kid.s", 34, ", 0", 10,"mode db ", 34, "w+", 34, 10,"section .text", 10,"global yolo3", 10,"extern fprintf", 10,"extern fopen", 10,"yolo3:", 10,"push rbp", 10,"mov rbp, rsp", 10,"mov rdi, file", 10,"mov rsi, mode", 10,"call fopen", 10,"mov r9, 96", 10,"mov r8, swag", 10,"mov rcx, 96", 10,"mov rdx, swag", 10,"mov rsi, yolo", 10,"mov rdi, rax", 10,"call fprintf", 10,"pop rbp", 10, "ret", 10, 0`, 0
file db "Grace_kid.s", 0
mode db "w+"
section .text
global yolo3
extern fprintf
extern fopen
yolo3:
push rbp
mov rbp, rsp
mov rdi, file
mov rsi, mode
call fopen
mov r9, 96
mov r8, swag
mov rcx, 96
mov rdx, swag
mov rsi, yolo
mov rdi, rax
call fprintf
pop rbp
ret
