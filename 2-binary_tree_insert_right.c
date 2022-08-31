#include "binary_trees.h"

/**
 * binary_tree_insert_right - inserts a new node on the right side of tree
 * @parent: the root of the tree
 * @value: the value to insert in new node
 * Return: the new node or NULL on failure
 */

binary_tree_t *binary_tree_insert_right(binary_tree_t *parent, int value)
{
        binary_tree_t *new;

        if (parent == NULL)
        {
                return (NULL);
        }

        new = binary_tree_node(parent, value);
        if (new == NULL)
        {
                return (NULL);
        }
        new->right = parent->right;
        if (new->right != NULL)
        {
                new->right->parent = new;
        }
        parent->right = new;
        return (new);
}
