/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/27 19:42:57 by yli               #+#    #+#             */
/*   Updated: 2023/02/27 19:42:58 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef	PUSH_SWAP_H
# define PUSH_SWAP_H

# include <stddef.h>
# include <stdlib.h>
# include <unistd.h>
# include <limits.h>
# include <stdio.h>
# include "../LIBGNL/ft_printf/libft/libft.h"
# include "../LIBGNL/ft_printf/ft_printf.h"
# include "../LIBGNL/get_next_line.h"

typedef struct s_stack
{
	int	value;
	int	index;
	int	pos;
	struct s_stack *next;
} t_stack;

/*0ft_utils.c*/
void	free_stack(t_stack **stack);
void	free_str(char **str);
int	get_stack_size(t_stack *stack);
int	ft_error(void);
void	print_stack(t_stack *s);

/*1check_argv.c*/
long int	ft_atoi_pushswap(const char *str);
int	check_duplicate_extremnum(char **argv);

/*2init_stack.c*/
t_stack	*stack_integration(int argc, char **argv);
void	fill_stack_position(t_stack **stack);

/*2init_stack_2.c*/
int	check_sorted(t_stack *stack);
t_stack	*get_stack_bottom(t_stack *stack);
t_stack	*get_stack_second_from_bottom(t_stack *stack);
t_stack *new_node(int value);
void	stack_add_bottom(t_stack **stack, t_stack *new_node);

/*3sort_rules_swap.c*/
void	sa(t_stack **stack);
void	sb(t_stack **stack);

/*4sort_rules_push.c*/
void	pa(t_stack **stack_a, t_stack **stack_b);
void	pb(t_stack **stack_a, t_stack **stack_b);

/*5sort_rules_rotate.c*/
void	ra(t_stack **stack);
void	rb(t_stack **stack);

/*6sort_rules_reverse_rotate.c*/
void	rra(t_stack **stack);
void	rrb(t_stack **stack);

/*7sort_size_small.c*/
void	ft_small_size_integration(t_stack **stack);

/*7sort_size_small_2.c*/
int	get_min_index(t_stack *stack);
void	index_min(t_stack **stack);
void	check_bottom_min(t_stack **stack);
void	check_second_bottom_min(t_stack **stack);

/*8sort_size_big_2.c*/
int	get_max_index(t_stack *stack);
int	get_max_index_position(t_stack *stack);
void	get_max_node_to_first(t_stack **stack);
void	check_stack_top_is_sorted(t_stack **stack);
void	check_stack_bottom_is_needed(t_stack **stack_a, t_stack **stack_b);

/*8sort_size_big_3.c*/
void	excute_max_or_expected_node(t_stack **stack_a, t_stack **stack_b);

/*8sort_size_big.c*/
void	sort_3(t_stack **stack_a, t_stack **stack_b);
void	optimize(t_stack **stack_a, t_stack **stack_b);
void	sort_5(t_stack **stack_a, t_stack **stack_b);

/*9sort_size_500.c*/
void	ft_big_size_integration(t_stack **stack_a, t_stack **stack_b);

/*main.c*/
int	main(int argc, char **argv);
#endif
