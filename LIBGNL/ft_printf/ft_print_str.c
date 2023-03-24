/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_str.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/28 20:57:37 by yli               #+#    #+#             */
/*   Updated: 2022/12/30 16:01:41 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_str(char *c, int *length)
{
	size_t	i;

	i = 0;
	if (!c)
	{
		write(1, "(null)", 6);
		(*length) += 6;
		return ;
	}
	while (c[i] != '\0')
	{
		ft_print_length(c[i], length);
		i++;
	}
}		
