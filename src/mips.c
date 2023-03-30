#include "mips.h"
#include "debug.h"


#define INSTR_TO_STR_IDX(instr) (instr - FIRST_INSTR_IDX)

static const char *op_str[SYSCALL] = {
	[INSTR_TO_STR_IDX(LI)]		   = "li",
	[INSTR_TO_STR_IDX(LW)]		   = "lw",
	[INSTR_TO_STR_IDX(LA)]		   = "la",
	[INSTR_TO_STR_IDX(SW)]		   = "sw",
	[INSTR_TO_STR_IDX(MOVE)]	   = "move",
	[INSTR_TO_STR_IDX(SYSCALL)]	   = "syscall",
	[INSTR_TO_STR_IDX(INSTR_ADD)]  = "add",
	[INSTR_TO_STR_IDX(INSTR_ADDI)] = "addi",
	[INSTR_TO_STR_IDX(INSTR_SUB)]  = "sub",
	[INSTR_TO_STR_IDX(INSTR_AND)]  = "and",
	[INSTR_TO_STR_IDX(INSTR_ANDI)] = "andi",
	[INSTR_TO_STR_IDX(INSTR_NOR)]  = "nor",
	[INSTR_TO_STR_IDX(INSTR_OR)]   = "or",
	[INSTR_TO_STR_IDX(INSTR_ORI)]  = "ori",
	[INSTR_TO_STR_IDX(INSTR_XOR)]  = "xor",
	[INSTR_TO_STR_IDX(INSTR_XORI)] = "xori",
	[INSTR_TO_STR_IDX(INSTR_DIV)]  = "div",
	[INSTR_TO_STR_IDX(INSTR_MULT)] = "mul",
	[INSTR_TO_STR_IDX(BRANCH)]	   = "b",
	[INSTR_TO_STR_IDX(BEQ)]		   = "beq",
	[INSTR_TO_STR_IDX(JAL)]		   = "jal",
	[INSTR_TO_STR_IDX(JR)]		   = "jr",
	[INSTR_TO_STR_IDX(BLT)]		   = "blt",
	[INSTR_TO_STR_IDX(BGT)]		   = "bgt",
	[INSTR_TO_STR_IDX(BLE)]		   = "ble",
	[INSTR_TO_STR_IDX(BGE)]		   = "bge",
	[INSTR_TO_STR_IDX(BNE)]		   = "bne",

};





















void print_mips(struct mips_file_t * f , ...) {
    va_list args;
    va_start(args, f);

    int done = 0;
    while (!done) {
        int op = va_arg(args, int);
        switch (op) {
            case LOAD:
                struct sym_t qop = va_arg(args, struct sym_t);
                if (qop.kind == TYPE_CST) {
                    fprintf(f->sortie, "li ");
                } else if (qop.kind == TYPE_CST_STRING) {
                    fprintf(f->sortie, "la ");
                } else {
                    fprintf(f->sortie, "lw ");
                }
                fprintf(f->sortie, "$%s, ", va_arg(args, char *));
                if (qop.kind == TYPE_CST) {
                    fprintf(f->sortie, "%d", qop.cst);
                } else if (qop.kind == TYPE_CST_STRING) {
                    fprintf(f->sortie, "%s", qop.cst_str);
                } else {
                    fprintf(f->sortie, "%s", qop.ident);
                }
                break;
            case END:
                done = 1;
                break;
            case IMM :
                fprintf(f->sortie, "li $%s, %d", va_arg(args, char *), va_arg(args, int));
                break;
            case REG:
			fprintf(f->sortie, "$%s", va_arg(args, char *));
			break;
            case ADDR:
			fprintf(f->sortie, "(%s)", va_arg(args, char *));
			break;
		case TAB:
			fprintf(f->sortie, "\t");
			break;
        case SYSCALL:
            fprintf(f->sortie, "syscall %s \n", va_arg(args, char *));
            break;
        case CST:
            fprintf(f->sortie, "%d", va_arg(args, int));
            break;
        case QLABEL:
            fprintf(f->sortie, "_l%d", va_arg(args, int));
            break;
            case LI:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(LI)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d\n", va_arg(args, int));
                break;
            case LW:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(LW)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d(%s)\n", va_arg(args, int), va_arg(args, char*));
                break;
            case LA:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(LA)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case SW:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(SW)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d(%s)\n", va_arg(args, int), va_arg(args, char*));
                break;
            case MOVE:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(MOVE)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_AND:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_AND)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_ANDI:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_ANDI)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d\n", va_arg(args, int));
                break;
            case INSTR_NOR:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_NOR)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_OR:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_OR)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_ORI:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_ORI)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d\n", va_arg(args, int));
                break;
            case INSTR_XOR:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_XOR)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_XORI:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_XORI)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d\n", va_arg(args, int));
                break;
            case INSTR_ADD:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_ADD)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_ADDI:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_ADDI)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d\n", va_arg(args, int));
                break;
            case INSTR_DIV:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_DIV)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case INSTR_MULT:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(INSTR_MULT)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BRANCH:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BRANCH)]);
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BEQ:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BEQ)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case JAL:
fprintf(f->sortie, "jal %s", va_arg(args, char *));
break;

case BNE:
fprintf(f->sortie, "bne $%s, $%s, %s", va_arg(args, char *), va_arg(args, char *), va_arg(args, char *));
break;
              case JR:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(JR)]);
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BLT:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BLT)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BGT:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BGT)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BLE:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BLE)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case BGE:
                fprintf(f->sortie, "%s ", op_str[INSTR_TO_STR_IDX(BGE)]);
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s, ", va_arg(args, char*));
                fprintf(f->sortie, "%s\n", va_arg(args, char*));
                break;
            case COMMENT:
                fprintf(f->sortie, "#%s\n", va_arg(args, char*));
                break;
            case SB:
                fprintf(f->sortie, "sb %s, ", va_arg(args, char*));
                fprintf(f->sortie, "%d(%s)\n", va_arg(args, int), va_arg(args, char*));
                break;
            default:
                break;
        }
    }
    va_end(args);
}


























int put_quad(struct mips_file_t * f, int position, char *chaine, ...) {
    
    FILE * fichier = f->sortie;
    int pointeur_init = ftell(fichier);

    // R2cupération de la taille du fichier
    fseek(fichier, 0, SEEK_END);
    int taille = ftell(fichier);

    // Déplacement à la position spécifiée dans le fichier
    fseek(fichier, position, SEEK_SET);

    // Lecture de la suite du fichier dans un buffer
    char * buffer = calloc(taille+1,1);
    size_t nb_octets_lus = fread(buffer, 1, taille, fichier);

    // Écriture de la chaîne de caractères à la position spécifiée dans le fichier
    int r = 0;
    fseek(fichier, position, SEEK_SET);
    va_list ap;
    va_start(ap,chaine);
    r += vfprintf(fichier, chaine, ap);
    va_end(ap);

    // Réécriture de la suite du fichier à la suite de la chaîne de caractères
    fwrite(buffer, sizeof(char), nb_octets_lus, fichier);

    // Déplacement à la fin du fichier
    fseek(fichier, pointeur_init+r, SEEK_SET);
    free(buffer);

    // modification des positions enregistrées, si besoin
    if(f->pos_data > position) {
        f->pos_data += r;
    }
    if(f->pos_main > position) {
        f->pos_main += r;
    }    
    for (int i = 0; i < f->nbquad; i++)
    {
        if (f->table_addr[i] > position)
        {
            f->table_addr[i] += r;
        }
    }
    return r;
}





char* mips_qop(struct mips_file_t * f, struct sym_t qo) {
    char * mips = malloc(MAX_OP_SIZE);
    char * chaine = malloc(MAX_OP_SIZE);
    char * str = malloc(MAX_MIPS_ID * sizeof(char));
    switch (qo.kind) {
        case TYPE_CST:
            snprintf(mips, MAX_OP_SIZE, "%d", qo.cst);
            break;
        case TYPE_CST_STRING:
            sprintf(str, ".s%d", *(&f->numstr));
            *(&f->numstr) += 1;
            switch (qo.cst_str[0])
            {
            case '\"':
                snprintf(chaine,MAX_OP_SIZE,"   %s: .asciiz %s\n",str,qo.cst_str);
                break;
            case '\'':
                qo.cst_str[0] = '\"';
                qo.cst_str[strlen(qo.cst_str)-1] = '\"';
                snprintf(chaine,MAX_OP_SIZE,"   %s: .asciiz %s\n",str,qo.cst_str);
                break;
            default:
                snprintf(chaine,MAX_OP_SIZE,"   %s: .asciiz \"%s\"\n",str,qo.cst_str);
                break;
            }
            f->pos_data += put_quad(f, f->pos_data, chaine);
            snprintf(mips, MAX_OP_SIZE, "%s", str);
            free(str);
            break;
        case TYPE_IDENT:
            snprintf(mips, MAX_OP_SIZE, "%s", qo.ident);
            break;
        case TYPE_ADDR:
            if (f->table_label[qo.addr] == -1)
            {
                f->table_label[qo.addr] = f->numlab;
                f->numlab += 1;                
            }
            snprintf(mips, MAX_OP_SIZE, "_l%d",f->table_label[qo.addr]);
            break;
        default:
            snprintf(mips, MAX_OP_SIZE, "UNKNOWN");
            fprintf(stderr, "quadop non reconnu\n");
            // provoquera une erreur à l'exécution
            // on arrete pas la traduction pour autant
            break;
    }
    free(chaine);
    return mips;
}

int gen_echo(struct mips_file_t * f, struct quad q) {
    char * tmp;
    tmp = mips_qop(f, q.arg1);
    int i = 0;
    i = fprintf(f->sortie, "   la $a0, %s\n"
                  "   li $v0, 4\n"
                  "   syscall #print_str\n",
                  tmp);
    if(q.data.is_last == 0) {
       i += fprintf(f->sortie, "   la $a0, .single_space\n"
                      "   li $v0, 4\n"
                      "   syscall #print_str\n");
    }
    free(tmp);
    return i;
}

int gen_seq(struct mips_file_t * f, struct quad q) {
    char * tmp1;
    char * tmp2;
    char * tmp3;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.arg2);
    tmp3 = mips_qop(f, q.res);
    int i = fprintf(f->sortie, 
                    "   la $a0, %s\n"
                    "   la $a1, %s\n"
                    "   jal compare\n"
                    "   beq $v0, 0, %s\n", 
                    tmp1, tmp2, tmp3);
    free(tmp1);
    free(tmp2);
    free(tmp3);
    return i;
}

int gen_ifdiff_str(struct mips_file_t * f, struct quad q) {
    char * tmp1;
    char * tmp2;
    char * tmp3;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.arg2);
    tmp3 = mips_qop(f, q.res);
    int i = fprintf(f->sortie, 
                    "   la $a0, %s\n"
                    "   la $a1, %s\n"
                    "   jal compare\n"
                    "   beq $v0, 1, %s\n", 
                    tmp1, tmp2, tmp3);
    free(tmp1);
    free(tmp2);
    free(tmp3);
    return i;
}

int gen_ifnull_str(struct mips_file_t * f, struct quad q) {
    char * tmp1;
    char * tmp2;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.res);
    int i = fprintf(f->sortie, 
                    "   la $a0, %s\n"
                    "   la $a1, .empty_string\n"
                    "   jal compare\n"
                    "   beq $v0, 0, %s\n", 
                    tmp1, tmp2);
    free(tmp1);
    free(tmp2);
    return i;
}

int gen_ifnotnull_str(struct mips_file_t * f, struct quad q) {
    char * tmp1;
    char * tmp2;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.res);
    int i = fprintf(f->sortie, 
                             "   la $a0, %s\n"
                             "   la $a1, .empty_string\n"
                             "   jal compare\n"
                             "   bne $v0, 0, %s\n", 
                             tmp1, tmp2);
    free(tmp1);
    free(tmp2);
    return i;
}



int gen_goto(struct mips_file_t * f, struct quad q) {
    int i = 0;
    char * tmp1;
    if(q.res.kind != TYPE_CST_STRING ) {
                tmp1 = mips_qop(f,q.res);
                i = fprintf(f->sortie, "   b %s\n", tmp1);
                free(tmp1);
            } else {
                i = fprintf(f->sortie, "   b %s\n", q.res.cst_str);
            }
    return i;
}



int gen_read(struct mips_file_t * f, struct quad q) {
    int i = 0;
    char * tmp3;
    tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "   # read -> %s\n"
                            "   li $v0, 8\n"
                            "   la $a0, .buffer_read # @ buf\n"
                            "   li $a1, %i # buf size\n"
                            "   syscall # read_str\n"
                            "   la $a0, .buffer_read\n"
                            "   jal strlen\n"
                            "   subi $t0, $v0, 1\n"
                            "   la $t2, .buffer_read\n"
                            "   add $t0, $t0, $t2\n"
                            "   li $t1, 0\n"
                            "   sb $t1, ($t0) #suppresion \\n\n"
                            "   la $a0, .buffer_read\n"
                            "   jal copy_string\n"
                            // "   move $s0, $v0 #stockage de la copie dans $s0\n"
                            "   la $a0, %s # res\n "
                            "   move $a1, $v0 # val\n"
                            "   la $a2, .empty_string\n"
                            "   jal concat\n"
                            "",
                            tmp3,
                            DEFAULT_VAR_SIZE,
                            tmp3);
            free(tmp3);
    return i;
}


int gen_Tread(struct mips_file_t * f, struct quad q) {
    int i = 0;
    char* tmp1;
    char* tmp3;
    tmp1 = mips_qop(f, q.arg1); // idx
    tmp3 = mips_qop(f, q.res); // ident tab
    i = fprintf(f->sortie,
                          "   # read -> %s[%s]\n"
                            "   li $v0, 8\n"
                            "   la $a0, .buffer_read # @ buf\n"
                            "   la $a1, %i # buf size\n"
                            "   syscall # read_str\n"
                            "   la $a0, .buffer_read\n"
                            "   jal strlen\n"
                            "   subi $t0, $v0, 1\n"
                            "   la $t2, .buffer_read\n"
                            "   add $t0, $t0, $t2\n"
                            "   li $t1, 0\n"
                            "   sb $t1, ($t0) #suppresion \\n\n"
                            "   la $a0, .buffer_read\n"
                            "   jal copy_string\n"
                            "   move $s3, $v0 #stockage de la copie dans $s3\n"

                            "   # tab_set\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier # conversion index\n"
                            "   move $s0, $v0 # stockage de l'index dans $s0\n"
                            "   la $a0, .empty_string\n"
                            "   move $a1, $s0 # en cas d'erreur\n"
                            "   blt $s0, 0, erreur_out_of_range\n"
                            "   bge $s0, %i, erreur_out_of_range\n"

                            "   mul $s0, $s0, 4 # pour l'addresse dans le tableau\n"
                            "   la $t0, %s # addresse du tableau \n"
                            "   add $t0, $t0, $s0 # addresse de la case \n"
                            "   sw $s3, ($t0) # on stocke la copie\n"
                            "   # ----\n"
                            "",
                            tmp3, tmp1, 
                            DEFAULT_VAR_SIZE,
                            tmp1,
                            q.data.taille,
                            tmp3);
            free(tmp1);
            free(tmp3);
    return i;
}

/* int gen_write(struct mips_file_t * f, struct quad q) {
    int i = 0;
    char * tmp1;
    char * tmp2;
    char * tmp3;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.arg2);
    tmp3 = mips_qop(f, q.res);
    i = fprintf(f->sortie,
                            "   # write -> %s\n"
                            "   la $a0, %s\n"
                            "   li $v0, 4\n"
                            "   syscall\n"
                            "",
                            tmp3,
                            tmp1);
    free(tmp1);
    free(tmp2);
    free(tmp3);
    return i;
}
*/

int gen_set(struct mips_file_t * f, struct quad q) {
    int i = 0;
    char * tmp1;
    char * tmp3;
   tmp1 = mips_qop(f,q.arg1);
            tmp3 = mips_qop(f,q.res);
            i  = fprintf(f->sortie, 
                             "   la $a0, %s\n"
                             "   la $a1, %s\n" 
                             "   la $a2, .empty_string\n"
                             "   jal concat\n",
                             tmp3, tmp1);
            free(tmp1);
            free(tmp3);
    return i;
}

int gen_Tset(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp3;
    char* tmp2;
    int i = 0;
    tmp1 = mips_qop(f,q.arg1); // index tab
            tmp2 = mips_qop(f,q.arg2); // valeur 
            tmp3 = mips_qop(f,q.res); // ident tab
            i  = fprintf(f->sortie, 
                             "   # %s[%s] <- %s\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier # conversion index\n"
                             "   move $s0, $v0 # stockage\n"
                             "   la $a0, .empty_string\n"
                             "   move $a1, $s0 # en cas d'erreur\n"
                             "   blt $s0, 0, erreur_out_of_range\n"
                             "   bge $s0, %i, erreur_out_of_range\n"
                             "   mul $s0, $s0, 4 # pour l'addresse dans le tableau\n"
                             "   la $a0, %s # copy_string\n"
                             "   jal copy_string\n"
                             "   move $s2, $v0 # on stocke $s2 dans le tableau\n" 
                             "   la $t0, %s\n"
                             "   add $t0, $t0, $s0\n"
                             "   sw $s2, ($t0)\n"
                             "   # ----\n",
                             tmp3,tmp1,tmp2,
                             tmp1,
                             q.data.taille,
                             tmp2,
                             tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_Tget (struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i = 0;
    tmp1 = mips_qop(f,q.arg1); // ident tab
            tmp2 = mips_qop(f,q.arg2); // idx tab
            tmp3 = mips_qop(f,q.res); // ident à modifier
            i  = fprintf(f->sortie, 
                             "   # %s <- %s[%s]\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier # conversion index\n"
                             "   move $s0, $v0 # stockage\n"
                             "   la $a0, .empty_string\n"
                             "   move $a1, $s0 # en cas d'erreur\n"
                             "   blt $s0, 0, erreur_out_of_range\n"
                             "   bge $s0, %i, erreur_out_of_range\n"
                             "   mul $s0, $s0, 4 # pour l'addresse dans le tableau\n"
                             "   la $t0, %s\n"
                             "   add $t0, $t0, $s0\n"
                             "   # la $t1, %s\n"
                             "   lw $a1, ($t0)\n"
                             "   la $a0, %s\n"
                             "   la $a2, .empty_string\n"
                             "   jal concat\n"
                             "   # ----\n",
                             tmp3,tmp1,tmp2,
                             tmp2,
                             q.data.taille,
                             tmp1,
                             tmp1,
                             tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_Garg(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp3;
    int i = 0;

    tmp1 = mips_qop(f, q.arg1);
            tmp3 = mips_qop(f, q.res);
            int num = q.arg1.cst;
            i = fprintf(f->sortie,
                            "   # %s <- .argv[%i]\n"
                            "   li $s0, %i # chargement de l'idx\n"
                            "   la $a0, .empty_string\n"
                            "   move $a1, $s0 # en cas d'erreur\n"
                            "   blt $s0, 0, erreur_out_of_range\n"
                            "   lw $t0, .argc\n"
                            "   bge $s0, $t0, erreur_out_of_range\n"
                            "   mul $s0, $s0, 4 # pour l'addresse dans le tableau\n"
                            "   la $t0, .argv\n"
                            "   add $t0, $t0, $s0\n"
                            "   lw $a1, ($t0)\n"
                            "   la $a0, %s\n"
                            "   la $a2, .empty_string\n"
                            "   jal concat\n"
                            "   # ----\n"
                            "",
                            tmp3,num,
                            num,
                            tmp3
                            );
            free(tmp1);
            free(tmp3);
    return i;
}








int gen_concat(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i =0;
    tmp1 = mips_qop(f, q.arg1);
    tmp2 = mips_qop(f, q.arg2);
    tmp3 = mips_qop(f, q.res);
    i  = fprintf(f->sortie,
                    "   la $a0, %s\n"
                    "   la $a1, %s\n"
                    "   la $a2, %s\n"
                    "   jal concat\n",
                     tmp3, tmp1, tmp2);
            free(tmp1);
            free(tmp2);
            free(tmp3);

            return i;
}










int gen_exit (struct mips_file_t* f, struct quad q){
    char* tmp1;
    int i = 0;
    tmp1 = mips_qop(f, q.arg1);
            if(q.arg1.kind == TYPE_CST) {
                i = fprintf(f->sortie,
                                "   li $v0, 17\n"
                                "   li $a0, %s\n"
                                "   syscall #EXIT\n",
                                tmp1);
            }
            else {
                i = fprintf(f->sortie,
                                "   la $a0, %s\n"
                                "   jal convert_entier\n"
                                "   move $a0, $v0\n"
                                "   li $v0, 17\n"
                                "   syscall #EXIT\n",
                                tmp1);
            }
    return i;
}


int gen_ifge(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i = 0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   bge $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}



int gen_iflt(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i = 0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   blt $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}



int gen_ifeq(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i = 0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   beq $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_inv_signe(struct mips_file_t* f, struct quad q){
    char* tmp1;
    char* tmp3;
    int i = 0;
    tmp1 = mips_qop(f, q.arg1);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- (-1)*%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   mul $s0, $s0, -1\n"
                            "   move $a0, $s0\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp1, tmp3);
            free(tmp1);
            free(tmp3);
    return i;
}



int gen_ifdiff(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   bne $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_ifle(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   ble $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_ifgt(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i  = fprintf(f->sortie,
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   move $a1, $v0\n"
                             "   la $a0, %s\n"
                             "   jal convert_entier\n"
                             "   bgt $a1, $v0, %s\n",
                             tmp1, tmp2,tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);;
    return i;
}




int gen_mult(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- %s*%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s1, $v0\n"
                            "   mul $a0, $s0, $s1\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp2, tmp1, tmp2, tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_sub(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- %s-%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s1, $v0\n"
                            "   sub $a0, $s0, $s1\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp2, tmp1, tmp2, tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}


int gen_add(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- %s+%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s1, $v0\n"
                            "   add $a0, $s0, $s1\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp2, tmp1, tmp2, tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}





int gen_div(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- %s/%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s1, $v0\n"
                            "   div $s0, $s1\n"
                            "   mflo $a0\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp2, tmp1, tmp2, tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}



int gen_mod(struct mips_file_t* f, struct quad q)
{
    char* tmp1;
    char* tmp2;
    char* tmp3;
    int i=0;
    tmp1 = mips_qop(f, q.arg1);
            tmp2 = mips_qop(f, q.arg2);
            tmp3 = mips_qop(f, q.res);
            i = fprintf(f->sortie,
                            "\n"
                            "   # %s <- %s%%%s\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s0, $v0\n"
                            "   la $a0, %s\n"
                            "   jal convert_entier\n"
                            "   move $s1, $v0\n"
                            "   div $s0, $s1\n"
                            "   mfhi $a0 # reste\n"
                            "   la $a1, %s\n"
                            "   jal convert_string\n"
                            "   #---\n",
                            tmp3, tmp1, tmp2, tmp1, tmp2, tmp3);
            free(tmp1);
            free(tmp2);
            free(tmp3);
    return i;
}




int gen_quad(struct mips_file_t * f, struct quad q, int i) {
    int ret = 0;
    switch (q.kind) {
        case OP_ECHO:
            ret = gen_echo(f, q);
            break;
        case OP_IFEOP_STR:
            ret = gen_seq(f, q);
            break;
        case OP_IFDIFF_STR:
            ret = gen_ifdiff_str(f, q);
            break;
        case OP_IFNULL_STR:
            ret = gen_ifnull_str(f, q);
            break;
        case OP_IFNOTNULL_STR:
            ret = gen_ifnotnull_str(f, q);
            break;
        case OP_GOTO:
            ret = gen_goto(f, q);
            break;
        case OP_GOTO_UNKNOWN:
            ret = fprintf(f->sortie, "   b UNKNOWN\n");
            break;
        case OP_BIDON:
            ret = fprintf(f->sortie, "   BIDON\n");
            break;
        case OP_BIDON2:
            ret = fprintf(f->sortie, "   BIDON2\n");
            break;
        case OP_READ:
            ret = gen_read(f, q);
            break;
        case OP_READ_TAB:
            ret = gen_Tread(f, q);
            break;
        case OP_SET:
            ret = gen_set(f, q);
            break;
        case OP_SET_TAB:
            ret = gen_Tset(f, q);
            break;
        case OP_GET_TAB:
            ret = gen_Tget(f,q);
            break;
        case OP_ARG_GLOB:
            ret = gen_Garg(f,q);
            break;
        case OP_CONCAT:
            ret = gen_concat(f,q);
            break;
        case OP_EXIT:
            ret = gen_exit(f,q);
            break;
        case OP_DECLARE:
            f->pos_data += put_quad(f, f->pos_data, "   %s: .space %i\n",
                                       q.arg1.ident,DEFAULT_VAR_SIZE);

            f->pos_main += put_quad(f, f->pos_main,
                                       "# initialisation de %s\n"
                                       "   la $t0, %s\n"
                                       "   sb $t1, 0($t0)\n",
                                       q.arg1.ident, q.arg1.ident);
            break;
        case OP_DECLARE_TAB:
            f->pos_data += put_quad(f, f->pos_data, 
                                       "   .align 2\n"
                                       "   %s: .space %i # %i*4\n",
                                       q.arg1.ident,4*q.arg2.cst, q.arg2.cst);

            f->pos_main += put_quad(f, f->pos_main,
                                       "# initialisation du tableau %s\n"
                                       "   la $t0, %s\n"
                                       "",
                                       q.arg1.ident,
                                       q.arg1.ident);
            for(int i=0; i < q.arg2.cst; i++) {
                f->pos_main += put_quad(f, f->pos_main,
                                       "   sw $t2 ($t0)\n"
                                       "   addi $t0, $t0, 4\n"
                                       );
            }
            break;
        case OP_IFEQ:
            ret = gen_ifeq(f, q);
            break;
        case OP_IFDIFF:
            ret = gen_ifdiff(f,q);
            break;
        case OP_IFGT:
            ret = gen_ifgt(f,q);
            break;
        case OP_IFGE:
            ret = gen_ifge(f,q);
            break;
        case OP_IFLT:
            ret = gen_iflt(f,q);
            break;
        case OP_IFLE:
            ret = gen_ifle(f,q);
            break;
        case OP_INV_SIGNE:
            ret = gen_inv_signe(f,q);
            break;
        case OP_ADD:
            ret = gen_add(f,q);
            break;
        case OP_SUB:
            ret = gen_sub(f,q);
            break;
        case OP_MUL:
            ret = gen_mult(f,q);
            break;
        case OP_DIV:
            ret = gen_div(f,q);
            break;
        case OP_MOD:
            ret = gen_mod(f,q);
            break;
        default:
            ret = fprintf(f->sortie, "   UNKNOWN\n");
            fprintf(stderr, "quad n°%i non reconnu\n", i);
            break;
    }
    if(ret != 0)
        put_quad(f, ftell(f->sortie) - ret, "# quad %i\n", i);
    f->table_addr[i] = ftell(f->sortie) - ret;
    return 0;
}


int trad_mips(FILE * sortie,struct quad* quad_table, int nextquad){

    struct mips_file_t f;
    f.sortie = sortie;
    f.numstr = 0;
    f.numlab = 0;
    f.nbquad = nextquad;

    fprintf(sortie, ".data\n");
    fprintf(sortie, "   .empty_string: .asciiz \"\"\n");
    fprintf(sortie, "   .single_space: .asciiz \" \"\n");
    fprintf(sortie, "   .line_feed: .asciiz \"\\n\"\n");
    fprintf(sortie, "   .buffer_read: .space %i\n", DEFAULT_VAR_SIZE);
    fprintf(sortie, "   .align 2\n");
    fprintf(sortie, "   %s: .word 0\n", SYMB_LAST_FUNC_RETURN);
    fprintf(sortie, "   %s: .word 0\n", SYMB_ARGC);
    fprintf(sortie, "   %s: .space 1024 # 4*256 args maximum\n", SYMB_ARGV);
    fprintf(sortie, "   .arg_concat: .space 1024 # concat de tout les args\n");

    f.pos_data = ftell(sortie);

    fprintf(sortie, "\n.text\n");
    fprintf(sortie, ".globl main\n\nmain:\n");
    fprintf(sortie, 
            "# chargement argc et argv\n"
            ""
            "   move $s0, $a0\n"
            "   la $t0, .argc\n"
            "   sw $s0, ($t0) #.argc contient mtn le nmbre d'arg\n"
            "   move $s1, $a1 #$s1 contient l'adresse des arguments\n"
            "   la $t2, .argv #adresse dans .argv\n"
            "   li $t3, 0 # compteur de boucle\n"
            "   la $t4, .argc\n"
            "   lw $t4, ($t4) # arret de boucle\n"

            "   sub $sp, $sp, 20\n"
            "   sw $t0, 0($sp)\n"
            "   sw $t1, 4($sp)\n"
            "   sw $t2, 8($sp)\n"
            "   sw $t3, 12($sp)\n"
            "   sw $t4, 16($sp)\n"
            "   la $a0, .arg_concat\n"
            "   la $a1, .empty_string\n"
            "   la $a2, .empty_string\n"
            "   jal concat\n"
            "   lw $t0, 0($sp)\n"
            "   lw $t1, 4($sp)\n"
            "   lw $t2, 8($sp)\n"
            "   lw $t3, 12($sp)\n"
            "   lw $t4, 16($sp)\n"
            "   addi $sp, $sp, 20\n"

            "loop_print_arg:\n"
            "   beq $t3, $t4, loop_print_arg_end\n"
            "   lw $t0, ($s1) # chargement d'un argument\n"
            "   sw $t0, ($t2) # stockage dans .argv\n"
            "   addi $s1, $s1, 4 # avancer dans les arguments\n"
            ""
            "   sub $sp, $sp, 20\n"
            "   sw $t0, 0($sp)\n"
            "   sw $t1, 4($sp)\n"
            "   sw $t2, 8($sp)\n"
            "   sw $t3, 12($sp)\n"
            "   sw $t4, 16($sp)\n"
            "   la $a0, .arg_concat\n"
            "   la $a1, .arg_concat\n"
            "   lw $a2, -4($s1)\n"
            "   jal concat\n"
            "   la $a0, .arg_concat\n"
            "   la $a1, .arg_concat\n"
            "   la $a2, .single_space\n"
            "   jal concat\n"

            "   lw $t0, 0($sp)\n"
            "   lw $t1, 4($sp)\n"
            "   lw $t2, 8($sp)\n"
            "   lw $t3, 12($sp)\n"
            "   lw $t4, 16($sp)\n"
            "   addi $sp, $sp, 20\n"
            
            "   addi $t2, $t2, 4 # avancer dans .argv\n"

            "   addi $t3, $t3, 1 # compteur de boucle\n"
            "   b loop_print_arg\n"
            "loop_print_arg_end:\n"

            "   la $a0, .arg_concat\n"
            "   jal strlen\n"
            "   la $t0, .arg_concat\n"
            "   add $t0, $t0, $v0\n"
            "   sub $t0, $t0, 1\n"
            "   li $t1, 0\n"
            "   sb $t1, ($t0)\n"
            "");
    fprintf(sortie, "# initialisations des variables (premier byte à zéro)\n");
    fprintf(sortie, "   li $t1, 0\n");
    fprintf(sortie, "   la $t2, .empty_string\n");
    f.pos_main = ftell(sortie);
    f.pos_initiale_main = f.pos_main;
    fprintf(sortie,"# fin des initialisations ----\n\n");

    f.table_label = malloc(nextquad*sizeof(int));
    for (int i = 0; i < nextquad; i++)
    {
        f.table_label[i] = -1;
    }

    f.table_addr = malloc(nextquad*sizeof(int));
    for (int i = 0; i < nextquad; i++)
    {
        f.table_addr[i] = 0;
    }

    for(int i = 0; i < nextquad; i++) {
        struct quad q = quad_table[i];
        gen_quad(&f, q, i);
    }

    char *chaine = malloc(MAX_OP_SIZE * sizeof(char));
    for (int i = 0; i < nextquad; i++)
    {
        if (f.table_label[i] != -1)
        {
            put_quad(&f, f.table_addr[i], "_l%d:\n", f.table_label[i]);
        }
    }
    free(chaine);
    free(f.table_addr);
    free(f.table_label);
    return 0;
}
