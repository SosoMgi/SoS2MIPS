#ifndef LL_LIST_H
#define LL_LIST_H
#include <sys/types.h>
#include <stdio.h>
#include <quads.h>

struct node_t {
    size_t addr;
    struct node_t * next;
};


struct node_t * node_create(size_t addr);
void list_free(struct node_t * l);
struct node_t * list_concat(struct node_t * l1, struct node_t * l2);
void print_node(struct node_t * l);


struct lkl_op_t {
    struct sym_t val;
    struct lkl_op_t * next;
};
struct lkl_op_t * lnode_create(struct sym_t qo);
void lnode_free(struct lkl_op_t * l);
void lnode_append(struct lkl_op_t * l, struct sym_t qo);
void print_lnode(struct lkl_op_t * l);

#endif