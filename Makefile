NAME=Grace

files= Colleen.s

all: 
	nasm -f elf64 asm/Grace.s
	gcc asm/Grace.o -o $(NAME)