CC=gcc
CFLAGS=-Wall -Werror -Wextra -pedantic -std=gnu89 -g
RM=rm -rf
SRC=binary_tree_print.c
BETTY=betty

TARGET0=0-node
SRC0=	0-main.c \
	0-binary_tree_node.c

TARGET1=1-node
SRC1=	1-main.c \
	1-binary_tree_insert_left.c \
	0-binary_tree_node.c

TARGET2=2-node
SRC2=	2-main.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET3=3-node
SRC3=	3-main.c \
	3-binary_tree_delete.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET4=4-node
SRC4=	4-main.c \
	4-binary_tree_is_leaf.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET5=5-node
SRC5=	5-main.c \
	5-binary_tree_is_root.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET6=6-pre
SRC6=	6-main.c \
	6-binary_tree_preorder.c \
	0-binary_tree_node.c

TARGET7=7-in
SRC7=	7-main.c \
	7-binary_tree_inorder.c \
	0-binary_tree_node.c

TARGET8=8-post
SRC8=	8-main.c \
	8-binary_tree_postorder.c \
	0-binary_tree_node.c

TARGET9=9-height
SRC9=	9-main.c \
	9-binary_tree_height.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET10=10-depth
SRC10=	10-main.c \
	10-binary_tree_depth.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET11=11-size
SRC11=	11-main.c \
	11-binary_tree_size.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET12=12-leaves
SRC12=	12-main.c \
	12-binary_tree_leaves.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET13=13-nodes
SRC13=	13-main.c \
	13-binary_tree_nodes.c \
	2-binary_tree_insert_right.c \
	0-binary_tree_node.c

TARGET14=14-balance
SRC14=	14-binary_tree_balance.c \
	14-main.c \
	0-binary_tree_node.c \
	2-binary_tree_insert_right.c \
	1-binary_tree_insert_left.c

TARGET15=15-full
SRC15=	15-binary_tree_is_full.c \
	15-main.c \
	0-binary_tree_node.c \
	2-binary_tree_insert_right.c

TARGET16=16-perfect
SRC16= 	16-binary_tree_is_perfect.c \
	16-main.c \
	0-binary_tree_node.c \
	2-binary_tree_insert_right.c

TARGET17=17-sibling
SRC17= 	17-main.c \
	17-binary_tree_sibling.c \
	0-binary_tree_node.c

TARGET18=18-uncle
SRC18= 	18-main.c \
	18-binary_tree_uncle.c \
	0-binary_tree_node.c

TARGET19=100-ancestor
SRC19=	100-main.c \
	100-binary_trees_ancestor.c \
	0-binary_tree_node.c

TARGET20=101-lvl
SRC20=	101-main.c \
	101-binary_tree_levelorder.c \
	0-binary_tree_node.c \
	3-binary_tree_delete.c

TARGET21=102-complete
SRC21=	102-main.c \
	102-binary_tree_is_complete.c \
	0-binary_tree_node.c \
	3-binary_tree_delete.c

TARGET22=103-rotl
SRC22=	103-binary_tree_rotate_left.c \
	103-main.c \
	0-binary_tree_node.c

TARGET23=104-rotr
SRC23=	104-binary_tree_rotate_right.c \
	104-main.c \
	0-binary_tree_node.c

TARGET24=110-is_bst
SRC24=	110-main.c \
	110-binary_tree_is_bst.c \
	0-binary_tree_node.c

TARGET25=111-bst_insert
SRC25=	111-bst_insert.c \
	111-main.c \
	0-binary_tree_node.c

TARGET26=112-bst_array
SRC26=	112-array_to_bst.c \
	112-main.c \
	111-bst_insert.c \
	0-binary_tree_node.c

TARGET27=113-bst_search
SRC27=	113-bst_search.c \
	113-main.c \
	112-array_to_bst.c \
	111-bst_insert.c \
	0-binary_tree_node.c

STDSRC= 0-binary_tree_node.c \
	1-binary_tree_insert_left.c \
	2-binary_tree_insert_right.c \
	3-binary_tree_delete.c \
	4-binary_tree_is_leaf.c \
	5-binary_tree_is_root.c \
	6-binary_tree_preorder.c \
	7-binary_tree_inorder.c \
	8-binary_tree_postorder.c \
	9-binary_tree_height.c \
	10-binary_tree_depth.c\
	11-binary_tree_size.c \
	12-binary_tree_leaves.c \
	13-binary_tree_nodes.c \
	14-binary_tree_balance.c \
	15-binary_tree_is_full.c \
	16-binary_tree_is_perfect.c \
	17-binary_tree_sibling.c \
	18-binary_tree_uncle.c \
	100-binary_trees_ancestor.c \
	101-binary_tree_levelorder.c \
	102-binary_tree_is_complete.c \
	103-binary_tree_rotate_left.c \
	104-binary_tree_rotate_right.c \
	110-binary_tree_is_bst.c \
	111-bst_insert.c \
	112-array_to_bst.c \
	113-bst_search.c

all:	0 1 2 3 4 5 6 7 8 9 10 11 12 13

clean:
	$(RM) *~ \#*\# \.\#* \
		$(TARGET0) $(TARGET1) $(TARGET2) $(TARGET3) $(TARGET4) \
		$(TARGET5) $(TARGET6) $(TARGET7) $(TARGET8) $(TARGET9) \
		$(TARGET10) $(TARGET11) $(TARGET12) $(TARGET13) $(TARGET14) \
		$(TARGET15) $(TARGET16) $(TARGET17) $(TARGET18) $(TARGET19) \
		$(TARGET20) $(TARGET21) $(TARGET22) $(TARGET23) $(TARGET24) \
		$(TARGET25) $(TARGET26) $(TARGET27) $(TARGET28) $(TARGET29)

re:		clean all

betty:
	$(BETTY) $(STDSRC)

0:
	$(CC) $(CFLAGS) $(SRC) $(SRC0) -o $(TARGET0)

1:
	$(CC) $(CFLAGS) $(SRC) $(SRC1) -o $(TARGET1)

2:
	$(CC) $(CFLAGS) $(SRC) $(SRC2) -o $(TARGET2)

3:
	$(CC) $(CFLAGS) $(SRC) $(SRC3) -o $(TARGET3)

4:
	$(CC) $(CFLAGS) $(SRC) $(SRC4) -o $(TARGET4)

5:
	$(CC) $(CFLAGS) $(SRC) $(SRC5) -o $(TARGET5)

6:
	$(CC) $(CFLAGS) $(SRC) $(SRC6) -o $(TARGET6)

7:
	$(CC) $(CFLAGS) $(SRC) $(SRC7) -o $(TARGET7)

8:
	$(CC) $(CFLAGS) $(SRC) $(SRC8) -o $(TARGET8)

9:
	$(CC) $(CFLAGS) $(SRC) $(SRC9) -o $(TARGET9)

10:
	$(CC) $(CFLAGS) $(SRC) $(SRC10) -o $(TARGET10)

11:
	$(CC) $(CFLAGS) $(SRC) $(SRC11) -o $(TARGET11)

12:
	$(CC) $(CFLAGS) $(SRC) $(SRC12) -o $(TARGET12)

13:
	$(CC) $(CFLAGS) $(SRC) $(SRC13) -o $(TARGET13)

14:
	$(CC) $(CFLAGS) $(SRC) $(SRC14) -o $(TARGET14)

15:
	$(CC) $(CFLAGS) $(SRC) $(SRC15) -o $(TARGET15)

16:
	$(CC) $(CFLAGS) $(SRC) $(SRC16) -o $(TARGET16)

17:
	$(CC) $(CFLAGS) $(SRC) $(SRC17) -o $(TARGET17)

18:
	$(CC) $(CFLAGS) $(SRC) $(SRC18) -o $(TARGET18)

19:
	$(CC) $(CFLAGS) $(SRC) $(SRC19) -o $(TARGET19)

20:
	$(CC) $(CFLAGS) $(SRC) $(SRC20) -o $(TARGET20)

21:
	$(CC) $(CFLAGS) $(SRC) $(SRC21) -o $(TARGET21)

22:
	$(CC) $(CFLAGS) $(SRC) $(SRC22) -o $(TARGET22)

23:
	$(CC) $(CFLAGS) $(SRC) $(SRC23) -o $(TARGET23)

24:
	$(CC) $(CFLAGS) $(SRC) $(SRC24) -o $(TARGET24)

25:
	$(CC) $(CFLAGS) $(SRC) $(SRC25) -o $(TARGET25)

26:
	$(CC) $(CFLAGS) $(SRC) $(SRC26) -o $(TARGET26)
