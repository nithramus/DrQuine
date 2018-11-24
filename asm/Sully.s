%define filenumber 5
section .data
yolo db "%%define filenumber %d", 10,"section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "filename db ", 34 ,"Sully_%%d.s", 34, ", 0", 10, "param db ", 34, "w+", 34, ", 0", 10, "compile db ", 34, "nasm -f macho64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && rm Sully*.o && ./Sully_%%d", 34, ", 0", 10,"section .text", 10,"global _main", 10,"extern _sprintf", 10,"extern _fprintf", 10,"extern _printf", 10,"extern _fopen", 10,"extern _fclose", 10,"extern _system", 10, "_main:", 10,"push rbp", 10,"mov rbp, rsp", 10,"push rdi", 10,"sub rsp, 5000", 10,"mov r15, filenumber", 10,"sub r15, 1", 10,"cmp r15, -1", 10,"je .end", 10,"mov rdi, rsp", 10,"lea rsi, [rel filename]", 10,"mov rdx, r15", 10,"call _sprintf", 10,"mov rdi, rsp", 10,"lea rsi, [rel param]", 10,"call _fopen", 10,"mov rdi, rax", 10,"push rdi", 10,"mov rax, 0", 10,"lea rsi, [rel yolo]", 10,"mov rdx, r15", 10,"lea rcx, [rel swag]", 10,"mov r8, 96", 10,"lea r9, [rel swag]", 10,"push qword 96", 10,"call _fprintf", 10,"pop r14", 10,"pop rdi", 10,"call _fclose", 10,"mov rdi, rsp", 10,"lea rsi, [rel compile]", 10,"mov rdx, r15", 10,"mov rcx, r15", 10,"mov r8, r15", 10,"mov r9, r15", 10,"call _sprintf", 10,"mov rdi, rsp", 10,"call _system", 10,".end:", 10,"add rsp, 5000", 10,"pop rdi", 10,"pop rbp", 10,"ret", 10, 0
swag db `"%%define filenumber %d", 10,"section .data", 10, "yolo db %s", 10, "swag db %c%s%c, 0", 10, "filename db ", 34 ,"Sully_%%d.s", 34, ", 0", 10, "param db ", 34, "w+", 34, ", 0", 10, "compile db ", 34, "nasm -f macho64 Sully_%%d.s && gcc Sully_%%d.o -o Sully_%%d && rm Sully*.o && ./Sully_%%d", 34, ", 0", 10,"section .text", 10,"global _main", 10,"extern _sprintf", 10,"extern _fprintf", 10,"extern _printf", 10,"extern _fopen", 10,"extern _fclose", 10,"extern _system", 10, "_main:", 10,"push rbp", 10,"mov rbp, rsp", 10,"push rdi", 10,"sub rsp, 5000", 10,"mov r15, filenumber", 10,"sub r15, 1", 10,"cmp r15, -1", 10,"je .end", 10,"mov rdi, rsp", 10,"lea rsi, [rel filename]", 10,"mov rdx, r15", 10,"call _sprintf", 10,"mov rdi, rsp", 10,"lea rsi, [rel param]", 10,"call _fopen", 10,"mov rdi, rax", 10,"push rdi", 10,"mov rax, 0", 10,"lea rsi, [rel yolo]", 10,"mov rdx, r15", 10,"lea rcx, [rel swag]", 10,"mov r8, 96", 10,"lea r9, [rel swag]", 10,"push qword 96", 10,"call _fprintf", 10,"pop r14", 10,"pop rdi", 10,"call _fclose", 10,"mov rdi, rsp", 10,"lea rsi, [rel compile]", 10,"mov rdx, r15", 10,"mov rcx, r15", 10,"mov r8, r15", 10,"mov r9, r15", 10,"call _sprintf", 10,"mov rdi, rsp", 10,"call _system", 10,".end:", 10,"add rsp, 5000", 10,"pop rdi", 10,"pop rbp", 10,"ret", 10, 0`, 0
filename db "Sully_%d.s", 0
param db "w+", 0
compile db "nasm -f macho64 Sully_%d.s && gcc Sully_%d.o -o Sully_%d && rm Sully*.o && ./Sully_%d", 0
section .text
global _main
extern _sprintf
extern _fprintf
extern _printf
extern _fopen
extern _fclose
extern _system
_main:
push rbp
mov rbp, rsp
push rdi
sub rsp, 5000
mov r15, filenumber
cmp r15, -1
je .end
mov rdi, rsp
lea rsi, [rel filename]
mov rdx, r15
call _sprintf
mov rdi, rsp
lea rsi, [rel param]
call _fopen
mov rdi, rax
push rdi
mov rax, 0
lea rsi, [rel yolo]
mov rdx, r15
lea rcx, [rel swag]
mov r8, 96
lea r9, [rel swag]
push qword 96
call _fprintf
pop r14
pop rdi
call _fclose
mov rdi, rsp
mov rdx, r15
lea rsi, [rel compile]
mov rcx, r15
mov r8, r15
mov r9, r15
call _sprintf
mov rdi, rsp
call _system
.end:
add rsp, 5000
pop rdi
pop rbp
ret