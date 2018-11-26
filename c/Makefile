# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bandre <bandre@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/12 22:04:46 by nithramir         #+#    #+#              #
#    Updated: 2018/11/26 22:26:53 by bandre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: Colleen Grace Sully

Colleen: Colleen.c
	gcc Colleen.c -o Colleen

Grace: Grace.c
	gcc Grace.c -o Grace

Sully: Sully.c
	gcc -DFIRST=1 Sully.c -o Sully

clean:
	rm -f Grace_kid.c

fclean: clean
	rm -f Colleen
	rm -f Grace
	rm -f Sully

re:  fclean all

$(OBJ_PATH)/%.o:$(SRC_PATH)/%.s
	$(CC) $< -o $@