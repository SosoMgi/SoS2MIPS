#include "table_symb.h"
#include "debug.h"


struct ctx
{
    struct entry *entries[MAX_SYMB_IN_CTX];
    int nb_sym; 
};

struct stack_interne
{
    struct ctx *current;
    struct stack_interne *next;
};

struct ctx_stack
{
    struct stack_interne *head;
};



const char var_type_string[][8] = {
    "unknown", "int", "float", "string", "bool", "void", "array",
};

const char node_type_string[][11] = {
    "func_node",
    "val_node",
    "array_node",
};

const char mem_addr_type_string[][7] = {
    "local",
    "global",
};



struct symnode *main_func_symnode;

static struct symnode *new_sym(char *name, int num_nodes) {
  struct symnode *node = malloc(sizeof(struct symnode));
  node->name = strdup(name);
  node->next = NULL;

  int digit_counter_num = num_nodes / 10;
  int num_digits = 1;
  while (digit_counter_num > 0) {
    num_digits++;
    digit_counter_num /= 10;
  }
  int mangled_name_len = strlen(name) + num_digits + 1;
  node->mangled_name = calloc(mangled_name_len + 1, sizeof(char));
  

  return node;
}

static void symnode_free(struct symnode *node) {
  free(node->name);
  free(node->mangled_name);
  free(node);
}

int name_is_equal(struct symnode *node, char *name) {
  return !strcmp(node->name, name);
}

/* symhashtable */

static struct symhashtable *symhashtable_new(int entries) {
  struct symhashtable *hashtable = malloc(sizeof(struct symhashtable));
  hashtable->size = entries;
  hashtable->table = calloc(entries, sizeof(struct symnode *));

  int i;
  for (i = 0; i < entries; i++) {
    hashtable->table[i] = NULL;
  }

  hashtable->outer_scope = NULL;
  hashtable->level = -1;

  return hashtable;
}

static void symhashtable_free(struct symhashtable *hashtable) {
  int i;
  for (i = 0; i < hashtable->size; i++) {
    struct symnode *node, *next;

    for (node = hashtable->table[i]; node != NULL; node = next) {
      next = node->next;
      symnode_free(node);
    }
  }

  free(hashtable->table);
  free(hashtable);
}

/**
 * @brief Peter Weinberger's hash function, from Aho, Sethi, & Ullman p. 436.
 *
 */
static int hashPJW(char *s, int size) {
  unsigned h = 0, g;
  char *p;

  for (p = s; *p != '\0'; p++) {
    h = (h << 4) + *p;
    if ((g = (h & 0xf0000000)) != 0) h ^= (g >> 24) ^ g;
  }

  return h % size;
}


static struct symnode *symhashtable_lookup(struct symhashtable *hashtable,
                                           char *name, int slot) {
  struct symnode *node;
  if (slot == -1) {
    slot = hashPJW(name, hashtable->size);
  }
  // clang-format off
  for (node = hashtable->table[slot];
       node != NULL && !name_is_equal(node, name);
       node = node->next) ;
  // clang-format on
  return node;
}

static struct symnode *symhashtable_insert(struct symhashtable *hashtable,
                                           char *name, int *num_nodes_addr) {
  int slot = hashPJW(name, hashtable->size);
  struct symnode *node = symhashtable_lookup(hashtable, name, slot);

  if (node == NULL) {
    node = new_sym(name, *num_nodes_addr);
    (*num_nodes_addr)++;
    node->next = hashtable->table[slot];
    hashtable->table[slot] = node;
  }
  return node;
}

/* symtable */

static const int HASHSIZE = 211;

struct symtable *symtable_new() {
  struct symtable *table = malloc(sizeof(struct symtable));
  table->num_nodes = 0;
  table->inner_scope = symhashtable_new(HASHSIZE);
  table->inner_scope->outer_scope = NULL;
  table->inner_scope->level = 0;
  return table;
}

void symtable_free(struct symtable *symtab) {
  struct symhashtable *table, *outer;

  for (table = symtab->inner_scope; table != NULL; table = outer) {
    outer = table->outer_scope;
    symhashtable_free(table);
  }

  free(symtab);
}

struct symnode *symtable_insert(struct symtable *symtab, char *name) {
  if (symtab->inner_scope == NULL) {
    printf("inserting into an empty symbol table");
  }

  struct symnode *node =
      symhashtable_lookup(symtab->inner_scope, name, 1);
  if (node == NULL) {
    node = symhashtable_insert(symtab->inner_scope, name, &symtab->num_nodes);
  }
  return node;
}

struct symnode *symtable_lookup(struct symtable *symtab, char *name,
                                int *level) {
  struct symnode *node;
  struct symhashtable *hashtab;

  for (node = NULL, hashtab = symtab->inner_scope;
       node == NULL && hashtab != NULL; hashtab = hashtab->outer_scope) {
    node = symhashtable_lookup(hashtab, name, 1);
    if (level != NULL) *level = hashtab->level;
  }
  return node;
}

void symtable_enter_scope(struct symtable *symtab) {
  struct symhashtable *table = symhashtable_new(HASHSIZE);
  table->outer_scope = symtab->inner_scope;
  table->level = symtab->inner_scope->level + 1;
  symtab->inner_scope = table;
}

void symtable_leave_scope(struct symtable *symtab) {
  struct symhashtable *table = symtab->inner_scope;
  symtab->inner_scope = table->outer_scope;
  symhashtable_free(table);
}

struct entry *create_entry(char *name, enum entry_type type)
{
    struct entry *new_entry = malloc(sizeof(struct entry));
    new_entry->type = type;
    strncpy(new_entry->name, name, MAX_IDENT_SIZE);
    return new_entry;
}

void pushctx(struct ctx_stack *ctx_stack)
{
    struct ctx *new_ctx = malloc(sizeof(struct ctx));
    new_ctx->nb_sym = 0;

    struct stack_interne *next = malloc(sizeof(struct stack_interne));

    next->current = new_ctx;
    next->next = ctx_stack->head;
    ctx_stack->head = next;
}

void popctx(struct ctx_stack *ctx_stack, int free_entries)
{
    if (ctx_stack->head == NULL)
    {
        printf("/!\\popctx mais pas de ctx existant (ne devrait pas arriver si on pop pas trop)\n");
        return;
    }
    struct ctx *current_ctx = ctx_stack->head->current;

    if (free_entries == 1)
    {
        for (int i = 0; i < current_ctx->nb_sym; i++)
        {
            free(current_ctx->entries[i]);
        }
    }
    free(current_ctx);
    struct stack_interne *to_free = ctx_stack->head;
    ctx_stack->head = ctx_stack->head->next;
    free(to_free);
}

void newname(struct ctx_stack *ctx_stack, struct entry *new_entry)
{
    if (ctx_stack->head == NULL)
    {
        printf("pbme ctx_stack\n");
        return;
    }
    struct ctx *ctx = ctx_stack->head->current;
    ctx->entries[ctx->nb_sym] = new_entry;
    ctx->nb_sym++;
}

void newname_global(struct ctx_stack *ctx_stack, struct entry *new_entry)
{
    if (ctx_stack->head == NULL)
    {
        printf("pbme ctx_stack\n");
        return;
    }
    struct stack_interne *cs = ctx_stack->head;
    while (cs->next != NULL)
    {
        cs = cs->next;
    }
    struct ctx *ctx = cs->current;
    ctx->entries[ctx->nb_sym] = new_entry;
    ctx->nb_sym++;
}

struct ctx_stack *create_ctx_stack(void)
{
    struct ctx_stack *ctx_stack = malloc(sizeof(struct ctx_stack));
    ctx_stack->head = NULL; 
    pushctx(ctx_stack);     
    return ctx_stack;
}

void free_ctx_stack(struct ctx_stack *ctx_stack, int free_entries)
{
    if (ctx_stack == NULL)
    {
        return;
    }
    while (ctx_stack->head != NULL)
    {
        popctx(ctx_stack, free_entries);
    }
    free(ctx_stack);
}

void print_ctx_stack(struct ctx_stack *ctx_stack)
{
    printf("=============== SYMBOL TABLE ===============\n");
    CHECK_NULL(ctx_stack);
    CHECK_NULL(ctx_stack->head);

    struct stack_interne *st_i = ctx_stack->head;

    while (st_i != NULL)
    {
        struct ctx *ctx = st_i->current;
        if (ctx == NULL)
        {
            debug_error("ctx == NULL");
            return;
        }
        printf("---début ctx---\n");
        if (ctx->nb_sym == 0)
        {
            printf("(empty ctx)\n");
        }
        for (int i = 0; i < ctx->nb_sym; i++)
        {
            if (ctx->entries[i] == NULL)
            {
                printf("erreur : print_entry(NULL)\n");
                return;
            }
            switch (ctx->entries[i]->type)
            {
            case E_BOOL:
                printf("bool  ");
                break;
            case E_INT:
                printf("int   ");
                break;
            case E_FUNC:
                printf("func  ");
                break;
            case E_STR:
                printf("str   ");
                break;
            case E_TAB:
                printf("tab   ");
                break;
            case E_LOC:
                printf("str   ");
                break;
            default:
                printf("/!\\ unknown type/!\\");
                break;
            }
            printf("'%s'", ctx->entries[i]->name);
            if (ctx->entries[i]->type == E_TAB)
            {
                printf(" [%i]", ctx->entries[i]->taille);
            }
            else if (ctx->entries[i]->type == E_LOC)
            {
                printf("  (local : %i)", ctx->entries[i]->offset_sp);
            }
            else if (ctx->entries[i]->type == E_FUNC)
            {
                printf("  (%i params, %i locals)", ctx->entries[i]->nb_param, ctx->entries[i]->nb_decl_loc);
            }
            printf("\n");
        };
        printf("---fin ctx---\n");
        st_i = st_i->next;
    }
    printf("---------------------------------\n");
}

struct entry *lookup(struct ctx_stack *ctx_stack, char *name)
{
    if (ctx_stack->head == NULL)
    {
        return NULL;
    }
    struct stack_interne *next = ctx_stack->head;

    while (next != NULL && next->current != NULL)
    {
        for (int i = 0; i < next->current->nb_sym; i++)
        {
            if (strncmp(name, next->current->entries[i]->name, MAX_IDENT_SIZE) == 0)
            {
                return next->current->entries[i];
            }
        }
        next = next->next;
    }
    return NULL;
}
