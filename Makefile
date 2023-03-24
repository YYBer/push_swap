# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yli <marvin@42.fr>                         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/27 19:19:34 by yli               #+#    #+#              #
#    Updated: 2023/02/27 19:19:36 by yli              ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
GREEN = \033[0;32m
BLUE = \033[0;34m
RESET = \033[0m

CC		= cc
CFLAGS	= -Wall -Werror -Wextra
NAME	= push_swap

SRC_PATH = src/
OBJ_PATH = obj/

SRC	= main.c\
	0ft_utils.c 1check_argv.c 2init_stack.c 2init_stack_2.c 3sort_rules_swap.c \
	4sort_rules_push.c 5sort_rules_rotate.c 6sort_rules_reverse_rotate.c\
	7sort_size_small.c 7sort_size_small_2.c \
	8sort_size_big.c 8sort_size_big_2.c 8sort_size_big_3.c 9sort_size_500.c
SRCS	= $(addprefix $(SRC_PATH), $(SRC))
OBJ		= $(SRC:.c=.o)
OBJS	= $(addprefix $(OBJ_PATH), $(OBJ))
INCS	= -I ./includes/

LIBGNL = LIBGNL/libgnl.a

all: $(OBJ_PATH) $(NAME) $(LIBGNL)

$(OBJ_PATH)%.o: $(SRC_PATH)%.c
	$(CC) $(CFLAGS) -c $< -o $@ $(INCS)

$(OBJ_PATH):
	mkdir $(OBJ_PATH)

$(NAME): $(OBJS)
	@make -C LIBGNL
	@cp $(LIBGNL) $(NAME)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -rf $(OBJ_PATH)

fclean: clean
	rm -f $(NAME)

re: fclean all

norm: 
	@echo "$(GREEN)\nmandatory norminette$(RESET)"
	@norminette $(SRCS)

##run: $(NAME)
##	$(VALGRIND) ./$(NAME)

.PHONY: all clean fclean re norm
