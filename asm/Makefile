# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bandre <bandre@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/27 16:43:59 by bandre            #+#    #+#              #
#    Updated: 2018/11/24 21:08:47 by bandre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAG=-fpic

all: Colleen Grace Sully




Colleen:
	nasm -f macho64 Colleen.s -o Colleen.o 
	gcc Colleen.o -o Colleen $(FLAG)

Grace:
	nasm -f macho64 Grace.s 
	gcc Grace.o -o Grace $(FLAG)

Sully:
	nasm -f macho64 Sully.s 
	gcc Sully.o -o Sully $(FLAG)
fclean: clean
	rm -f Colleen
	rm -f Grace
	rm -f Sully

clean:
	rm -f Colleen.o
	rm -f Grace.o
	rm -f Grace_kid.s
	rm -f Sully_*
	rm -f Sully.o

re: fclean all