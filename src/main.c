/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 20:50:31 by yli               #+#    #+#             */
/*   Updated: 2023/03/02 20:50:32 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	main(int argc, char **argv)
{
	t_stack	*stack_a;
	t_stack	*stack_b;

	stack_a = stack_integration(argc, argv);
	stack_b = NULL;
	ft_small_size_integration(&stack_a);
	ft_big_size_integration(&stack_a, &stack_b);
	free_stack(&stack_a);
	free_stack(&stack_b);
}
