/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   4sort_size.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 20:50:21 by yli               #+#    #+#             */
/*   Updated: 2023/03/02 20:50:22 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	sort_2(t_stack **stack_a, t_stack **stack_b, int ratio)
{
	int	size;
	int	i;

	size = get_stack_size(*stack_a);
	i = 0;
	while (++i < size)
	{
		if ((*stack_a)->index < ratio && get_stack_size(*stack_b) >= 1)
		{
			pb(stack_a, stack_b);
			rb(stack_b);
		}
		else if ((*stack_a)->index > ratio + 0.12 * size)
			ra(stack_a);
		else
			pb(stack_a, stack_b);
	}
}

void	sort_3(t_stack **stack_a, t_stack **stack_b)
{
	int	size;
	int	i;

	size = get_stack_size(*stack_a);
	i = 0.12 * size;
	while (i <= size)
	{
		sort_2(stack_a, stack_b, i);
		i = i + 0.24 * size;
	}
	size = get_stack_size(*stack_a);
	while (size > 0)
	{
		pb(stack_a, stack_b);
		size--;
	}
}

void	optimize(t_stack **stack_a, t_stack **stack_b)
{
	t_stack	*tempa;

	while (get_stack_size(*stack_b) > 0)
	{	
		tempa = get_stack_bottom(*stack_a);
		if (check_sorted(*stack_a))
		{
			pa(stack_a, stack_b);
			check_stack_top_is_sorted(stack_a);
		}
		else if ((*stack_b)->index == (*stack_a)->index - 1)
		{
			pa(stack_a, stack_b);
			check_stack_bottom_is_needed(stack_a, stack_b);
		}
		else if ((*stack_b)->index > tempa->index)
		{
			pa(stack_a, stack_b);
			check_stack_top_is_sorted(stack_a);
		}
		else
			excute_max_or_expected_node(stack_a, stack_b);
	}
}

void	sort_5(t_stack **stack_a, t_stack **stack_b)
{
	sort_3(stack_a, stack_b);
	get_max_node_to_first(stack_b);
	pa(stack_a, stack_b);
	optimize(stack_a, stack_b);
}
