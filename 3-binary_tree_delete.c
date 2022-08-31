#include "binary_trees.h"

/**
 * binary_tree_delete - deletes every node in a binary tree
 * @tree: tree to be deleted
 */

void binary_tree_delete(binary_tree_t *tree)
{
	if (tree == NULL)
		return;

	binary_tree_delete(tree->left);
	binary_tree_delete(tree->right);
	free(tree);
}
