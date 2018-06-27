# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bandre <bandre@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/27 16:43:59 by bandre            #+#    #+#              #
#    Updated: 2018/06/27 20:22:12 by bandre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC_PATH = ./

OBJ_PATH = libfts_obj

SRC = Colleen.s\
	  Grace.s\
	  Sully.s\

CC = nasm -f macho64

SRC_O = $(addprefix $(OBJ_PATH)/,$(SRC))

all:
	$(CC) Colleen.s
	$(CC) Grace.s
	$(CC) Sully.s
	ld Grace.o -lSystem -macosx_version_min 10.8

clean:
	rm -f $(addprefix $(OBJ_PATH)/,$(SRC))

fclean: clean
	rm -f $(NAME)

re: fclean all

lib: all
	gcc -c -g asm_test/basic_test.c -o basic_test.o
	gcc -g basic_test.o $(NAME) -o test

.PHONY: $(NAME) all %.o clean fclean re flag EXEC