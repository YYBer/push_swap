/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/12 17:00:31 by yli               #+#    #+#             */
/*   Updated: 2023/02/14 20:18:57 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

static	size_t	count_str(char const *s, char const c)
{
	size_t	i;
	size_t	strcount;

	i = 0;
	strcount = 0;
	if (s[0] != '\0' && s[0] != c)
		strcount++;
	while (s[i] != '\0')
	{
		if (s[i] == c && s[i + 1] && s[i + 1] != c)
			strcount++;
		i++;
	}
	return (strcount);
}

static	size_t	count_char(char const *s, char const c)
{
	size_t	i;

	i = 0;
	while (s[i] != '\0')
	{
		if (s[i] == c)
			return (i);
		i++;
	}
	return (i);
}

static	char	*newstr(char const *s, char c)
{
	size_t	i;
	size_t	charcount;
	char	*str;

	i = 0;
	charcount = count_char(s, c);
	str = (char *)malloc(sizeof(char) * (charcount +1));
	if (str == NULL)
		return (NULL);
	while (i < charcount)
	{
		str[i] = s[i];
		i++;
	}
	str[i] = 0;
	return (str);
}

char	**ft_split(char const *s, char c)
{
	size_t	i;
	size_t	p;
	size_t	strcount;
	char	**ch;

	i = 0;
	p = 0;
	if (s == NULL)
		return (NULL);
	strcount = count_str(s, c);
	ch = (char **)malloc(sizeof(char *) * (strcount + 1));
	if (ch == NULL)
		return (NULL);
	while (i < strcount)
	{
		while (s[p] != '\0' && s[p] == c)
			p++;
		ch[i] = newstr(s + p, c);
		while (s[p] != '\0' && s[p] != c)
			p++;
		i++;
	}
	ch[i] = NULL;
	return (ch);
}

int	main ()
{
	char	s[] = "abcdef";
	char	c = 'c';
	char	**test = ft_split(s,c);
	
	printf("%s\n", test[1]);
	return (0);
}