#ifndef QUADS_H
#define QUADS_H

#include <sys/types.h>
#include <stdio.h>
#include <string.h>

#define MAX_IDENT_SIZE 32 
#define MAX_STRING_SIZE 1024 


enum sym_type_t { 
    TYPE_CST,        
    TYPE_CST_STRING,
    TYPE_IDENT,      
    TYPE_TAB_ELEM,   
    TYPE_ADDR,       
    TYPE_UNKNOWN     
};    

struct sym_t {
    enum sym_type_t kind;
    union {
        int cst;
        char ident[MAX_IDENT_SIZE];
        char cst_str[MAX_STRING_SIZE];
        size_t addr;
        struct {
            int idx;
            char ident[MAX_IDENT_SIZE];
        } tab;
    }; // union anonyme
};

enum op_t { 
    // comparaisons arithmétiques
    OP_IFEQ, 
    OP_IFDIFF,
    OP_IFGT,   
    OP_IFGE, 
    OP_IFLT, 
    OP_IFLE, 
    // ----
    // comparaisons de string
    OP_IFNULL_STR, 
    OP_IFNOTNULL_STR, 
    OP_IFEOP_STR, 
    OP_IFDIFF_STR, 
    // ----
    // opérations arithmétiques
    OP_ADD, 
    OP_SUB, 
    OP_MUL, 
    OP_DIV, 
    OP_MOD, 
    OP_INV_SIGNE, 
    // ----
    OP_GOTO, 
    OP_GOTO_UNKNOWN, // (normalement à la fin y en a pas)
    OP_GOTO_LABEL, 
    OP_BIDON, 
    OP_BIDON2, 
    OP_EXIT, 
    OP_ECHO, 
    OP_SET, 
    OP_SET_TAB, 
    OP_GET_TAB, 
    OP_DECLARE, 
    OP_DECLARE_TAB, 
    OP_CONCAT,  
    OP_READ, 
    OP_READ_TAB, 
    OP_ARG_GLOB, 
    OP_CONCAT_ARG_GLOB 
};

struct quad {
    enum op_t kind;
    struct sym_t arg1, arg2, res;
    union { 
        char is_last; 
        int taille; 
    } data;
};


struct sym_t quadop_addr_unknown();
struct quad quad_echo(struct sym_t val);
struct quad quad_cond (enum op_t type, ...);
struct quad quad_goto_unknown();
struct sym_t quad_sym (enum sym_type_t type, ...);
void print_quad(struct quad q, FILE * file_);
void display_quadop(FILE* file, struct sym_t op);
void print_qop(FILE* file, const char* format, ...);



#endif