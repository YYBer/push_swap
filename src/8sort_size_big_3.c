/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   8sort_size_big_3.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/24 15:38:56 by yli               #+#    #+#             */
/*   Updated: 2023/03/24 15:38:57 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static int	get_expected_index(t_stack *stack, int index)
{
	while (stack)
	{
		if (stack->index > index)
		{
			index = stack->index;
			return (index);
		}
		stack = stack->next;
	}
	return (index);
}

static int	get_expected_index_position(t_stack *stack, int i)
{
	int	index;
	int	pos;

	index = stack->index;
	pos = stack->pos;
	while (stack)
	{
		if (stack->index > i)
		{
			index = stack->index;
			pos = stack->pos;
			return (pos);
		}
		stack = stack->next;
	}
	return (pos);
}

static void	get_expected_node_to_first(t_stack **stack_a, t_stack **stack_b)
{
	t_stack	*bottom_a_index;
	int		expected_pos;
	int		expected_int;

	bottom_a_index = get_stack_bottom(*stack_a);
	expected_int = get_expected_index(*stack_b, bottom_a_index->index);
	expected_pos = get_expected_index_position(*stack_b, bottom_a_index->index);
	while ((*stack_b)->next)
	{
		if ((*stack_b)->index == expected_int)
			return ;
		else if (expected_pos <= get_stack_size(*stack_b) / 2)
			rb(stack_b);
		else
			rrb(stack_b);
	}
}

static int	max_or_expected_node(t_stack **stack_a, t_stack **stack_b)
{
	t_stack	*tempa;
	int		size;
	int		max_pos;
	int		expected_pos;

	size = get_stack_size(*stack_b);
	max_pos = get_max_index_position(*stack_b);
	tempa = get_stack_bottom(*stack_a);
	expected_pos = get_expected_index_position(*stack_b, tempa->index);
	if (max_pos <= size / 2 && expected_pos <= size / 2)
		if (max_pos - expected_pos <= 0)
			return (1);
	if (max_pos > size / 2 && expected_pos > size / 2)
		if (max_pos - expected_pos >= 0)
			return (1);
	if (max_pos <= size / 2 && expected_pos > size / 2)
		if (max_pos + expected_pos <= size)
			return (1);
	if (max_pos > size / 2 && expected_pos <= size / 2)
		if (max_pos + expected_pos >= size)
			return (1);
	return (0);
}

void	excute_max_or_expected_node(t_stack **stack_a, t_stack **stack_b)
{
	if (max_or_expected_node(stack_a, stack_b) == 1)
	{	
		get_max_node_to_first(stack_b);
		pa(stack_a, stack_b);
		check_stack_bottom_is_needed(stack_a, stack_b);
	}
	else
	{
		get_expected_node_to_first(stack_a, stack_b);
		pa(stack_a, stack_b);
		check_stack_top_is_sorted(stack_a);
	}
}
