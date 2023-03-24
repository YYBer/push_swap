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

static void	swap(t_stack *stack)
{
	int	temp;

	if (stack == NULL || stack->next == NULL)
		return ;
	temp = stack->value;
	stack->value = stack->next->value;
	stack->next->value = temp;
	temp = stack->index;
	stack->index = stack->next->index;
	stack->next->index = temp;
	fill_stack_position(&stack);
}

void	sa(t_stack **stack)
{
	swap(*stack);
	write(1, "sa\n", 3);
}

void	sb(t_stack **stack)
{
	swap(*stack);
	write(1, "sb\n", 3);
}

void	ss(t_stack **stack_a, t_stack **stack_b)
{
	swap(*stack_a);
	swap(*stack_b);
	write(1, "ss\n", 3);
}
