/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   test.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/02/13 17:19:37 by yli               #+#    #+#             */
/*   Updated: 2023/02/13 17:19:39 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <error.h>
#include <unistd.h>
#include "get_next_line.h"

/*
void	ft_init_map(t_game *game, char **argv)
{
	char	*wbuffer;
	int		map_fd;

	map_fd = open(argv[1], O_RDONLY);
	if (map_fd == -1)
		ft_error("map can not open\n", game);
	game->map.rows = 0;
	wbuffer = get_next_line(map_fd);
	while (wbuffer)
	{
		wbuffer = get_next_line(map_fd);
		free(wbuffer);
	}
	close(map_fd);
}*/

int	main(int argc, char **argv)
{
	int		map_fd;
	char	*wbuffer;

	map_fd = open(argv[1], O_RDONLY);
	wbuffer = get_next_line(map_fd);
	if (argc == 2)
	{
		while (wbuffer)
		{
			ft_printf("%s", wbuffer);	
			free(wbuffer);
			wbuffer = get_next_line(map_fd);
		}
	}
	close(map_fd);
	return (0);
}
/*
int	main(int argc, char **argv)
{
	int		fd = open(argv[1], O_RDONLY);
	char	*wbuffer = get_next_line(fd);

	if (argc == 2)
	{
		while (wbuffer)
		{
			printf("%s", wbuffer);
			free(wbuffer);
			wbuffer = get_next_line(fd);
		}
	}
	close(fd);
	return (0);
}*/
