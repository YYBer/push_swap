/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 19:20:59 by yli               #+#    #+#             */
/*   Updated: 2022/12/22 18:26:58 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	n;
	size_t	m;

	if (size <= ft_strlen(dst))
		return (size + ft_strlen(src));
	n = ft_strlen(dst);
	m = 0;
	while (src[m] != 0 && n + 1 < size)
	{
		dst[n] = src[m];
		n++;
		m++;
	}
	dst[n] = 0;
	return (ft_strlen(dst) + ft_strlen(&src[m]));
}
/*
#include <stdio.h>
int	main(void)
{
	char	a[] = "ab";
	char	b[] = "rst";
	int	c;
	
	c = ft_strlcat(a, b, 8);
	printf("%d\n", c);
	return(0);
}*/