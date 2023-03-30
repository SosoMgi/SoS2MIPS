#ifndef MIPS_H
#define MIPS_H

#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "quads.h"

#define MAX_OP_SIZE 128
#define MAX_PROG_SIZE 4096
#define MAX_INST_SIZE 128
#define MAX_MIPS_ID 32
#define DEFAULT_VAR_SIZE 1024


#ifndef SYMB_LAST_FUNC_RETURN
#define SYMB_LAST_FUNC_RETURN ".last_func_return"
#endif
#ifndef SYMB_ARGC
#define SYMB_ARGC ".argc"
#endif
#ifndef SYMB_ARGV
#define SYMB_ARGV ".argv"
#endif


enum sys_call {
  sc_print_int = 1,    // $a0 = integer
  sc_print_float = 2,  // $f12 = float ($a0...$a3)
  sc_print_double = 3, // $f12 = double ($a0...$a3)
  sc_print_string = 4, // $a0 = string address

  sc_read_int = 5,    // -> $v0 = integer
  sc_read_float = 6,  // -> $f0 = float ($v0)
  sc_read_double = 7, // -> $f0 = double ($v0)
  sc_read_string = 8, // $a0 = string address, $a1 = max length

  sc_sbrk = 9, // $a0 = length -> $v0 = address

  sc_exit = 10,

  sc_print_character = 11, // $a0 = character
  sc_read_character = 12,  // -> $v0 = character

  sc_open = 13,  // $a0 = filename, $a1 = flags, $a2 = mode -> $v0 = fd
  sc_read = 14,  // $a0 = fd, $a1 = buf, $a2 = count -> $v0 = bytes read
  sc_write = 15, // $a0 = fd, $a1 = buf, $a2 = count -> $v0 = bytes written
  sc_close = 16, // $a0 = fd -> $v0 = 0 on success, -1 on error

  sc_exit2 = 17, // $a0 = exit code
};

enum reg {
  reg_zero = 0, // the hardwritten value 0
  reg_at = 1,   // reserved for assembler

  reg_v0 = 2, // expression evaluation and results of a function
  reg_v1 = 3, // expression evaluation and results of a function

  reg_a0 = 4, // function arguments 1
  reg_a1 = 5, // function arguments 2
  reg_a2 = 6, // function arguments 3
  reg_a3 = 7, // function arguments 4

  reg_t0 = 8,  // temporary registers (not preserved across function calls)
  reg_t1 = 9,  // temporary registers (not preserved across function calls)
  reg_t2 = 10, // temporary registers (not preserved across function calls)
  reg_t3 = 11, // temporary registers (not preserved across function calls)
  reg_t4 = 12, // temporary registers (not preserved across function calls)
  reg_t5 = 13, // temporary registers (not preserved across function calls)
  reg_t6 = 14, // temporary registers (not preserved across function calls)
  reg_t7 = 15, // temporary registers (not preserved across function calls)

  reg_s0 = 16, // saved registers (preserved across function calls)
  reg_s1 = 17, // saved registers (preserved across function calls)
  reg_s2 = 18, // saved registers (preserved across function calls)
  reg_s3 = 19, // saved registers (preserved across function calls)
  reg_s4 = 20, // saved registers (preserved across function calls)
  reg_s5 = 21, // saved registers (preserved across function calls)
  reg_s6 = 22, // saved registers (preserved across function calls)
  reg_s7 = 23, // saved registers (preserved across function calls)

  reg_t8 = 24, // temporary registers (not preserved across function calls)
  reg_t9 = 25, // temporary registers (not preserved across function calls)

  reg_k0 = 26, // reserved for OS kernel
  reg_k1 = 27, // reserved for OS kernel

  reg_gp = 28, // global pointer
  reg_sp = 29, // stack pointer
  reg_fp = 30, // frame pointer
  reg_ra = 31, // return address
};

// un objet pour contenir les infos du fichier
// (au lieu de passer 15 args à chaque fois)
struct mips_file_t {
    FILE * sortie;
    int pos_data;
    int pos_main;
    int pos_initiale_main;
    int * table_label;
    int * table_addr;
    int numstr;
    int numlab;
    int nbquad;
};

#define VAR_PREFIX "_uvar_"
#define TMP_PREFIX "__"
#define LOOP_LABEL_PREFIX "__loop"
#define ASSIGN_LABEL_PREFIX "__assign"
#define DEFAULT_LABEL_PREFIX "__label"
#define FUN_LABEL_PREFIX "__func"
#define PAR_PREFIX "__par"

/**
 * Syscall mips constants
 */
enum syscall_svc_t {
	SYS_PRINT_INT	 = 1,
	SYS_PRINT_FLOAT	 = 2,
	SYS_PRINT_DOUBLE = 3,
	SYS_PRINT_STR	 = 4,
	SYS_READ_INT	 = 5,
	SYS_READ_FLOAT	 = 6,
	SYS_READ_DOUBLE	 = 7,
	SYS_READ_STR	 = 8,
	SYS_SBRK		 = 9,
	SYS_EXIT		 = 10,
	SYS_PRINT_CHAR	 = 11,
	SYS_READ_CHAR	 = 12,
	SYS_OPEN		 = 13,
	SYS_READ		 = 14,
	SYS_WRITE		 = 15,
	SYS_CLOSE		 = 16,
	SYS_EXIT2		 = 17
};

enum mips_helper_op_t {
	END = 0,
	// Data Formats
	IMM = 1, 
	SYM = 2, 
			 
	REG = 3, 
			 
	IMM_STR = 4, 
	QLABEL	= 5, 
	
	ADDR = 6,
    CST = 7,
	COMMENT = 8, 
	SB = 9,
	
	LI		   = 10,
	LW		   = 11,
	LA		   = 12,
	SW		   = 13,
	MOVE	   = 14,
	INSTR_ADD  = 15,
	INSTR_ADDI = 16,
	INSTR_SUB  = 17,
	INSTR_AND  = 18,
	INSTR_ANDI = 19,
	INSTR_NOR  = 20,
	INSTR_OR   = 21,
	INSTR_ORI  = 22,
	INSTR_XOR  = 23,
	INSTR_XORI = 24,
	INSTR_DIV  = 25,
	INSTR_MULT = 26,
	BRANCH	   = 27,
	BEQ		   = 28,
	JAL		   = 29,
	JR		   = 30,
	BLT		   = 31,
	BGT		   = 32,
	BLE		   = 33,
	BGE		   = 34,
	BNE		   = 35,
	// Char
	TAB	  = 100, // Print tab char
	COLON = 101, // Print colon char
	// Other
	SYSCALL = 110, // Print syscall op
	RAW		= 111, // Print next arg as raw string
	LOAD	= 112

};

#define FIRST_INSTR_IDX LI
#define LAST_INSTR_IDX SYSCALL - LI

#define WS 4 // Word size


unsigned int next_stack_offset();
void grow_stack_size();
unsigned int cur_stack_size();



// écrit à la position demandée, et renvois le nombre d'octets écrit
int put_quad(struct mips_file_t * f, int position, char * chaine, ...);

char * new_string(int *numstr);

// Fonction de traduction de quadop en code assembleur MIPS
char * gen_quadop(struct mips_file_t * f, struct sym_t qo);

// Fonction de traduction de quad en code assembleur MIPS
int gen_quad(struct mips_file_t * f, struct quad q, int i);

int gen_seq(struct mips_file_t * f, struct quad q);
int gen_exit(struct mips_file_t* f, struct quad q);
int gen_ifdiff_str(struct mips_file_t * f, struct quad q);
int gen_ifdiff(struct mips_file_t * f, struct quad q);
int gen_ifeq(struct mips_file_t * f, struct quad q);
int gen_ifsup(struct mips_file_t * f, struct quad q);


int trad_mips(FILE * sortie,struct quad* quad_table, int nextquad);


#endif