/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlen.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/28 13:36:00 by yli               #+#    #+#             */
/*   Updated: 2022/11/28 14:46:54 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"
//#include <stdio.h>

size_t	ft_strlen(const char *str)
{
	size_t	i;

	i = 0;
	while (str[i] != '\0')
	{
		i++;
	}
	return (i);
}

/*int	main(void)
{
	char	str[] = "ddffa";
	int	i;
	
	i = ft_strlen(str);
	printf("%d\n", i);
	printf("%s\n", str);
	return (0);
}*/
