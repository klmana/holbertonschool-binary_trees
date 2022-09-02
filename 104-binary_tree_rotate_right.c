#include "binary_trees.h"

/**
* binary_tree_rotate_right - function that perform a right-rotation
* on binary tree
* @tree: is a pointer to the root node of the tree to rotate
* Return: a pointer to the new root node of the tree once rotated
*/

binary_tree_t *binary_tree_rotate_right(binary_tree_t *tree)
{
	binary_tree_t *node = NULL;


	if (tree)
	{
		node = tree->left;
		if (node)
		{
			tree->left = node->right;
			if (tree->left)
				tree->left->parent = tree;
			node->right = tree;
			node->parent = tree->parent;
			tree->parent = node;
		}
	}
	return (node);
}
