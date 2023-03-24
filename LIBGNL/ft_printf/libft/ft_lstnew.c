/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstnew.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/20 20:50:24 by yli               #+#    #+#             */
/*   Updated: 2022/12/22 20:53:27 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*new;

	new = (t_list *)malloc(sizeof(t_list));
	if (!new)
		return (0);
	new->next = 0;
	new->content = content;
	return (new);
}
/*
int	main(void)
{
	t_list	*list = NULL;
	t_list	*element;
	
	int	data[] = {1, 2, 3, 4, 5};
	int	i = 0;
	while	(i < 5)
	{
		element = ft_lstnew(&data[i]);
		element->next = list;
		list = element;
			i++;
	}
	while (list != NULL)
	{
		printf("%d", *(int *)list->content);
		list = list->next;
	}
	return (0);
}*/
