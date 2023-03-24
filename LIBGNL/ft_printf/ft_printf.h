/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yli <yli@student.42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/28 22:39:33 by yli               #+#    #+#             */
/*   Updated: 2022/12/30 15:58:44 by yli              ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H
# include <unistd.h>
# include <stdlib.h>
# include <stddef.h>
# include <stdarg.h>
# include "libft/libft.h"

void	ft_print_length(char c, int *length);
void	ft_print_str(char *c, int *length);
void	ft_print_nbr(int i, int *length);
void	ft_print_hex(unsigned int x, int *length, char z);
void	ft_print_unsigned(unsigned int u, int *length);
void	ft_print_ptr(size_t ptr, int *length);

int		ft_printf(const char *str, ...);

#endif
