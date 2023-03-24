/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   2_init_stack_2.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/21 16:51:03 by yli               #+#    #+#             */
/*   Updated: 2023/03/21 16:51:04 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	check_sorted(t_stack *stack)
{
	while (stack->next != NULL)
	{
		if (stack->value > stack->next->value)
			return (0);
		stack = stack->next;
	}
	return (1);
}

t_stack	*get_stack_bottom(t_stack *stack)
{
	while (stack && stack->next != NULL)
		stack = stack->next;
	return (stack);
}

t_stack	*get_stack_second_from_bottom(t_stack *stack)
{
	while (stack && stack->next && stack->next->next != NULL)
		stack = stack->next;
	return (stack);
}

t_stack	*new_node(int value)
{
	t_stack	*new_node;

	new_node = NULL;
	new_node = (t_stack *)malloc(sizeof(t_stack));
	if (!new_node)
		return (NULL);
	new_node->value = value;
	new_node->index = 1;
	new_node->pos = 1;
	new_node->next = 0;
	return (new_node);
}

void	stack_add_bottom(t_stack **stack, t_stack *new_node)
{
	t_stack	*bottom;

	if (!new_node)
		return ;
	if (!stack)
	{
		*stack = new_node;
		return ;
	}
	bottom = get_stack_bottom(*stack);
	bottom->next = new_node;
}
