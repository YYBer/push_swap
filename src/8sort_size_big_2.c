/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   8sort_size_big_2.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/21 17:42:15 by yli               #+#    #+#             */
/*   Updated: 2023/03/21 17:42:16 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	get_max_index(t_stack *stack)
{
	int	index;

	index = stack->index;
	while (stack)
	{
		if (stack->index > index)
			index = stack->index;
		stack = stack->next;
	}
	return (index);
}

int	get_max_index_position(t_stack *stack)
{
	int	index;
	int	pos;

	index = stack->index;
	pos = stack->pos;
	while (stack)
	{
		if (stack->index > index)
		{
			index = stack->index;
			pos = stack->pos;
		}
		stack = stack->next;
	}
	return (pos);
}

void	get_max_node_to_first(t_stack **stack)
{
	int	index;
	int	pos;

	index = get_max_index(*stack);
	pos = get_max_index_position(*stack);
	while ((*stack)->next)
	{
		if ((*stack)->index == index)
			break ;
		else if (pos <= get_stack_size(*stack) / 2)
			rb(stack);
		else
			rrb(stack);
	}
}

void	check_stack_top_is_sorted(t_stack **stack)
{
	if ((*stack)->index != (*stack)->next->index - 1)
		ra(stack);
}

void	check_stack_bottom_is_needed(t_stack **stack_a, t_stack **stack_b)
{
	t_stack	*temp;
	int		size;

	size = get_stack_size(*stack_a);
	check_stack_top_is_sorted(stack_a);
	while (size > 0)
	{
		temp = get_stack_bottom(*stack_a);
		if (temp->index == (*stack_a)->index - 1)
			rra(stack_a);
		else
			break ;
		size--;
	}
	size = get_stack_size(*stack_a);
	while (size > 0)
	{
		temp = get_stack_bottom(*stack_a);
		if (temp->index == get_max_index(*stack_a) && (*stack_b) != NULL)
		{
			pa(stack_a, stack_b);
			check_stack_top_is_sorted(stack_a);
		}
		size--;
	}
}
