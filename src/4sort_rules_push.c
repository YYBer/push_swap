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

static void	push(t_stack **stack1, t_stack **stack2)
{
	t_stack	*temp;

	if (*stack1 == NULL)
		return ;
	temp = (*stack1)->next;
	(*stack1)->next = *stack2;
	*stack2 = *stack1;
	*stack1 = temp;
	fill_stack_position(stack1);
	fill_stack_position(stack2);
}

void	pa(t_stack **stack_a, t_stack **stack_b)
{
	push(stack_b, stack_a);
	write(1, "pa\n", 3);
}

void	pb(t_stack **stack_a, t_stack **stack_b)
{
	push(stack_a, stack_b);
	write(1, "pb\n", 3);
}
