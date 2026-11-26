/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   has_duplicate.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lilyass <lilyass@student.1337.ma>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/11/23 23:54:09 by lilyass           #+#    #+#             */
/*   Updated: 2026/11/26 12:58:04 by lilyass          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "push_swap.h"

int	has_duplicate(t_stack *a, int val)
{
	t_node	*node;

	node = a->top;
	while (node)
	{
		if (node->value == val)
			return (1);
		node = node->next;
	}
	return (0);
}
