/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/01 20:59:56 by yli               #+#    #+#             */
/*   Updated: 2022/12/12 14:05:29 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *src)
{
	int		i;
	int		size;
	char	*des;

	size = 0;
	while (src[size])
		++size;
	des = malloc(sizeof(char) * (size + 1));
	if (!des)
		return (0);
	i = 0;
	while (src[i])
	{
		des[i] = src[i];
		i++;
	}
	des[i] = '\0';
	return (des);
}
/*
int	main()
{
	char	str[] = "abcdefghilyfd";
	char	*target = ft_strdup(str);
	
	printf("%s\n", target);
	return 0;
}*/
