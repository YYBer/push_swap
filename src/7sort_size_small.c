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

static void	ft_sort_two(t_stack *stack)
{
	if (stack->value > stack->next->value)
		sa(&stack);
}

static void	ft_sort_three(t_stack **stack)
{
	if (check_sorted(*stack))
		return ;
	if ((*stack)->index > (*stack)->next->index
		&& (*stack)->index > (*stack)->next->next->index)
		ra(stack);
	if ((*stack)->next->next->index < (*stack)->next->index)
		rra(stack);
	if ((*stack)->index > (*stack)->next->index)
		sa(stack);
}

static void	ft_sort_four(t_stack **stack_a)
{
	t_stack	*stack_b;

	stack_b = NULL;
	if (check_sorted(*stack_a))
		return ;
	check_bottom_min(stack_a);
	index_min(stack_a);
	pb(stack_a, &stack_b);
	ft_sort_three(stack_a);
	pa(stack_a, &stack_b);
}

static void	ft_sort_five(t_stack **stack_a)
{
	t_stack	*stack_b;

	stack_b = NULL;
	if (check_sorted(*stack_a))
		return ;
	check_bottom_min(stack_a);
	check_second_bottom_min(stack_a);
	index_min(stack_a);
	pb(stack_a, &stack_b);
	ft_sort_four(stack_a);
	pa(stack_a, &stack_b);
}

void	ft_small_size_integration(t_stack **stack)
{
	int	size;

	size = get_stack_size(*stack);
	if (size == 2)
		ft_sort_two(*stack);
	else if (size == 3)
		ft_sort_three(stack);
	else if (size == 4)
		ft_sort_four(stack);
	else if (size == 5)
		ft_sort_five(stack);
}
