/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_hex.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/26 21:22:56 by yli               #+#    #+#             */
/*   Updated: 2022/12/30 17:19:14 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"
/*Take a decimal number as input.
    Divide the input number by 16. Store the remainder in the array.
    Do step 2 with the quotient obtained until quotient becomes zero.
    Print the array in the reversed fashion to get hexadecimal number.*/

void	ft_print_hex(unsigned int x, int *length, char z)
{
	char	str[50];
	char	*hex_c;
	int		i;

	if (z == 'x')
		hex_c = "0123456789abcdef";
	else
		hex_c = "0123456789ABCDEF";
	i = 0;
	if (x == 0)
	{
		ft_print_length('0', length);
		return ;
	}
	while (x)
	{
		str[i] = hex_c[x % 16];
		x = x / 16;
		i++;
	}
	while (i--)
		ft_print_length(str[i], length);
}
