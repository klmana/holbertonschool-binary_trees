#include "binary_trees.h"

/**
 * binary_tree_height - measures the height of a binary tree
 * @tree: root of the binary tree
 * Return: height of the tree
 */

size_t binary_tree_height(const binary_tree_t *tree)
{
	size_t left_height, right_height;

	if (tree == NULL)
		return (0);

	left_height = binary_tree_height(tree->left);
	right_height = binary_tree_height(tree->right);

	if (left_height > right_height)
		return (left_height + 1);
	else
		return (right_height + 1);
}

/**
 * binary_tree_balance - measures the balance of a binary tree
 * @tree: root of the binary tree
 * Return: + means that left has more leaves, - if right has more
 * returns 0 if they are the same or tree is NULL
 */

int binary_tree_balance(const binary_tree_t *tree)
{
	int right_height = 0, left_height = 0;

	if (tree == NULL)
		return (0);

	right_height = binary_tree_height(tree->right);
	left_height = binary_tree_height(tree->left);

	return (left_height - right_height);
}
