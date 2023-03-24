/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unsigned.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/26 21:22:49 by yli               #+#    #+#             */
/*   Updated: 2022/12/30 14:53:07 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_unsigned(unsigned int u, int *length)
{
	if (u >= 10)
		ft_print_unsigned(u / 10, length);
	ft_print_length(u % 10 + '0', length);
}
