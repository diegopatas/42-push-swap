#include "../incl/push_swap.h"

void	stack_sort_id(int argc, int *vec, t_list *stack)
{
	t_list	*aux;
	int	i;

	i = 0;
	while (++i < argc) {
		aux = stack;
		while (aux) {
			if (vec[i - 1] == ((t_cell *)aux->content)->value) 
				((t_cell *)aux->content)->id = i;
			aux = aux->next;
		}
	}
	return ;
}
