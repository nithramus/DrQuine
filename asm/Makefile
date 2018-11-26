# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bandre <bandre@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/27 16:43:59 by bandre            #+#    #+#              #
#    Updated: 2018/11/26 22:32:27 by bandre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAG=-fpic

all: Colleen Grace Sully

Colleen: Colleen.o
	gcc Colleen.o -o Colleen $(FLAG)

Colleen.o: Colleen.s
	nasm -f macho64 Colleen.s -o Colleen.o 

Grace: Grace.o
	gcc Grace.o -o Grace $(FLAG)

Grace.o: Grace.s
	nasm -f macho64 Grace.s 

Sully: Sully.o
	gcc Sully.o -o Sully $(FLAG)

Sully.o: Sully.s
	nasm -f macho64 Sully.s 

fclean: clean
	rm -f Colleen
	rm -f Grace
	rm -f Sully

clean:
	rm -f Colleen.o
	rm -f Grace.o
	rm -f Grace_kid.s
	rm -f Sully.o

re: fclean all

.PHONY: all Colleen Grace Sully fclean clean re