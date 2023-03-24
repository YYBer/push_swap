/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <marvin@42.fr>                         +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/06 14:16:14 by yli               #+#    #+#             */
/*   Updated: 2023/01/06 14:16:18 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GET_NEXT_LINE_H
# define GET_NEXT_LINE_H
# include <stdlib.h>
# include <sys/types.h>
# include <sys/uio.h>
# include <unistd.h>
# include <stddef.h>
# include <fcntl.h>
# include "ft_printf/libft/libft.h"
# include "ft_printf/ft_printf.h"
# ifndef BUFFER_SIZE
#  define BUFFER_SIZE 5
# endif

char	*get_wstr(int fd, char *wstr);
char	*get_wbuffer(char *wstr);
char	*get_strrst(char *wstr);
char	*get_next_line(int fd);
char	*ft_strjoin_frees1(char *s1, char *s2);
char	*ft_strchr_gnl(char *s, int c);
size_t		ft_strlen_gnl(char const *str);
int		ft_printf(const char *str, ...);
void	*ft_calloc(size_t count, size_t size);

#endif
