/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/12 17:00:41 by yli               #+#    #+#             */
/*   Updated: 2022/12/13 16:09:07 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

/*size_t	ft_strlen(const char *str)
{
	size_t	i;

	i = 0;
	while (str[i] != '\0')
	{
		i++;
	}
	return (i);
}*/

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	char	*dst;
	int		i;
	int		len;

	i = 0;
	if (!s || !f)
		return (NULL);
	len = ft_strlen(s);
	dst = malloc(sizeof(char) * (len + 1));
	if (!dst)
		return (NULL);
	while (s[i])
	{
		dst[i] = f(i, s[i]);
		i++;
	}
	dst[i] = '\0';
	return (dst);
}
/*
char    ft_upper(unsigned int i, char c)
{
    if (i < 10000000)
    {
        if (c >= 'a' && c <= 'z')
            c = c - 32;
    }
    return (c);
}

int main()
{
    char *s = "hello";
    char *mapped = ft_strmapi(s, &ft_upper);
    printf("%s\n", mapped); // Prints "HELLO"
    free(mapped);
}*/
