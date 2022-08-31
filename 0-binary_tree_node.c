#include "binary_trees.h"

/**
 * binary_tree_node - creates a node to start a binary tree
 * @parent: the root of the tree
 * @value: the value to be stored in each node
 * Return: the new node in binary tree, or NULL on failure
 */

binary_tree_t *binary_tree_node(binary_tree_t *parent, int value)
{
	binary_tree_t *newNode;

	newNode = malloc(sizeof(*newNode));
	if (newNode == NULL)
		return (NULL);

	newNode->parent = parent;
	newNode->n = value;
	newNode->left = NULL;
	newNode->right = NULL;

	return (newNode);
}
