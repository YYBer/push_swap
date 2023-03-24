/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   1check_argv.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/03/02 20:47:19 by yli               #+#    #+#             */
/*   Updated: 2023/03/02 20:47:20 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

long int	ft_atoi_pushswap(const char *str)
{
	long int	num;
	int			i;
	int			neg;

	i = 0;
	neg = 1;
	num = 0;
	if (str[i] == '-' || str[i] == '+')
	{
		if (str[i] == '-')
			neg *= -1;
		i++;
	}
	while (str[i] >= 48 && str[i] <= 57)
	{	
		num = num * 10 + (str[i] - 48);
		i++;
	}
	if (str[i] && (str[i] < 48 || str[i] > 57))
		ft_error();
	return (num * neg);
}

static int	number_compare(char *str1, char *str2)
{
	long int	i;
	long int	j;

	i = ft_atoi_pushswap(str1);
	j = ft_atoi_pushswap(str2);
	return (i - j);
}

int	check_duplicate_extremnum(char **argv)
{
	int	i;
	int	j;

	i = 1;
	while (argv[i])
	{
		if (ft_atoi_pushswap(argv[i]) > 2147483647
			|| ft_atoi_pushswap(argv[i]) < -2147483648)
			ft_error();
		j = 1;
		while (argv[j])
		{
			if (j != i && number_compare(argv[i], argv[j]) == 0)
				ft_error();
			j++;
		}
		i++;
	}
	return (0);
}
