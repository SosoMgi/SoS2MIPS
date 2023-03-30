#include <getopt.h>
#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdnoreturn.h>
#include <string.h>

#include "options.h"

#include "lib.h"




int parse(int argc, char *argv[], struct struc_args *args) {
  
  args->input = NULL;
  args->output = fopen("output.s", "w+");
  args->print_tos = 1;
  args->print_q = 1;

  int option;
  while((option = getopt_long(argc, argv, "i:hvo:tq::",NULL,NULL)) != -1) {
        switch(option) {
        case 'h':
            printf("Usage : %s [-h]  [-o fichier_sortie] [-t --tos] [-q] fichier_entree\n", argv[0]);
            break;
        case 'v':
            printf("Julie BONNAIL\n"
                   "Mohamed FAID\n"
                   "Sofiane MARGHINI\n"
                   "Charles PARISI\n");
            break;
        case 'o':
            args->output = fopen(optarg, "w+");
            break;
        case 't':
            args->print_tos = 0;
            break;
        case 'q':
            args->print_q = 0;
            break;
        case 'i':
            args->input = optarg;
            break;
        default:
            fprintf(stderr, "Option inconnue ou argument manquant : '%c'\n", optopt);
            return 1;
        }
    }
  return 0;

}
