/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strrchr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/30 19:23:52 by yli               #+#    #+#             */
/*   Updated: 2022/11/30 19:29:15 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int	i;

	i = 0;
	while (s[i])
		i++;
	while (i >= 0)
	{
		if (s[i] == (char)c)
			return ((char *)(s + i));
		i--;
	}
	return (0);
}
/*
int	main(void)
{
	int	i;
	const char	str[] = "abc.ef";
	const char	ch = '.';
	char	*ret;

	ret = ft_strrchr(str, ch);
	printf("String after %c is %s\n", ch, ret);
	return (0);
}*/
