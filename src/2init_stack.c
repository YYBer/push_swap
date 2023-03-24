/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   2init_stack.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 20:47:42 by yli               #+#    #+#             */
/*   Updated: 2023/03/02 20:47:43 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static	t_stack	*fill_stack_values(int argc, char **argv)
{
	t_stack	*stack_a;
	t_stack	*temp;
	int		num;
	int		i;

	stack_a = NULL;
	num = 0;
	i = 1;
	if (argc == 1 || argc == 2)
		exit(1);
	while (i < argc)
	{
		if (check_duplicate_extremnum(argv) == 0)
			num = ft_atoi_pushswap(argv[i]);
		temp = new_node(num);
		if (i == 1)
			stack_a = temp;
		else
			stack_add_bottom(&stack_a, temp);
		i++;
	}
	return (stack_a);
}

static int	map_number(int length, char **argv, int i)
{
	int	smaller;
	int	j;

	j = 1;
	smaller = 0;
	while (j <= length)
	{
		if (atoi(argv[i]) < atoi(argv[j]))
			smaller++;
		j++;
	}
	return (length - smaller);
}

static void	fill_stack_index(t_stack *stack, char **argv)
{
	int	size;
	int	i;

	size = get_stack_size(stack);
	i = 1;
	while (stack)
	{
		if (i <= size)
			stack->index = map_number(size, argv, i);
		i++;
		stack = stack->next;
	}
}

void	fill_stack_position(t_stack **stack)
{
	t_stack	*temp;
	int		i;

	i = 1;
	temp = *stack;
	while (temp)
	{
		temp->pos = i;
		temp = temp->next;
		i++;
	}
}

t_stack	*stack_integration(int argc, char **argv)
{
	t_stack	*stack;

	stack = fill_stack_values(argc, argv);
	if (check_sorted(stack))
	{
		free_stack(&stack);
		exit(1);
	}
	fill_stack_index(stack, argv);
	fill_stack_position(&stack);
	return (stack);
}
