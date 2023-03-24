/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memset.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 14:56:05 by yli               #+#    #+#             */
/*   Updated: 2022/11/28 16:04:14 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

void	*ft_memset(void *s, int c, size_t n)
{
	void	*i;

	i = s;
	while (n-- > 0)
		*(char *)s++ = (unsigned char)c;
	return (i);
}
/*
int	main (void)
{
	char str[] = "aaaaabbbbbcccccddddddeeeee";

	ft_memset(str, '1', 5);
	printf("%s\n", str);
	return (0);
}*/
