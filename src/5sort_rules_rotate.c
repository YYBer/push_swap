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

void	rotate(t_stack **stack)
{
	t_stack	*temp;
	t_stack	*bottom;

	temp = *stack;
	*stack = (*stack)->next;
	bottom = get_stack_bottom(*stack);
	temp->next = NULL;
	bottom->next = temp;
	fill_stack_position(stack);
}

void	ra(t_stack **stack)
{
	rotate(stack);
	write(1, "ra\n", 3);
}

void	rb(t_stack **stack)
{
	rotate(stack);
	write(1, "rb\n", 3);
}

void	rr(t_stack **stack_a, t_stack **stack_b)
{
	rotate(stack_a);
	rotate(stack_b);
	write(1, "rr\n", 3);
}
