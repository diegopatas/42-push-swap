/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   pushswap.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddiniz <ddiniz@student.42sp.org.br>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/06/08 16:14:55 by ddiniz            #+#    #+#             */
/*   Updated: 2023/06/08 16:14:58 by ddiniz           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../incl/push_swap.h"

int	main(int argc, char *argv[])
{
	int	*arr;

	arr = NULL;
	if (argc < 2)
		return (EXIT_SUCCESS);
	arr = argv_load(argc, argv);
	if (arr)
		pushswap_init(argc, argv, arr);
	free(arr);
	return (EXIT_SUCCESS);
}
