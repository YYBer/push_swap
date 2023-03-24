/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 20:45:04 by yli               #+#    #+#             */
/*   Updated: 2022/12/12 17:05:59 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

char	*ft_strchr(const char*str, int c)
{
	while (*str != (char)c && *str)
		str++;
	if ((char)c != '\0' && *str == '\0')
		return (NULL);
	return ((char *)str);
}
/*
#include <stdio.h>
int	main(void)
{
	const char	a[] = "aabbccdeefff";
	char 	*c;
	
	c = ft_strchr(a, 'z');
	printf("%s\n", c);
	return (0);
}*/
