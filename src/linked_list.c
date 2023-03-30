#include "linked_list.h"
#include <sys/types.h>
#include <stdlib.h>

struct node_t * list_concat(struct node_t * l1, struct node_t * l2) {
    if(l1 == NULL) return l2;
    struct node_t * next = l1;
    while(next->next != NULL) {
        next = next->next;
    }
    next->next = l2;
    return l1;
}


struct node_t * node_create(size_t addr) {
    struct node_t * node = malloc(sizeof(struct node_t));
    node->next = NULL;
    node->addr = addr;
    return node;
}

void print_node(struct node_t * l) {
    if( l == NULL ) {
        printf("Liste vide");
        return;
    }
    printf("%lu ", l->addr);
    struct node_t * next = l->next;
    while(next != NULL) {
        printf("%lu ", next->addr);
        next = next->next;
    }
}

void list_free(struct node_t * l) {
    if(l == NULL) {
        return;
    } 
    list_free(l->next);
    free(l);
}

struct lkl_op_t * lnode_create(struct sym_t qo) {
    struct lkl_op_t * node = malloc(sizeof(struct lkl_op_t));
    node->next = NULL;
    node->val = qo;
    return node;
}
void lnode_free(struct lkl_op_t * l) {
    if(l == NULL) return;
    lnode_free(l->next);
    free(l);
}
void lnode_append(struct lkl_op_t * l, struct sym_t qo) {
    if(l == NULL) {
        fprintf(stderr, "erreur append sur lnode vide\n");
        exit(1);
    }
    struct lkl_op_t * node = malloc(sizeof(struct lkl_op_t));
    node->next = NULL;
    node->val = qo;
    struct lkl_op_t * next = l;
    while(next->next != NULL) {
        next = next->next;
    }
    next->next = node;
}
void print_lnode(struct lkl_op_t * l) {
    if(l == NULL) {
        printf("(empy list)");
        return;
    }
    struct lkl_op_t * next = l;
    while(next != NULL) {
        display_quadop( NULL, next->val);
        printf(" | ");
        next = next->next;
    }
}