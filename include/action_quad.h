#ifndef ACTION_QUAD_H
#define ACTION_QUAD_H


#include "quads.h"
#include "linked_list.h"


void gencode(struct quad q); // ajouter le quad à notre code
void complete(struct node_t * l, size_t addr); // compléter les goto inconnus
void complete_single(int quad_num, size_t addr);
struct entry * newtemp(char * name_); // générer une nouvelle entry, renvoyer son pointeur
// si name == NULL, le nom sera de la forme ".tmp_xx"
// si name != NULL, le nom sera de la forme ".tmp_xx_<name>"
int is_numeric(char * s); // renvois 1 si s est uniquement composé de chiffres de 0 à 9


#endif