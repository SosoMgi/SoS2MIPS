%{
#include <stdio.h>
#include <string.h>
#include "quads.h"
#include "grammar.tab.h"
#include <stdbool.h>
#define process(token) { if (!comment) { return token; } else {  if(new_line) { fprintf(yyout,"\n\t# "); new_line = false;} fprintf(yyout,"%s", strdup(yytext)); } }

    
bool comment = false;
bool new_line = false;
%}

%option nounput
%option noyywrap

%option yylineno

IDENT [a-zA-Z_][a-zA-Z0-9_]*

%%
"|"   { process ( PIPE       )   ;}
"["   { process ( O_BRACKET  )   ;}
"]"   { process ( C_BRACKET  )   ;}
"{"   { process ( O_CURLY_BRACKET )   ;}
"}"   { process ( C_CURLY_BRACKET )   ;}
"("   { process ( O_PAR       )   ;}
")"   { process ( C_PAR       )   ;}
"$"   { process ( DOLLAR      )   ;}
";"   { process ( SEMICOLON   )   ;}
"="   { process ( EQUAL       )   ;}
"!="  { process ( NOT_EQUAL   )   ;}
"-n"  { process ( OP_NOT_NULL )   ;}
"-z"  { process ( OP_NULL     )   ;}
"-eq" { process ( OP_EQ       )   ;}
"-ne" { process ( OP_NEQ      )   ;}
"-gt" { process ( OP_GT       )   ;}
"-ge" { process ( OP_GE       )   ;}
"-lt" { process ( OP_LT       )   ;}
"-le" { process ( OP_LE       )   ;}
"!"   { process ( LOGIC_NOT   )   ;}
"-a"  { process ( LOGIC_AND   )   ;}
"-o"  { process ( LOGIC_OR    )   ;}

if      { process(TOK_IF)       ;}
then    { process (TOK_THEN)    ;}
for     { process (TOK_FOR)     ;}
do      { process (TOK_DO )     ;}
done    { process (TOK_DONE)    ;}
in      { process (TOK_IN   )   ;}
while   { process (TOK_WHILE )  ;}
until   { process (TOK_UNTIL  ) ;}
case    { process (TOK_CASE   ) ;}
esac    { process (TOK_ESAC   ) ;}
echo    { process (TOK_ECHO )   ;}
read    { process (TOK_READ )   ;}
return  { process (TOK_RETURN ) ;}
exit    { process (TOK_EXIT  )  ;}
local   { process (TOK_LOCAL  ) ;}
elif    { process (TOK_ELIF )   ;}
else    { process (TOK_ELSE  )  ;}
fi      { process (TOK_FI  )    ;}
declare { process (TOK_DECLARE );}
test    { process (TOK_TEST  )  ;}
expr    { process (TOK_EXPR  )  ;}


\#.* {
    // commentaire = on ignore jusqu'à la fin de la ligne
}

\"([^\"\\]|\\.)*\" {
    // string entre ""
    strncpy(yylval.str, yytext, MAX_STRING_SIZE);
    process (STRING_DOUBLE_QUOTE);
}
\'([^\'\\]|\\.)*\' {
    // string entre ''
    strncpy(yylval.str, yytext, MAX_STRING_SIZE);
    process (STRING_SINGLE_QUOTE);
}

"+" {
    yylval.op_arithm = op_add;
    process (PLUS_OU_MOINS) ;
}
"-" {
    yylval.op_arithm = op_sub;
    process (PLUS_OU_MOINS) ;
}
"*" {
    yylval.op_arithm = op_mul;
    process (FOIS_DIV_MOD) ;
}
"/" {
    yylval.op_arithm = op_div;
    process (FOIS_DIV_MOD) ;
}
"%" {
    yylval.op_arithm = op_mod;
    process(FOIS_DIV_MOD) ;
}

{IDENT} {
    strncpy(yylval.str, yytext, MAX_STRING_SIZE);
    process ( IDENTIFIER);
}

[^\;\[\]\(\)\=\!\|\$\*\{\}\-\+\/\\\#\%\n\t[:space:]]* {
    // cette règle inclus les IDENTIFIER, c'est pourquoi on la met en dessous
    // cette règle inclu aussi les entiers 
    // (d'où l'absence d'un symbole terminal "entier" dans la grammaire)
    strncpy(yylval.str, yytext, MAX_STRING_SIZE);
    process ( MOT);
}

\$\{{IDENT}\} {
    strncpy(yylval.str, yytext+2, MAX_STRING_SIZE); // +2 pour '${'
    yylval.str[ strlen(yylval.str) -1 ] = '\0'; // supprimer le '}'
    // de sorte que yylval.str contienne l'identificateur
    process ( ACCES_VARIABLE);
}

\$\{{IDENT}\[\*\]\} {
    strncpy(yylval.str, yytext+2, MAX_STRING_SIZE); // +2 pour '${'
    yylval.str[ strlen(yylval.str) -4 ] = '\0'; // supprimer le '[*]}'
    process ( ACCES_LISTE_TABLEAU);
}


\$[0-9]+ {
    yylval.intval = atoi(yytext+1)-1;
    process ( ACCES_ARG);
}
\$\* {
    // liste des arguments d'une fonction
    process ( ACCES_LISTE_ARG);
}
\$\? {
    // code de retour de la dernière fonction appelée
    process ( LAST_FUNC_STATUS);
}



[[:space:]] { 
    // le whitespace (sauf \n) => on ignore
}

. {
    fprintf(stderr, "Erreur lexicale : caractère non reconnu ('%c')", yytext[0]);
}

%%
