/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   7sort_size_small_2.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/21 17:05:13 by yli               #+#    #+#             */
/*   Updated: 2023/03/21 17:05:15 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	get_min_index(t_stack *stack)
{
	int	index;

	index = stack->index;
	while (stack)
	{
		if (stack->index < index)
			index = stack->index;
		stack = stack->next;
	}
	return (index);
}

void	index_min(t_stack **stack)
{
	int	i;

	i = get_min_index(*stack);
	while ((*stack)->next)
	{
		if ((*stack)->index == i)
			break ;
		ra(stack);
	}
}

void	check_bottom_min(t_stack **stack)
{
	t_stack	*temp;
	int		i;

	i = get_min_index(*stack);
	temp = get_stack_bottom(*stack);
	if (temp->index == i)
		rra(stack);
}

void	check_second_bottom_min(t_stack **stack)
{
	t_stack	*temp;
	int		i;

	i = get_min_index(*stack);
	temp = get_stack_second_from_bottom(*stack);
	if (temp->index == i)
	{
		rra(stack);
		rra(stack);
	}
}
