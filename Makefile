NAME=Sully

# files= Colleen.s

all: 
	nasm -f elf64 asm/Sully.s
	gcc asm/Sully.o -o $(NAME)