#ifndef TABLE_SYMB_H
#define TABLE_SYMB_H

#include <stdlib.h>
#include <stdio.h>
#include "quads.h" 

enum vartype {
  no_type,
  inttype,
  doubletype,
  arrayinttype,
  voidtype,
};


enum nodetype {
  func_node,
  val_node,
  array_node,
};

/**
 * the type of the memory address
 */
enum memaddrtype {
  off_fp,
  global,
};

struct symnode {
  char *name; // name in this scope

  enum vartype var_type; // the type of a variable or return type of a function
                         // (irrelevant for the string table)
  int var_size;          // size of a variable or return type of a function
                         // (irrelevant for the string table)

  int var_addr;      // assembly index for functions
                     // irrelevant for string constants
 

  enum nodetype node_type; // the thing that the identifier identifies
                           // (irrelevant for the string table)
  enum memaddrtype mem_addr_type;
  int array_size; // only relevant for nodes of type array_node

  char *mangled_name; // irrelevant for the string table

  int num_vars;   // number of variables for a function
  int num_temps;  // number of temporary variables for a function
  int num_params; // number of formal parameters

  struct symnode *next;                 // next node in list
  struct symnode **param_symnode_array; // array of pointers to param symnodes
};


#define MAX_SYMB_IN_CTX 1024 // nombre max de symbole dans un contexte
                             // (pour faire que des tableaux statiques)

enum entry_type
{
    E_INT,                      
    E_BOOL, 
    E_FUNC, // foncti
    E_STR,  // variabe globale
    E_TAB,  // tableau
    E_LOC   // variables locales
};

struct entry
{
    enum entry_type type;
    char name[MAX_IDENT_SIZE];
    union
    { // données en plus, si besoin
        struct
        { // E_TAB
            int taille;
        };
        struct
        {                  // E_LOC
            int offset_sp; // décalage par rapport à $sp (psk sur le stack)
        };
        struct
        {                    // E_FUNC
            int nb_param;    // nombre de paramètres
            int nb_decl_loc; // nombre de variables locales
        };
    };
};

struct ctx_stack;

struct entry *create_entry(char *name, enum entry_type type);

void print_entry(struct entry *e);


struct entry *lookup(struct ctx_stack *ctx_stack, char *name);

void pushctx(struct ctx_stack *ctx_stack);



void popctx(struct ctx_stack *ctx_stack, int free_entries);

void newname(struct ctx_stack *ctx_stack, struct entry *new_entry);


void newname_global(struct ctx_stack *ctx_stack, struct entry *new_entry);

struct ctx_stack *create_ctx_stack(void);


void free_ctx_stack(struct ctx_stack *ctx_stack, int free_entries);

void print_ctx_stack(struct ctx_stack *ctx_stack);




/**
 * @brief Does the identifier in this node equal name?
 *
 */
int name_is_equal(struct symnode *node, char *name);

struct symhashtable {
  int size;                         // size of hash table
  struct symnode **table;           // hash table
  struct symhashtable *outer_scope; // symhashtable in next outer scope
  int level;                        // level of scope, 0 is outermost
};

struct symtable {
  struct symhashtable *inner_scope; // pointer to hash table of innermost scope
  int num_nodes;                    // number of nodes in the innermost scope
};

/**
 * @brief new symtable
 */
struct symtable *symtable_new();

/**
 * @brief destroy and free a symtable
 */
void symtable_free(struct symtable *symtab);

/**
 * @brief Lookup an entry in a symbol table. If found return a pointer to it
   and fill in level. Otherwise, return NULL and level is
   undefined.
 * @param symtab the symbol table
 * @param name the name of the entry
 * @param level the level of the entry
 * @return struct symnode*
 */
struct symnode *symtable_lookup(struct symtable *symtab, char *name,
                                int *level);

/**
 * @brief Enter a new scope
 * @param symtab the symbol table
 */
void symtable_enter_scope(struct symtable *symtab);

/**
 * @brief Leave the innermost scope
 * @param symtab the symbol table
 */
void symtable_leave_scope(struct symtable *symtab);

/**
 * @brief Display the symbol table to a human readable format
 * @param symtab the symbol table
 */
void symtable_display(struct symtable *symtab);


#endif