%define filenumber 5
section .data
yolo db "%%define filenumber %d", 10,"section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "filename db ", 34 ,"Sully_%%d.s", 34, ", 0", 10, "param db ", 34, "w+", 34, ", 0", 10, "compile db ", 34, "nasm -f elf64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && ./Sully_%%d", 34, ", 0", 10,"section .text", 10,"global main", 10,"extern sprintf", 10,"extern fprintf", 10,"extern printf", 10,"extern fopen", 10,"extern fclose", 10,"extern system", 10, "main:", 10,"push rbp", 10,"mov rbp, rsp", 10,"push rdi", 10,"sub rsp, 5000", 10,"mov r15, filenumber", 10,"sub r15, 1", 10,"cmp r15, 0", 10,"je .end", 10,"mov rdi, rsp", 10,"mov rsi, filename", 10,"mov rdx, r15", 10,"call sprintf", 10,"mov rdi, rsp", 10,"mov rsi, param", 10,"call fopen", 10,"mov rdi, rax", 10,"push rdi", 10,"mov rax, 0", 10,"mov rsi, yolo", 10,"mov rdx, r15", 10,"mov rcx, swag", 10,"mov r8, 96", 10,"mov r9, swag", 10,"push qword 96", 10,"call fprintf", 10,"pop r14", 10,"pop rdi", 10,"call fclose", 10,"mov rdi, rsp", 10,"mov rsi, compile", 10,"mov rdx, r15", 10,"mov rcx, r15", 10,"mov r8, r15", 10,"mov r9, r15", 10,"call sprintf", 10,"mov rdi, rsp", 10,"call system", 10,".end:", 10,"add rsp, 5000", 10,"pop rdi", 10,"pop rbp", 10,"ret", 10, 0
swag db `"%%define filenumber %d", 10,"section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "filename db ", 34 ,"Sully_%%d.s", 34, ", 0", 10, "param db ", 34, "w+", 34, ", 0", 10, "compile db ", 34, "nasm -f elf64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && ./Sully_%%d", 34, ", 0", 10,"section .text", 10,"global main", 10,"extern sprintf", 10,"extern fprintf", 10,"extern printf", 10,"extern fopen", 10,"extern fclose", 10,"extern system", 10, "main:", 10,"push rbp", 10,"mov rbp, rsp", 10,"push rdi", 10,"sub rsp, 5000", 10,"mov r15, filenumber", 10,"sub r15, 1", 10,"cmp r15, 0", 10,"je .end", 10,"mov rdi, rsp", 10,"mov rsi, filename", 10,"mov rdx, r15", 10,"call sprintf", 10,"mov rdi, rsp", 10,"mov rsi, param", 10,"call fopen", 10,"mov rdi, rax", 10,"push rdi", 10,"mov rax, 0", 10,"mov rsi, yolo", 10,"mov rdx, r15", 10,"mov rcx, swag", 10,"mov r8, 96", 10,"mov r9, swag", 10,"push qword 96", 10,"call fprintf", 10,"pop r14", 10,"pop rdi", 10,"call fclose", 10,"mov rdi, rsp", 10,"mov rsi, compile", 10,"mov rdx, r15", 10,"mov rcx, r15", 10,"mov r8, r15", 10,"mov r9, r15", 10,"call sprintf", 10,"mov rdi, rsp", 10,"call system", 10,".end:", 10,"add rsp, 5000", 10,"pop rdi", 10,"pop rbp", 10,"ret", 10, 0`, 0
filename db "Sully_%d.s", 0
param db "w+", 0
compile db "nasm -f elf64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && ./Sully_%d", 0
section .text
global main
extern sprintf
extern fprintf
extern printf
extern fopen
extern fclose
extern system
main:
push rbp
mov rbp, rsp
push rdi
sub rsp, 5000
mov r15, filenumber
cmp r15, 0
je .end
mov rdi, rsp
mov rsi, filename
mov rdx, r15
call sprintf
mov rdi, rsp
mov rsi, param
call fopen
mov rdi, rax
push rdi
mov rax, 0
mov rsi, yolo
mov rdx, r15
mov rcx, swag
mov r8, 96
mov r9, swag
push qword 96
call fprintf
pop r14
pop rdi
call fclose
mov rdi, rsp
mov rdx, r15
mov rsi, compile
mov rcx, r15
mov r8, r15
mov r9, r15
call sprintf
mov rdi, rsp
call system
.end:
add rsp, 5000
pop rdi
pop rbp
ret