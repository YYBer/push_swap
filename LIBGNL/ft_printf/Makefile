# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yli <yli@student.42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/26 21:14:38 by yli               #+#    #+#              #
#    Updated: 2022/12/30 16:38:32 by yli              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME                    = libftprintf.a
HEADER = ft_printf.h
CFLAGS = -Wall -Werror -Wextra

YELLOW = \033[0;33m
PURPLE = \033[10;95m
RESET = \033[0m

SRCS                    =       ft_printf.c \
								ft_print_nbr.c \
								ft_print_hex.c \
								ft_print_length.c \
								ft_print_nbr.c \
								ft_print_ptr.c \
								ft_print_str.c \
								ft_print_unsigned.c \

OBJS = $(SRCS:.c=.o)
LIBFT = libft/libft.a

$(NAME): $(OBJS)
		@echo "$(YELLOW)Making libft.a...$(RESET)"
		make -C libft
		@cp  $(LIBFT) $(NAME)
		@echo "$(YELLOW)Making libftprintf.a...$(RESET)"
		@ar rcs $(NAME) $(OBJS)
		@echo "$(YELLOW)compile finished$(RESET)"

all: $(NAME)

clean:
		rm -f $(OBJS)
		@make clean -C libft

fclean: clean
		rm -f $(NAME)
		@make fclean -C libft

re: fclean all


.PHONY: all clean fclean re 
