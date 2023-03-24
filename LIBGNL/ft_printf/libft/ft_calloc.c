/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/01 20:57:56 by yli               #+#    #+#             */
/*   Updated: 2022/12/01 20:59:05 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
/*
void	ft_bzero(void *s, size_t n)
{
	unsigned char	*ptr;

	ptr = (char *)s;
	while (n-- > 0)
		*ptr++ = 0;
}*/

void	*ft_calloc(size_t count, size_t size)
{
	void	*str;

	str = malloc(size * count);
	if (!str)
		return (0);
	ft_bzero(str, size * count);
	return (str);
}
/*
int	main(void)
{
	int	n;
	int	*p1 = ft_calloc(4, sizeof(int));
	int	*p2 = ft_calloc(1, sizeof(int[4]));
	int	*p3 = ft_calloc(4, sizeof *p3);
	
	n = 0;
	if(p2 && n <4)
	{
		n++;
		printf("%d\n", p2[n]);
	}
	printf("%d\n", *p1);
	printf("%d\n", *p3);
	free(p1);
	free(p2);
	free(p3);
}*/
