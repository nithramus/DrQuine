# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bandre <bandre@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/13 01:23:45 by nithramir         #+#    #+#              #
#    Updated: 2018/11/22 16:57:39 by bandre           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	make -C asm/
	make -C c/
	make -C js/

clean:
	make clean -C asm/
	make clean -C c/
	make clean -C js/

fclean:
	make fclean -C asm/
	make fclean -C c/
	make fclean -C js/

re: fclean all