/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: emoreau <emoreau@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/07 18:41:28 by emoreau           #+#    #+#             */
/*   Updated: 2022/11/16 14:38:50 by emoreau          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/libft.h"

int	ft_isalpha(int c)
{
	if ((c < 91 && c > 64) || (c < 123 && c > 96))
		return (1);
	else
		return (0);
}
/*
#include <stdio.h>
int	main(void)
{
	char	c;
	c = 'd';
	int	i;

	i = c;
	printf("%d", ft_isalpha(c));
}
*/