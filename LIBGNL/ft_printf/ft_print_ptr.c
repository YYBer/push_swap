/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_ptr.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/26 21:22:53 by yli               #+#    #+#             */
/*   Updated: 2022/12/30 16:09:59 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_ptr(size_t ptr, int *length)
{
	char	str[50];
	char	*hex_c;
	int		i;

	if (!ptr)
	{
		write(1, "(nil)", 5);
		(*length) += 5;
		return ;
	}
	write(1, "0x", 2);
	(*length) += 2;
	hex_c = "0123456789abcdef";
	i = 0;
	while (ptr)
	{
		str[i] = hex_c[ptr % 16];
		ptr = ptr / 16;
		i++;
	}
	while (i--)
	{
		ft_print_length(str[i], length);
	}
}
