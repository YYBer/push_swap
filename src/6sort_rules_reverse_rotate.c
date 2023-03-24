/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   3sort.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 20:48:02 by yli               #+#    #+#             */
/*   Updated: 2023/03/02 20:48:03 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

static void	reverse_rotate(t_stack **stack)
{
	t_stack	*temp;
	t_stack	*bottom;
	t_stack	*s_bottom;

	bottom = get_stack_bottom(*stack);
	s_bottom = get_stack_second_from_bottom(*stack);
	temp = *stack;
	*stack = bottom;
	bottom->next = temp;
	s_bottom->next = NULL;
	fill_stack_position(stack);
}

void	rra(t_stack **stack)
{
	reverse_rotate(stack);
	write(1, "rra\n", 4);
}

void	rrb(t_stack **stack)
{
	reverse_rotate(stack);
	write(1, "rrb\n", 4);
}

void	rrr(t_stack **stack_a, t_stack **stack_b)
{
	reverse_rotate(stack_a);
	reverse_rotate(stack_b);
	write(1, "rrr\n", 4);
}
