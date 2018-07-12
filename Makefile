# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nithramir <nithramir@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 01:23:45 by nithramir         #+#    #+#              #
#    Updated: 2018/07/13 01:25:02 by nithramir        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	make -C asm/
	make -C c/

clean:
	make clean -C asm/
	make clean -C c/

fclean: clean
	make fclean -C asm/
	make fclean -C c/
