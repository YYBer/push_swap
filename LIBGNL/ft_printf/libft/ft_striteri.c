/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_striteri.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/12 17:00:35 by yli               #+#    #+#             */
/*   Updated: 2022/12/13 16:09:05 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

void	ft_striteri(char *s, void (*f)(unsigned int, char*))
{
	unsigned int	i;

	if (!s || !f)
		return ;
	i = 0;
	while (s[i])
	{
		f(i, &s[i]);
		i++;
	}
}
/*
void print_lowercase(unsigned int i, char *c)
{
    printf("%u %c\n", i, *c);
}

int main(void)
{
    char *str = "aabbccdd";
    ft_striteri(str, print_lowercase);
    printf("\n");
    return 0;
}*/
