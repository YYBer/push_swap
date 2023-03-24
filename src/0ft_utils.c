/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   0ft_utils.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/01 12:48:07 by yli               #+#    #+#             */
/*   Updated: 2023/03/01 12:48:09 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

void	free_stack(t_stack **stack)
{
	t_stack	*temp;

	if (!*stack || !stack)
		return ;
	while (*stack)
	{
		temp = (*stack)->next;
		free(*stack);
		*stack = temp;
	}
	*stack = NULL;
}

void	free_str(char **str)
{
	int	i;

	i = 0;
	while (str[i])
	{
		if (*str != NULL)
		{
			free(str[i]);
			i++;
		}
		*str = NULL;
	}
	free (str);
}

int	get_stack_size(t_stack *stack)
{
	int	i;

	i = 0;
	if (!stack)
		return (0);
	while (stack)
	{
		stack = stack->next;
		i++;
	}
	return (i);
}

int	ft_error(void)
{
	write(2, "Error\n", 6);
	exit(1);
}

void	print_stack(t_stack *s)
{
	t_stack	*temp;

	temp = s;
	printf("\n==STACK==\n");
	if (s == NULL)
	{
		printf("Stack empty!\n");
		return ;
	}
	while (temp)
	{
		printf("index: %i ", temp->index);
		printf("position: %i\n", temp->pos);
		temp = temp->next;
	}
	printf("=========\n\n");
}
