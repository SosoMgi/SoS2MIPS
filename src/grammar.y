%{
#include <stdio.h>
#include <stdlib.h>
#include <stdnoreturn.h> 
#include <stdarg.h> 
#include "table_symb.h"
#include "quads.h"
#include "grammar.tab.h"
#include "linked_list.h"
#include "action_quad.h"


#ifdef PRINT_DEBUG
#define CHK if(1)
#else
#define CHK if(0)
#endif



#ifndef SYMB_LAST_FUNC_RETURN
#define SYMB_LAST_FUNC_RETURN ".last_func_return"
#endif

extern int yylex();
extern int yylineno; 
extern void yyerror(const char * msg);

void fatal(const char * msg, ...); 



int nextquad = 0; 
struct quad global_code[1<<16]; 
int nb_temp = 0; 
struct ctx_stack * ctx_stack; 
struct ctx_stack * liste_symbole; 




noreturn void fatal(const char *msg, ...)
{
    fprintf(stderr, "Erreur à la ligne %d : ", yylineno);
    va_list ap;
    va_start(ap, msg);
    vfprintf(stderr, msg, ap);
    fprintf(stderr, "\n");
    va_end(ap);
    exit(1);
}

%}

%union {
    char * strval;
    int intval;
    enum {
      not_null,
      null,
      eq,
      not_eq,
      greater_than,
      greater_equal,
      less_than,
      less_equal
    } operateur1et2;
    enum {
        op_add,
        op_sub,
        op_mul,
        op_div,
        op_mod,
        op_none
    } op_arithm;

    char ident [MAX_IDENT_SIZE];
    char str [MAX_STRING_SIZE];
    struct {
        struct sym_t res;
    } expr;

    struct  {
        struct node_t * true;
        struct node_t * false;
    } boolexpr;

    struct {
        enum {
            else_empty, else_elif, else_else
        } type;
        int debut_instr;
        int debut_cond;
        struct node_t * next;
    } else_part_type; // utilisé pour gérer les goto dans les else

    struct {
        struct lkl_op_t * lnode;
        int nb_elem;
    } liste_expr;

    struct {
        struct node_t * next;
    } instr_type;

    // aurait été utilisé pour case, mais on a pas réussi
    struct {
        // 2 listes en correspondances
        // si ident == lnode[i] goto list[i] 
        struct lkl_op_t * lnode;
        struct node_t * list;
    } lst_cas_type;

    int nb_decl_loc; // nombre de variables locales dans une fonction
}

%token TOK_IF TOK_THEN TOK_FOR TOK_DO TOK_DONE TOK_IN TOK_WHILE TOK_UNTIL TOK_CASE
%token TOK_ESAC TOK_ECHO TOK_READ TOK_RETURN TOK_EXIT TOK_LOCAL TOK_ELIF TOK_ELSE
%token TOK_FI TOK_DECLARE TOK_TEST TOK_EXPR
%token<str> STRING_DOUBLE_QUOTE STRING_SINGLE_QUOTE MOT IDENTIFIER ACCES_LISTE_TABLEAU
%token EQUAL NOT_EQUAL
%token OP_NOT_NULL OP_NULL OP_EQ OP_NEQ OP_GT OP_GE OP_LT OP_LE
%token LOGIC_NOT LOGIC_AND LOGIC_OR
%token<op_arithm> PLUS_OU_MOINS FOIS_DIV_MOD
%token O_PAR C_PAR O_BRACKET C_BRACKET O_CURLY_BRACKET C_CURLY_BRACKET SEMICOLON PIPE
%token DOLLAR
%token<str> ACCES_VARIABLE
%token<intval> ACCES_ARG
%token ACCES_LISTE_ARG
%token<intval> LAST_FUNC_STATUS

%type<expr> concatenation operande
%type<liste_expr> liste_operandes
%type<expr> somme_entier produit_entier operande_entier
%type<boolexpr> test_bloc test_expr test_expr2 test_expr3 test_instruction
%type<instr_type> liste_instructions instruction
%type<else_part_type> else_part
%type<intval> M G
%type<operateur1et2> operateur1 operateur2
%type<op_arithm> opt_plus_ou_moins
%type<nb_decl_loc> decl_loc
%type<lst_cas_type> liste_cas

%left '+' '-'
%left '*' '/' '%'

%start programme

%locations

%%

programme : {
    ctx_stack = create_ctx_stack();
    liste_symbole = create_ctx_stack();
    } liste_instructions {
    free_ctx_stack(ctx_stack, 0);
}
| %empty {}
;

liste_instructions
: liste_instructions SEMICOLON M instruction {
    complete($1.next, $3);
    list_free($1.next);
    $$.next = $4.next;
}
| instruction {
    $$.next = $1.next;
}
;

instruction
: IDENTIFIER EQUAL concatenation {
    CHK printf("declaration ident : '%s'\n", $1);

    struct sym_t ident = quad_sym(TYPE_IDENT,$1);

    if( lookup(ctx_stack, $1) == NULL ) {
        struct entry * id = create_entry($1, E_STR);
        newname(ctx_stack, id);
        if( lookup(liste_symbole, $1) == NULL ) {
            newname(liste_symbole, id);
            gencode(quad_cond(OP_DECLARE,ident));
        }
    }

    struct quad q = quad_cond(OP_SET,ident, $3.res);
    gencode(q);

    $$.next = NULL;
}
| TOK_DECLARE IDENTIFIER O_BRACKET IDENTIFIER C_BRACKET {
    fatal("La taille précisée dans la création du tableau '%s' "
            "n'est pas une constante entière positive : '%s'\n",
            $2, $4);
}
| TOK_DECLARE IDENTIFIER O_BRACKET MOT C_BRACKET {
    if( lookup(ctx_stack, $2) != NULL ) {
        fatal("Définition d'un tableau avec un nom déjà utilisé : '%s'\n", $2);
    }
    if( ! is_numeric($4) ) {
        fatal("La taille précisée dans la création du tableau '%s' "
              "n'est pas une constante entière positive : '%s'\n",
              $2, $4);
    }
    struct entry * id = create_entry($2, E_TAB);
    id->taille = atoi($4);
    newname_global(ctx_stack, id);
    newname_global(liste_symbole, id); 
    struct sym_t ident = quad_sym(TYPE_IDENT,id->name);
    struct sym_t taille = quad_sym(TYPE_CST,atoi($4));
    gencode( quad_cond(OP_DECLARE_TAB ,ident, taille) );
    $$.next = NULL;
}
| IDENTIFIER O_BRACKET operande_entier C_BRACKET EQUAL concatenation{
    struct entry * ident = lookup(ctx_stack, $1);
    if( ident == NULL ) {
        fatal("Ce tableau n'existe pas : '%s'\n", $1);
    }
    if( ident->type != E_TAB ) {
        fatal("Cette variable n'est pas un tableau : '%s'\n", $1);
    }

    gencode( quad_cond(OP_SET_TAB, quad_sym(TYPE_IDENT,ident->name), $3.res, $6.res) );
    global_code[nextquad-1].data.taille = ident->taille;

    $$.next = NULL;
}
| TOK_IF test_bloc TOK_THEN M liste_instructions else_part TOK_FI {
    complete($2.true, $4);
    list_free($2.true);
    $$.next = NULL;
    if($6.type == else_elif) {
        complete($2.false, $6.debut_cond);
        list_free($2.false);
    }
    else if ($6.type == else_else) {
        complete($2.false, $6.debut_instr);
        list_free($2.false);
    }
    else {
        $$.next = list_concat($$.next, $2.false);
    }
    $$.next = list_concat($$.next, $5.next);
    $$.next = list_concat($$.next, $6.next);

    CHK printf("if.next : ");
    CHK print_node($$.next);
    CHK printf("\n");
}
| TOK_WHILE M test_bloc TOK_DO M liste_instructions G TOK_DONE {
    complete($3.true, $5);
    list_free($3.true);
    complete_single($7, $2);

    complete($6.next, $2);
    list_free($6.next);

    $$.next = NULL;
    $$.next = list_concat($$.next, $3.false);
}

| TOK_UNTIL M test_bloc TOK_DO M liste_instructions G TOK_DONE {
    complete($3.false, $5);
    list_free($3.false);
    complete_single($7, $2);

    complete($6.next, $2);
    list_free($6.next);

    $$.next = NULL;
    $$.next = list_concat($$.next, $3.true);
}
| TOK_FOR IDENTIFIER {
    struct entry * e = lookup(ctx_stack, $2);
    if(e != NULL && e->type == E_TAB) {
        fatal("Utilisation d'une variable tableau dans une boucle for"
              " : '%s'\n",$2);
    }
    if(e == NULL) {
        e = create_entry($2, E_STR);
        newname(ctx_stack, e);
        newname(liste_symbole, e);
        gencode(quad_cond(OP_DECLARE,quad_sym(TYPE_IDENT,$2)));
    }
    } TOK_IN liste_operandes TOK_DO {
    int nb_op = $5.nb_elem; 
    struct entry * e_tab = newtemp("for_tab");
    e_tab->taille = nb_op;
    e_tab->type = E_TAB;
    newname(ctx_stack, e_tab);
    newname(liste_symbole,e_tab);
    struct sym_t ident_tab = quad_sym(TYPE_IDENT,e_tab->name);
    char num[32];
    snprintf(num,32,"%i",nb_op);
    gencode(quad_cond(OP_DECLARE_TAB, ident_tab, quad_sym(TYPE_CST,nb_op)));
    struct entry * tmp = NULL;
    struct sym_t id_tmp;
    struct lkl_op_t * next = $5.lnode;
    int idx = 0;
    while(next != NULL) {
        snprintf(num, 32, "%i", idx);
        idx++;
        if(next->val.kind == TYPE_TAB_ELEM) { 
            if(tmp == NULL) { 
                tmp = newtemp(NULL);
                newname(ctx_stack,tmp);
                newname(liste_symbole, tmp);
                id_tmp = quad_sym(TYPE_IDENT,tmp->name);
                gencode(quad_cond(OP_DECLARE,id_tmp));
            }

            struct sym_t id_tab = quad_sym(TYPE_IDENT,next->val.tab.ident);
            snprintf(num,32,"%i", next->val.tab.idx);
            struct sym_t idx_tab = quad_sym(TYPE_CST_STRING,num);
            gencode(quad_cond(OP_GET_TAB,id_tmp, id_tab, idx_tab));
            struct entry * e_tmp_tab = lookup(ctx_stack, id_tab.ident);
            global_code[nextquad-1].data.taille = e_tmp_tab->taille;

            gencode(quad_cond(OP_SET_TAB,ident_tab, quad_sym(TYPE_CST_STRING,num), id_tmp));
            global_code[nextquad-1].data.taille = e_tab->taille;
        }
        else { 
            gencode(quad_cond(OP_SET_TAB,ident_tab, quad_sym(TYPE_CST_STRING, num), next->val));
            global_code[nextquad-1].data.taille = e_tab->taille;
        }
        next = next->next;
    }
    $<expr>$.res = ident_tab;
    } M {
    struct sym_t ident_tab = $<expr>7.res;
    struct sym_t ident = quad_sym(TYPE_IDENT,$2);
    char num[32];
    int nb_op = $5.nb_elem;
    struct entry * e_compteur = newtemp("for_idx");
    newname(ctx_stack, e_compteur);
    newname(liste_symbole, e_compteur);
    struct sym_t ident_compteur = quad_sym(TYPE_IDENT,e_compteur->name);
    gencode(quad_cond(OP_DECLARE,ident_compteur));
    gencode(quad_cond(OP_SET,ident_compteur, quad_sym(TYPE_CST_STRING,"0")));
    
    snprintf(num, 32, "%i", nb_op);
    struct quad iter = quad_cond(OP_IFLT,ident_compteur, quad_sym(TYPE_CST_STRING,num));
    iter.res.addr = nextquad+2; 
    iter.res.kind = TYPE_ADDR;
    gencode(iter);
    $<instr_type>$.next = node_create(nextquad);
    gencode(quad_goto_unknown());
    gencode(quad_cond(OP_GET_TAB,ident, ident_tab, ident_compteur));
    struct entry * e_tmp_tab = lookup(ctx_stack, ident_tab.ident);
    global_code[nextquad-1].data.taille = e_tmp_tab->taille;
    gencode(quad_cond(OP_ADD,ident_compteur, ident_compteur, quad_sym(TYPE_CST_STRING,"1")));

    } liste_instructions G TOK_DONE {
    complete_single($11, $8+2); 
    list_free($10.next);
    $$.next = NULL;

    complete($<instr_type>9.next, $11+1);
    list_free($<instr_type>9.next);
    lnode_free($5.lnode);
}
| TOK_ECHO liste_operandes {
    struct entry * tmp = NULL;
    struct sym_t id_tmp;
    struct lkl_op_t * next = $2.lnode;
    char num[32];
    while(next != NULL) {
        if(next->val.kind == TYPE_TAB_ELEM) { 
            if(tmp == NULL) { 
                tmp = newtemp(NULL);
                newname(ctx_stack,tmp);
                newname(liste_symbole, tmp);
                id_tmp = quad_sym(TYPE_IDENT,tmp->name);
                gencode(quad_cond(OP_DECLARE,id_tmp));
            }

            struct sym_t id_tab = quad_sym(TYPE_IDENT,next->val.tab.ident);
            snprintf(num,32,"%i", next->val.tab.idx);
            struct sym_t idx_tab = quad_sym(TYPE_CST_STRING,num);
            gencode(quad_cond(OP_GET_TAB,id_tmp, id_tab, idx_tab));
            struct entry * e_tmp_tab = lookup(ctx_stack, id_tab.ident);
            global_code[nextquad-1].data.taille = e_tmp_tab->taille;
            gencode ( quad_cond(OP_ECHO,id_tmp) );
        }
        else { 
            
            gencode( quad_echo(next->val) ); //le pb est ici
        }
        next = next->next;
    }
    global_code[nextquad-1].data.is_last = 1;
    lnode_free($2.lnode);
    $$.next = NULL;
}
| declaration_de_fonction {
    $$.next = NULL;
}
| TOK_READ IDENTIFIER {
    struct sym_t ident = quad_sym(TYPE_IDENT,$2);

    if( lookup(ctx_stack, $2) == NULL ) {
        struct entry * id = create_entry($2, E_STR);
        newname(ctx_stack, id);
        if( lookup(liste_symbole, $2) == NULL ) {
            newname(liste_symbole, id);
            gencode(quad_cond(OP_DECLARE,ident));
        }
    }
    gencode(quad_cond(OP_READ,ident));  //ici//
    $$.next = NULL;
}
| TOK_READ IDENTIFIER O_BRACKET operande_entier C_BRACKET {
    struct sym_t ident = quad_sym(TYPE_IDENT,$2);
    struct entry * e = lookup(ctx_stack,$2);
    if( e == NULL ) {
        fatal("Read dans un tableau qui n'existe pas : '%s'\n", $2);
    }
    if( e->type != E_TAB ) {
        fatal("Read dans un tableau mais la variable n'est pas un tableau '%s'\n", $2);
    }
    gencode(quad_cond(OP_READ_TAB,ident, $4.res));
    global_code[nextquad-1].data.taille = e->taille;
    $$.next = NULL;
}
| TOK_EXIT {
    struct quad q = quad_cond(OP_EXIT,quad_sym(TYPE_CST,0));
    gencode(q);
    $$.next = NULL;
}
| TOK_EXIT operande_entier { 
    struct quad q = quad_cond(OP_EXIT,$2.res);
    gencode(q);
    $$.next = NULL;
}
| TOK_RETURN { $$.next = NULL; }
| TOK_RETURN operande_entier { $$.next = NULL; }
| appel_de_fonction { $$.next = NULL; }
| TOK_CASE operande TOK_IN liste_cas TOK_ESAC {
    $$.next = NULL;
}
;


else_part
: G TOK_ELIF M test_bloc TOK_THEN M liste_instructions else_part {
    complete($4.true, $6);
    list_free($4.true);
    $$.type=else_elif;
    $$.debut_cond = $3;
    $$.debut_instr = $6;

    $$.next = NULL;
    if($8.type == else_elif) {
        complete($4.false, $8.debut_cond);
        list_free($4.false);
    }
    else if ($8.type == else_else) {
        complete($4.false, $8.debut_instr);
        list_free($4.false);
    }
    else {
        $$.next = list_concat($$.next, $4.false);
    }
    $$.next = list_concat($$.next, $7.next);
    $$.next = list_concat($$.next, $8.next);
    struct node_t * tmp2 = node_create($1);
    $$.next = list_concat($$.next, tmp2);
}
| G TOK_ELSE M liste_instructions {
    $$.type = else_else;
    $$.debut_instr = $3;
    struct node_t * tmp2 = node_create($1);
    $$.next = list_concat($4.next, tmp2);
}
| %empty {
    $$.type = else_empty;
    $$.next = NULL;
}
;

M: %empty {$$ = nextquad;}
G: %empty {
    $$ = nextquad;
    gencode(quad_goto_unknown());
}

/*  pas implémenté */
liste_cas
: liste_cas filtre C_PAR liste_instructions SEMICOLON SEMICOLON {

}
| filtre C_PAR liste_instructions SEMICOLON SEMICOLON {

}
filtre
: MOT
| IDENTIFIER
| STRING_DOUBLE_QUOTE
| STRING_SINGLE_QUOTE
| filtre PIPE MOT
| filtre PIPE IDENTIFIER
| filtre PIPE STRING_DOUBLE_QUOTE
| filtre PIPE STRING_SINGLE_QUOTE
| FOIS_DIV_MOD {
    if($1 != op_mul) {
        fatal("syntax error on case\n");
    }
}


concatenation
: concatenation operande {
    struct entry * nv_temp = newtemp(NULL);
    struct sym_t ident_tmp = quad_sym(TYPE_IDENT,nv_temp->name);
    struct quad op_concat = quad_cond(OP_CONCAT,ident_tmp, $1.res, $2.res);
    gencode(quad_cond(OP_DECLARE,ident_tmp));
    newname(ctx_stack, nv_temp);
    newname(liste_symbole, nv_temp);
    gencode(op_concat);
    $$.res = ident_tmp;
}
| operande { $$.res = $1.res; }
;

test_bloc : TOK_TEST test_expr {
    $$.true = NULL;
    $$.true = list_concat($$.true, $2.true);
    $$.false = NULL;
    $$.false = list_concat($$.false, $2.false);
}

test_expr 
: test_expr LOGIC_OR M test_expr2 {
    complete($1.false, $3);
    list_free($1.false);
    $$.true = list_concat($1.true, $4.true);
    $$.false = $4.false;
}
| test_expr2 {
    $$.true = NULL;
    $$.true = list_concat($$.true, $1.true);
    $$.false = NULL;
    $$.false = list_concat($$.false, $1.false);
}
;

test_expr2
: test_expr2 LOGIC_AND M test_expr3 {
    complete($1.true, $3); 
    list_free($1.true);
    $$.true = $4.true; 
    $$.false = list_concat($1.false, $4.false);
}
| test_expr3 {
    $$.true = NULL;
    $$.true = list_concat($$.true, $1.true);

    $$.false = NULL;
    $$.false = list_concat($$.false, $1.false);

}
;

test_expr3
: O_PAR test_expr C_PAR {
    $$.true = $2.true;
    $$.false = $2.false;
}
| LOGIC_NOT O_PAR test_expr C_PAR {
    $$.true = $3.false;
    $$.false = $3.true;
}
| test_instruction  {
    $$.true = NULL;
    $$.true = list_concat($$.true, $1.true);
    $$.false = NULL;
    $$.false = list_concat($$.false, $1.false);
}
| LOGIC_NOT test_instruction {
    $$.true = $2.false;
    $$.false = $2.true;
}
;

test_instruction
: concatenation EQUAL concatenation {
    $$.true = node_create(nextquad);
    struct quad q = quad_cond(OP_IFEOP_STR,$1.res, $3.res);
    gencode(q);

    $$.false = node_create(nextquad);
    struct quad q2 = quad_goto_unknown();
    gencode(q2);

    CHK printf("true : ");
    CHK print_node($$.true);
    CHK printf("\nfalse : ");
    CHK print_node($$.false);
    CHK printf("\n");
}
| concatenation NOT_EQUAL concatenation {
    $$.true = node_create(nextquad);
    struct quad q = quad_cond(OP_IFDIFF_STR,$1.res, $3.res);
    gencode(q);

    $$.false = node_create(nextquad);
    struct quad q2 = quad_goto_unknown();
    gencode(q2);
}
| operateur1 concatenation {
    if( $1 == null ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFNULL_STR,$2.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    }
    else if( $1 == not_null ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFNOTNULL_STR,$2.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    }
    else {
        fatal("invalid operateur1\n");
    }
}
| operande operateur2 operande {

    if( $1.res.kind == TYPE_CST_STRING ) {
        if( is_numeric($1.res.cst_str) == 0 ) {
            fatal("valeur (gauche) constante non convertissable en entier : '%s'\n", $1.res.cst_str);
        }
    }
    if( $3.res.kind == TYPE_CST_STRING ) {
        if( is_numeric($3.res.cst_str) == 0 ) {
            fatal("valeur (droite) constante non convertissable en entier : '%s'\n", $3.res.cst_str);
        }
    }


    if( $2 == eq ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFEQ,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    } else if ( $2 == not_eq ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFDIFF,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    } else if ( $2 == greater_than ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFGT,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);        
    } else if ( $2 == greater_equal ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFGE,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    } else if ( $2 == less_than ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFLT,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    } else if ( $2 == less_equal ) {
        $$.true = node_create(nextquad);
        struct quad q = quad_cond(OP_IFLE,$1.res, $3.res);
        gencode(q);
        $$.false = node_create(nextquad);
        struct quad q2 = quad_goto_unknown(nextquad);
        gencode(q2);
    } else {
        fatal("Error (invalid operateur2)\n");
    }
}
;

liste_operandes
: liste_operandes operande {
    $$.lnode = $1.lnode;
    lnode_append($$.lnode, $2.res);
    $$.nb_elem = $1.nb_elem+1;
}
| operande { 
    $$.lnode = lnode_create($1.res);
    $$.nb_elem = 1;
}
| ACCES_LISTE_TABLEAU {
    $$.lnode = NULL;
    CHK printf("liste tableau : '%s'\n", $1);
    struct entry * tab = lookup(ctx_stack, $1);
    if( tab == NULL) {
        fatal("Accès un tableau non défini : '%s'\n", $1);
    }
    if( tab->type != E_TAB) {
        fatal("Cette variable n'est pas un tableau : '%s'\n", $1);
    }

    $$.lnode = lnode_create( quad_sym(TYPE_TAB_ELEM,$1, 0) );
    for(int i=1;i < tab->taille; i++) {
        lnode_append($$.lnode, quad_sym(TYPE_TAB_ELEM,$1, i));
    }
    $$.nb_elem = tab->taille;
}
;

operande
: ACCES_VARIABLE {
    CHK printf("accès à la variable : %s\n", $1);
    struct entry * e = lookup(ctx_stack, $1);
    if( e == NULL ) {
        fatal("Accès à une variable non définie : '%s'\n", $1);
    }
    struct sym_t ident = quad_sym(TYPE_IDENT,e->name);
    $$.res = ident;
}
| DOLLAR O_CURLY_BRACKET IDENTIFIER O_BRACKET operande_entier C_BRACKET C_CURLY_BRACKET {
    struct entry * e = lookup(ctx_stack, $3);
    if( e == NULL ) {
        fatal("Accès à un tableau non défini : '%s'\n", $3);
    }
    if( e->type != E_TAB ) {
        fatal("Cette variable n'est pas un tableau : '%s'\n", $3);
    }
    struct entry * tmp = newtemp(NULL);
    newname(ctx_stack,tmp);
    newname(liste_symbole, tmp);
    struct sym_t id_tmp = quad_sym(TYPE_IDENT,tmp->name);

    gencode(quad_cond(OP_DECLARE,id_tmp));
    gencode(quad_cond(OP_GET_TAB,id_tmp, quad_sym(TYPE_IDENT,e->name), $5.res));
    global_code[nextquad-1].data.taille = e->taille;

    $$.res = id_tmp;
}
| MOT {
    $$.res = quad_sym(TYPE_CST_STRING,$1);
}
| IDENTIFIER { 
    $$.res = quad_sym(TYPE_CST_STRING,$1);
}
| ACCES_ARG {
    CHK printf("acces arg %i\n", $1);
    struct entry * e = newtemp(NULL);
    struct sym_t ident = quad_sym(TYPE_IDENT,e->name);
    newname(ctx_stack, e);
    newname(liste_symbole, e);
    gencode(quad_cond(OP_DECLARE,ident));
    gencode(quad_cond(OP_ARG_GLOB,ident, quad_sym(TYPE_CST,$1)));
    $$.res = ident;
}
| ACCES_LISTE_ARG {
    $$.res = quad_sym(TYPE_IDENT,".arg_concat");
}
| LAST_FUNC_STATUS {
    $$.res = quad_sym(TYPE_IDENT,".last_func_return");
}
| STRING_DOUBLE_QUOTE {
    $$.res = quad_sym(TYPE_CST_STRING,$1);
}
| STRING_SINGLE_QUOTE {
    $$.res = quad_sym(TYPE_CST_STRING,$1);
}
| DOLLAR O_PAR TOK_EXPR somme_entier C_PAR {
    $$.res = $4.res;
}
| DOLLAR O_PAR appel_de_fonction C_PAR {
    $$.res = quad_sym(TYPE_CST_STRING,"fonction pas implémenté");
}
;

operateur1
: OP_NOT_NULL { $$ = not_null; }
| OP_NULL { $$ = null; }
;

operateur2
: OP_EQ { $$ = eq; }
| OP_NEQ { $$ = not_eq; }
| OP_GT { $$ = greater_than; }
| OP_GE { $$ = greater_equal; }
| OP_LT { $$ = less_than; }
| OP_LE { $$ = less_equal; }
;

somme_entier
: somme_entier PLUS_OU_MOINS produit_entier {
    struct entry * res = newtemp(NULL);
    newname(ctx_stack, res);
    newname(liste_symbole, res);
    struct sym_t ident_res = quad_sym(TYPE_IDENT,res->name);
    gencode(quad_cond(OP_DECLARE,ident_res));
    if($2 == op_add) {
        gencode( quad_cond(OP_ADD,ident_res, $1.res, $3.res) );
    }
    else if($2 == op_sub) {
        gencode (quad_cond(OP_SUB,ident_res, $1.res, $3.res) );
    }
    else {
        fatal("not possible\n");
    }
    $$.res = ident_res;
}
| produit_entier {
    $$.res = $1.res;
}
;

produit_entier
: produit_entier FOIS_DIV_MOD operande_entier {
    struct entry * res = newtemp(NULL);
    newname(ctx_stack, res);
    newname(liste_symbole, res);
    struct sym_t ident_res = quad_sym(TYPE_IDENT,res->name);
    gencode(quad_cond(OP_DECLARE,ident_res));
    if($2 == op_mul) {
        gencode( quad_cond(OP_MUL,ident_res, $1.res, $3.res) );
    }
    else if($2 == op_div) {
        gencode (quad_cond(OP_DIV,ident_res, $1.res, $3.res) );
    }
    else if($2 == op_mod) {
        gencode (quad_cond(OP_MOD,ident_res, $1.res, $3.res) );
    }
    else {
        fatal("problème sur opérateur fois_div_mod (bizarre)\n");
    }
    $$.res = ident_res;
}
| operande_entier {
    $$.res = $1.res;
}
;

operande_entier
: opt_plus_ou_moins ACCES_VARIABLE {

    CHK printf("(op_entier) accès à la variable : %s\n", $2);
    struct entry * e = lookup(ctx_stack, $2);
    if( e == NULL ) {
        fatal("accès à une variable non définie : '%s'\n", $2);
    }
    struct sym_t ident = quad_sym(TYPE_IDENT,e->name);
    if($1 != op_sub) { 
        $$.res = ident;
    }
    else { 
        struct entry * inv = newtemp(NULL);
        newname(ctx_stack, inv);
        newname(liste_symbole, inv);
        struct sym_t ident_inv = quad_sym(TYPE_IDENT,inv->name);
        gencode(quad_cond(OP_DECLARE,ident_inv));
        gencode(quad_cond(OP_INV_SIGNE,ident_inv, ident));
        $$.res = ident_inv;
    }
} 
| opt_plus_ou_moins DOLLAR O_CURLY_BRACKET IDENTIFIER O_BRACKET operande_entier C_BRACKET C_CURLY_BRACKET {
    struct entry * e = lookup(ctx_stack, $4);
    if( e == NULL ) {
        fatal("Accès à un tableau non défini : '%s'\n", $4);
    }
    if( e->type != E_TAB ) {
        fatal("Cette variable n'est pas un tableau : '%s'\n", $4);
    }
    struct entry * tmp = newtemp(NULL);
    newname(ctx_stack,tmp);
    newname(liste_symbole, tmp);
    struct sym_t id_tmp = quad_sym(TYPE_IDENT,tmp->name);

    gencode(quad_cond(OP_DECLARE,id_tmp));
    gencode(quad_cond(OP_GET_TAB,id_tmp, quad_sym(TYPE_IDENT,e->name), $6.res));
    global_code[nextquad-1].data.taille = e->taille;
    
    if($1 == op_sub) { // rien, ou un '+'
        gencode(quad_cond(OP_INV_SIGNE,id_tmp, id_tmp)); 
    }
    $$.res = id_tmp;
} 
| opt_plus_ou_moins ACCES_ARG {
    struct entry * e = newtemp(NULL);
    struct sym_t ident = quad_sym(TYPE_IDENT,e->name);
    newname(ctx_stack, e);
    newname(liste_symbole, e);
    gencode(quad_cond(OP_DECLARE,ident));
    gencode(quad_cond(OP_ARG_GLOB,ident, quad_sym(TYPE_CST,$2)));
    if($1 == op_sub) {
        gencode(quad_cond(OP_INV_SIGNE,ident, ident));
    }
    $$.res = ident;
}
| opt_plus_ou_moins MOT { 
    if( is_numeric($2) == 0 ) {
        fatal("valeur constante non convertissable en entier : '%s'\n", $1);
    }
    struct sym_t val = quad_sym(TYPE_CST_STRING,$2);
    if( $1 != op_sub ) {
        $$.res = val;
    }
    else {
        struct entry * inv = newtemp(NULL);
        newname(ctx_stack, inv);
        newname(liste_symbole, inv);
        struct sym_t ident_inv = quad_sym(TYPE_IDENT,inv->name);
        gencode(quad_cond(OP_DECLARE,ident_inv));
        gencode(quad_cond(OP_INV_SIGNE,ident_inv, val));
        $$.res = ident_inv;
    }
}
| O_PAR somme_entier C_PAR {
    $$.res = $2.res;
}
;

opt_plus_ou_moins
: PLUS_OU_MOINS { $$ = $1; }
| %empty { $$ = op_none; }
;

declaration_de_fonction
: IDENTIFIER O_PAR C_PAR O_CURLY_BRACKET {
    
} decl_loc liste_instructions C_CURLY_BRACKET {
    
}
;

decl_loc
: decl_loc TOK_LOCAL IDENTIFIER EQUAL concatenation SEMICOLON {
    
}
| %empty {
    $$ = 0;
}
;

/*
vide pour pas d'err de syntaxe
*/
appel_de_fonction
: IDENTIFIER liste_operandes {}
| IDENTIFIER {}


%%

void yyerror(const char * msg) {
    fprintf(stderr, "Erreur à la ligne %d : %s\n", yylineno, msg);
}
