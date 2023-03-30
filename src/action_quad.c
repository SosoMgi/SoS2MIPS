#include "action_quad.h"
#include "linked_list.h"
#include "table_symb.h"
#include "debug.h"




extern int nextquad;
extern struct quad global_code[1<<16];
extern int nb_temp; 
extern struct ctx_stack * ctx_stack; 

extern struct ctx_stack * liste_symbole; 


void gencode(struct quad q) {
    global_code[nextquad++] = q;
}

void complete(struct node_t * l, size_t addr) {
    struct node_t * next = l;
    DEBUG printf("completing quads n° ");
    while(next != NULL) {
        DEBUG printf("%lu ", next->addr);
        if(global_code[next->addr].kind != OP_GOTO_UNKNOWN
        && global_code[next->addr].kind != OP_IFEQ
        && global_code[next->addr].kind != OP_IFDIFF
        && global_code[next->addr].kind != OP_IFGT
        && global_code[next->addr].kind != OP_IFGE
        && global_code[next->addr].kind != OP_IFLT
        && global_code[next->addr].kind != OP_IFLE
        && global_code[next->addr].kind != OP_IFEOP_STR
        && global_code[next->addr].kind != OP_IFDIFF_STR
        && global_code[next->addr].kind != OP_IFNULL_STR
        && global_code[next->addr].kind != OP_IFNOTNULL_STR) {
            fprintf(stderr, "ERREUR : complete un quad qui n'est pas unknown ?-?\n");
        }
        else {
            global_code[next->addr].res.addr = addr;
            global_code[next->addr].res.kind = TYPE_ADDR;
            if( global_code[next->addr].kind == OP_GOTO_UNKNOWN ) {
                global_code[next->addr].kind = OP_GOTO;
            }
        }
        next = next->next;
    }
    DEBUG printf("with %lu\n", addr);
}

void complete_single(int quad_num, size_t addr) {
    if(quad_num >= nextquad) {
        fprintf(stderr, 
            "complete_single d'un quad qui n'existe pas : %i\n", quad_num);
        return;
    }
    if(global_code[quad_num].kind != OP_GOTO_UNKNOWN
    && global_code[quad_num].kind != OP_IFEQ
    && global_code[quad_num].kind != OP_IFDIFF
    && global_code[quad_num].kind != OP_IFGT
    && global_code[quad_num].kind != OP_IFGE
    && global_code[quad_num].kind != OP_IFLT
    && global_code[quad_num].kind != OP_IFLE
    && global_code[quad_num].kind != OP_IFEOP_STR
    && global_code[quad_num].kind != OP_IFDIFF_STR
    && global_code[quad_num].kind != OP_IFNULL_STR
    && global_code[quad_num].kind != OP_IFNOTNULL_STR) {
        fprintf(stderr, "ERREUR : complete un quad qui n'est pas unknown ?-?\n");
    }
    else {
        DEBUG printf("completing quad n° %i with %lu\n", quad_num, addr);
        global_code[quad_num].res.addr = addr;
        global_code[quad_num].res.kind = TYPE_ADDR;
        if( global_code[quad_num].kind == OP_GOTO_UNKNOWN ) {
            global_code[quad_num].kind = OP_GOTO;
        }
    }
}

struct entry * newtemp(char * name_) {
    char name[MAX_IDENT_SIZE]; 
    if(name_ == NULL) {
        snprintf(name, MAX_IDENT_SIZE, ".tmp_%d", nb_temp++);
    } else {
        snprintf(name, MAX_IDENT_SIZE, ".tmp_%d_%s", nb_temp++, name_);
    }
    DEBUG printf("nouvel ident (par newtemp) : '%s'\n",name);
    
    return create_entry(name, E_STR);
}

int is_numeric(char * s) {
    for(int i=0; s[i] != '\0'; i++) {
        if( s[i] != '\"' && s[i] != '\'' && (s[i] < '0' || s[i] > '9') ) {
            return 0;
        }
    }
    return 1;
}
