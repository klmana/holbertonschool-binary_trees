#include "binary_trees.h"

/**
 *binary_trees_ancestor - function finds the lowest common ancestor of 2 nodes
 *@first: is a pointer to the first node
 *@second: is a pointer to the second node
 *Return: a pointer to the lowest common ancestor node of the two given nodes
 *If no common ancestor was found, your function must return NULL
*/

binary_tree_t *binary_trees_ancestor(const binary_tree_t *first,
				     const binary_tree_t *second)
{
		binary_tree_t *depth;

		if (first == NULL)
			return (NULL);
		if (second == NULL)
			return (NULL);
		depth = (binary_tree_t *)second;
	while (first)
	{
		while (second)
		{
			if (first == second)
				return ((binary_tree_t *)first);
			second = second->parent;
		}
		second = depth;
		first = first->parent;
	}
	return (NULL);
}
