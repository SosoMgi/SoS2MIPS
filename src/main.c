#include "quads.h"
#include "table_symb.h"
#include "grammar.yy.h"
#include "grammar.tab.h"
#include "mips.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <getopt.h>
#include "options.h"

#define MAX_BUFF_SIZE 1024

extern int nextquad;

extern struct quad global_code[1<<16];

extern struct ctx_stack * liste_symbole;



int main(int argc, char* argv[]){

    struct struc_args *args = malloc(sizeof(struct struc_args));
    parse(argc, argv, args);

    yyin = fopen(args->input, "r");

    if (yyin == NULL) {
        fprintf(stderr, "Error: unable to open input file %s\n",args->input);
        return 1;
    }

    nextquad = 0;
    int t = yyparse();
    
    fclose(yyin);
    yylex_destroy(); 

    if(t != 0) {
        return 1;
    }

    if (args->print_tos == 0)
    {
        printf("Table des symboles :\n");
        print_ctx_stack(liste_symbole);
    }

    if (args->print_q == 0)
    {
        printf("nbre total de quads : %i\n",nextquad);
        for(int i=0; i<nextquad; i++) {
            fprintf(stdout, "%-3i: ", i);
            print_quad(global_code[i], stdout);
        }
    }
    

    trad_mips(args->output, global_code, nextquad);

    free_ctx_stack(liste_symbole, 1);
    fclose(args->output);

    return 0;
}