# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: achemlal <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/21 11:41:59 by achemlal          #+#    #+#              #
#    Updated: 2024/11/21 12:07:36 by achemlal         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME= libftprintf.a

CC= cc

CFLAGS= -Wall -Wextra -Werror

SRC = src/ft_putchar.c src/ft_putstr.c src/ft_putnbr.c src/ft_unsigned_putnbr.c src/ft_puthex.c src/ft_putadr.c src/ft_printf.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@ar rcs $(NAME) $(OBJ)
	@echo "Library $(NAME) created."

src/%.o: src/%.c src/ft_printf.h
	@$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compiled $<"

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)
	@echo "Library $(NAME) removed."

re : fclean all

.PHONY: all clean fclean re
