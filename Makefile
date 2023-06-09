# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: emoreau <emoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/03/29 19:25:41 by emoreau           #+#    #+#              #
#    Updated: 2023/05/22 18:27:48 by emoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC_DIR		= ./srcs/
OBJ_DIR	= ./obj/
SRCS	=	so_long.c\
			pathfinding.c\
			pathfinding_utils.c\
			init.c\
			verimap.c\
			verimap2.c\
			mlximg.c\
			free.c\
			move.c\
			map.c

OBJS = $(patsubst %.c,$(OBJ_DIR)%.o,$(SRCS))

NAME	=	so_long
CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror -g3
RM		=	rm -rf

all:	${NAME}

$(NAME):	$(OBJS)
	$(MAKE) -C libft && $(MAKE) -C mlx
	$(CC) $(CFLAGS) -o $(NAME) $(OBJS) mlx/libmlx_Linux.a libft/libft.a -lXext -lX11 -I ./mlx/

$(OBJ_DIR)%.o: $(SRC_DIR)%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	${RM} $(OBJ_DIR)
	$(MAKE) -C libft clean

fclean:	clean
		${RM} ${NAME}
		$(MAKE) -C libft fclean

re:		fclean all

.PHONY: 	all clean fclean re