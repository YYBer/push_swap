/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   9sort_size_big_utils.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/16 18:08:34 by yli               #+#    #+#             */
/*   Updated: 2023/03/16 18:08:36 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	sort_2_500(t_stack **stack_a, t_stack **stack_b, int ratio)
{
	int	size;
	int	i;

	size = get_stack_size(*stack_a);
	i = 0;
	while (i < size)
	{
		if ((*stack_a)->index < ratio && get_stack_size(*stack_b) >= 1)
		{
			pb(stack_a, stack_b);
			rb(stack_b);
		}
		else if ((*stack_a)->index > ratio + 0.08 * size)
			ra(stack_a);
		else
			pb(stack_a, stack_b);
		i++;
	}
}

static void	sort_3_500(t_stack **stack_a, t_stack **stack_b)
{
	int	size;
	int	i;

	size = get_stack_size(*stack_a);
	i = 0.08 * size;
	while (i <= size)
	{
		sort_2_500(stack_a, stack_b, i);
		i = i + 0.16 * size;
		if (get_stack_size(*stack_a) == 0)
			break ;
	}
	size = get_stack_size(*stack_a);
	while (size > 0)
	{
		pb(stack_a, stack_b);
		size--;
	}
}

static void	sort_5_500(t_stack **stack_a, t_stack **stack_b)
{
	sort_3_500(stack_a, stack_b);
	get_max_node_to_first(stack_b);
	pa(stack_a, stack_b);
	optimize(stack_a, stack_b);
}

void	ft_big_size_integration(t_stack **stack_a, t_stack **stack_b)
{
	int	size;

	size = get_stack_size(*stack_a);
	if (size > 5 && size < 101)
		sort_5(stack_a, stack_b);
	if (size >= 101)
		sort_5_500(stack_a, stack_b);
	free_stack(stack_a);
	free_stack(stack_b);
}
