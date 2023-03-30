.data
   .empty_string: .asciiz ""
   .single_space: .asciiz " "
   .line_feed: .asciiz "\n"
   .buffer_read: .space 1024
   .align 2
   .last_func_return: .word 0
   .argc: .word 0
   .argv: .space 1024 # 4*256 args maximum
   .arg_concat: .space 1024 # concat de tout les args
   .s0: .asciiz "début test_for\n"
   v: .space 1024
   .align 2
   .tmp_107_for_tab: .space 20 # 5*4
   .s1: .asciiz "0"
   .s2: .asciiz "a"
   .s3: .asciiz "1"
   .s4: .asciiz "b"
   .s5: .asciiz "2"
   .s6: .asciiz "c"
   .s7: .asciiz "3"
   .s8: .asciiz "d"
   .s9: .asciiz "4"
   .s10: .asciiz "e"
   .tmp_108_for_idx: .space 1024
   .s11: .asciiz "0"
   .s12: .asciiz "5"
   .s13: .asciiz "1"
   .s14: .asciiz "> "
   .s15: .asciiz "\n"
   .s16: .asciiz "----------\n"
   .align 2
   .tmp_109_for_tab: .space 20 # 5*4
   .s17: .asciiz "0"
   .s18: .asciiz "a"
   .s19: .asciiz "1"
   .s20: .asciiz "b"
   .s21: .asciiz "2"
   .s22: .asciiz "c"
   .s23: .asciiz "3"
   .s24: .asciiz "d"
   .s25: .asciiz "4"
   .s26: .asciiz "e"
   .tmp_110_for_idx: .space 1024
   .s27: .asciiz "0"
   .s28: .asciiz "5"
   .s29: .asciiz "1"
   v2: .space 1024
   .align 2
   .tmp_111_for_tab: .space 12 # 3*4
   .s30: .asciiz "0"
   .s31: .asciiz "1"
   .s32: .asciiz "1"
   .s33: .asciiz "2"
   .s34: .asciiz "2"
   .s35: .asciiz "3"
   .tmp_112_for_idx: .space 1024
   .s36: .asciiz "0"
   .s37: .asciiz "3"
   .s38: .asciiz "1"
   .s39: .asciiz "\n"
   .s40: .asciiz "-----------\n"
   .align 2
   .tmp_113_for_tab: .space 12 # 3*4
   .s41: .asciiz "0"
   .s42: .asciiz "a"
   .s43: .asciiz "1"
   .s44: .asciiz "b"
   .s45: .asciiz "2"
   .s46: .asciiz "c"
   .tmp_114_for_idx: .space 1024
   .s47: .asciiz "0"
   .s48: .asciiz "3"
   .s49: .asciiz "1"
   .align 2
   .tmp_115_for_tab: .space 12 # 3*4
   .s50: .asciiz "0"
   .s51: .asciiz "1"
   .s52: .asciiz "1"
   .s53: .asciiz "2"
   .s54: .asciiz "2"
   .s55: .asciiz "3"
   .tmp_116_for_idx: .space 1024
   .s56: .asciiz "0"
   .s57: .asciiz "3"
   .s58: .asciiz "1"
   v3: .space 1024
   .align 2
   .tmp_117_for_tab: .space 12 # 3*4
   .s59: .asciiz "0"
   .s60: .asciiz "+"
   .s61: .asciiz "1"
   .s62: .asciiz "-"
   .s63: .asciiz "2"
   .s64: .asciiz "*"
   .tmp_118_for_idx: .space 1024
   .s65: .asciiz "0"
   .s66: .asciiz "3"
   .s67: .asciiz "1"
   .tmp_119: .space 1024
   .tmp_120: .space 1024
   a: .space 1024
   .s68: .asciiz "\n"
   .s69: .asciiz "-------------\n"
   sum: .space 1024
   .s70: .asciiz "0"
   .s71: .asciiz "100"
   .align 2
   .tmp_121_for_tab: .space 12 # 3*4
   .s72: .asciiz "0"
   .s73: .asciiz "1"
   .s74: .asciiz "1"
   .s75: .asciiz "2"
   .s76: .asciiz "2"
   .s77: .asciiz "3"
   .tmp_122_for_idx: .space 1024
   .s78: .asciiz "0"
   .s79: .asciiz "3"
   .s80: .asciiz "1"
   .tmp_123: .space 1024
   .align 2
   .tmp_124_for_tab: .space 8 # 2*4
   .s81: .asciiz "0"
   .s82: .asciiz "10"
   .s83: .asciiz "1"
   .s84: .asciiz "15"
   .tmp_125_for_idx: .space 1024
   .s85: .asciiz "0"
   .s86: .asciiz "2"
   .s87: .asciiz "1"
   .tmp_126: .space 1024
   .s88: .asciiz "sum ="
   .s89: .asciiz "\n"
   .s90: .asciiz "sum ="
   .s91: .asciiz "\n"
   .s92: .asciiz "final sum ="
   .s93: .asciiz "\n"
   .s94: .asciiz "----------\n"
   .align 2
   .tmp_127_for_tab: .space 12 # 3*4
   .s95: .asciiz "0"
   .s96: .asciiz "mot1"
   .s97: .asciiz "1"
   .s98: .asciiz "mot2"
   .s99: .asciiz "2"
   .s100: .asciiz "mot3"
   .tmp_128_for_idx: .space 1024
   .s101: .asciiz "0"
   .s102: .asciiz "3"
   .s103: .asciiz "1"
   .s104: .asciiz "> "
   .s105: .asciiz "\n"
   .s106: .asciiz "-------\n"
   .s107: .asciiz "2"
   .align 2
   b: .space 12 # 3*4
   .tmp_129: .space 1024
   .s108: .asciiz "2"
   .tmp_130: .space 1024
   .s109: .asciiz "1"
   .tmp_131: .space 1024
   .align 2
   .tmp_132_for_tab: .space 16 # 4*4
   .s110: .asciiz "0"
   .s111: .asciiz "mot1"
   .s112: .asciiz "1"
   .s113: .asciiz "2"
   .s114: .asciiz "3"
   .tmp_133_for_idx: .space 1024
   .s115: .asciiz "0"
   .s116: .asciiz "4"
   .s117: .asciiz "1"
   .s118: .asciiz ">"
   .s119: .asciiz "\n"
   .s120: .asciiz "----------\n"
   .align 2
   tab: .space 20 # 5*4
   i: .space 1024
   .align 2
   .tmp_134_for_tab: .space 20 # 5*4
   .s121: .asciiz "0"
   .s122: .asciiz "0"
   .s123: .asciiz "1"
   .s124: .asciiz "1"
   .s125: .asciiz "2"
   .s126: .asciiz "2"
   .s127: .asciiz "3"
   .s128: .asciiz "3"
   .s129: .asciiz "4"
   .s130: .asciiz "4"
   .tmp_135_for_idx: .space 1024
   .s131: .asciiz "0"
   .s132: .asciiz "5"
   .s133: .asciiz "1"
   .tmp_136: .space 1024
   .s134: .asciiz "a"
   .tmp_137: .space 1024
   .s135: .asciiz "set> "
   .s136: .asciiz "\n"
   .align 2
   .tmp_138_for_tab: .space 20 # 5*4
   .tmp_139: .space 1024
   .s137: .asciiz "0"
   .s138: .asciiz "0"
   .s139: .asciiz "1"
   .s140: .asciiz "1"
   .s141: .asciiz "2"
   .s142: .asciiz "2"
   .s143: .asciiz "3"
   .s144: .asciiz "3"
   .s145: .asciiz "4"
   .s146: .asciiz "4"
   .tmp_140_for_idx: .space 1024
   .s147: .asciiz "0"
   .s148: .asciiz "5"
   .s149: .asciiz "1"
   .s150: .asciiz "get> "
   .s151: .asciiz "\n"
   .s152: .asciiz "fin\n"

.text
.globl main

main:
# chargement argc et argv
   move $s0, $a0
   la $t0, .argc
   sw $s0, ($t0) #.argc contient mtn le nmbre d'arg
   move $s1, $a1 #$s1 contient l'adresse des arguments
   la $t2, .argv #adresse dans .argv
   li $t3, 0 # compteur de boucle
   la $t4, .argc
   lw $t4, ($t4) # arret de boucle
   sub $sp, $sp, 20
   sw $t0, 0($sp)
   sw $t1, 4($sp)
   sw $t2, 8($sp)
   sw $t3, 12($sp)
   sw $t4, 16($sp)
   la $a0, .arg_concat
   la $a1, .empty_string
   la $a2, .empty_string
   jal concat
   lw $t0, 0($sp)
   lw $t1, 4($sp)
   lw $t2, 8($sp)
   lw $t3, 12($sp)
   lw $t4, 16($sp)
   addi $sp, $sp, 20
loop_print_arg:
   beq $t3, $t4, loop_print_arg_end
   lw $t0, ($s1) # chargement d'un argument
   sw $t0, ($t2) # stockage dans .argv
   addi $s1, $s1, 4 # avancer dans les arguments
   sub $sp, $sp, 20
   sw $t0, 0($sp)
   sw $t1, 4($sp)
   sw $t2, 8($sp)
   sw $t3, 12($sp)
   sw $t4, 16($sp)
   la $a0, .arg_concat
   la $a1, .arg_concat
   lw $a2, -4($s1)
   jal concat
   la $a0, .arg_concat
   la $a1, .arg_concat
   la $a2, .single_space
   jal concat
   lw $t0, 0($sp)
   lw $t1, 4($sp)
   lw $t2, 8($sp)
   lw $t3, 12($sp)
   lw $t4, 16($sp)
   addi $sp, $sp, 20
   addi $t2, $t2, 4 # avancer dans .argv
   addi $t3, $t3, 1 # compteur de boucle
   b loop_print_arg
loop_print_arg_end:
   la $a0, .arg_concat
   jal strlen
   la $t0, .arg_concat
   add $t0, $t0, $v0
   sub $t0, $t0, 1
   li $t1, 0
   sb $t1, ($t0)
# initialisations des variables (premier byte à zéro)
   li $t1, 0
   la $t2, .empty_string
# initialisation de v
   la $t0, v
   sb $t1, 0($t0)
# initialisation du tableau .tmp_107_for_tab
   la $t0, .tmp_107_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_108_for_idx
   la $t0, .tmp_108_for_idx
   sb $t1, 0($t0)
# initialisation du tableau .tmp_109_for_tab
   la $t0, .tmp_109_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_110_for_idx
   la $t0, .tmp_110_for_idx
   sb $t1, 0($t0)
# initialisation de v2
   la $t0, v2
   sb $t1, 0($t0)
# initialisation du tableau .tmp_111_for_tab
   la $t0, .tmp_111_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_112_for_idx
   la $t0, .tmp_112_for_idx
   sb $t1, 0($t0)
# initialisation du tableau .tmp_113_for_tab
   la $t0, .tmp_113_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_114_for_idx
   la $t0, .tmp_114_for_idx
   sb $t1, 0($t0)
# initialisation du tableau .tmp_115_for_tab
   la $t0, .tmp_115_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_116_for_idx
   la $t0, .tmp_116_for_idx
   sb $t1, 0($t0)
# initialisation de v3
   la $t0, v3
   sb $t1, 0($t0)
# initialisation du tableau .tmp_117_for_tab
   la $t0, .tmp_117_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_118_for_idx
   la $t0, .tmp_118_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_119
   la $t0, .tmp_119
   sb $t1, 0($t0)
# initialisation de .tmp_120
   la $t0, .tmp_120
   sb $t1, 0($t0)
# initialisation de a
   la $t0, a
   sb $t1, 0($t0)
# initialisation de sum
   la $t0, sum
   sb $t1, 0($t0)
# initialisation du tableau .tmp_121_for_tab
   la $t0, .tmp_121_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_122_for_idx
   la $t0, .tmp_122_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_123
   la $t0, .tmp_123
   sb $t1, 0($t0)
# initialisation du tableau .tmp_124_for_tab
   la $t0, .tmp_124_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_125_for_idx
   la $t0, .tmp_125_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_126
   la $t0, .tmp_126
   sb $t1, 0($t0)
# initialisation du tableau .tmp_127_for_tab
   la $t0, .tmp_127_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_128_for_idx
   la $t0, .tmp_128_for_idx
   sb $t1, 0($t0)
# initialisation du tableau b
   la $t0, b
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_129
   la $t0, .tmp_129
   sb $t1, 0($t0)
# initialisation de .tmp_130
   la $t0, .tmp_130
   sb $t1, 0($t0)
# initialisation de .tmp_131
   la $t0, .tmp_131
   sb $t1, 0($t0)
# initialisation du tableau .tmp_132_for_tab
   la $t0, .tmp_132_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_133_for_idx
   la $t0, .tmp_133_for_idx
   sb $t1, 0($t0)
# initialisation du tableau tab
   la $t0, tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation du tableau .tmp_134_for_tab
   la $t0, .tmp_134_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_135_for_idx
   la $t0, .tmp_135_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_136
   la $t0, .tmp_136
   sb $t1, 0($t0)
# initialisation de .tmp_137
   la $t0, .tmp_137
   sb $t1, 0($t0)
# initialisation du tableau .tmp_138_for_tab
   la $t0, .tmp_138_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_139
   la $t0, .tmp_139
   sb $t1, 0($t0)
# initialisation de .tmp_140_for_idx
   la $t0, .tmp_140_for_idx
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 3
   # .s2[.tmp_107_for_tab] <- .s1
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s1 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s2
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 4
   # .s4[.tmp_107_for_tab] <- .s3
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s3 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s4
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 5
   # .s6[.tmp_107_for_tab] <- .s5
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s5 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s6
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 6
   # .s8[.tmp_107_for_tab] <- .s7
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s7 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s8
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 7
   # .s10[.tmp_107_for_tab] <- .s9
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s9 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s10
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 9
   la $a0, .s11
   la $a1, .tmp_108_for_idx
   la $a2, .empty_string
   jal concat
# quad 10
_l2:
   la $a0, .tmp_108_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s12
   jal convert_entier
   blt $a1, $v0, _l0
# quad 11
   b _l1
# quad 12
_l0:
   # .tmp_108_for_idx <- v[.tmp_107_for_tab]
   la $a0, .tmp_107_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_108_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 13

   # .s13 <- .tmp_108_for_idx+.tmp_108_for_idx
   la $a0, .tmp_108_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_108_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s13
   jal convert_string
   #---
# quad 14
   la $a0, .s14
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 15
   la $a0, v
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 16
   la $a0, .s15
   li $v0, 4
   syscall #print_str
# quad 17
   b _l2
# quad 18
_l1:
   la $a0, .s16
   li $v0, 4
   syscall #print_str
# quad 20
   # .s18[.tmp_109_for_tab] <- .s17
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s17 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s18
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 21
   # .s20[.tmp_109_for_tab] <- .s19
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s19 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s20
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 22
   # .s22[.tmp_109_for_tab] <- .s21
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s21 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s22
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 23
   # .s24[.tmp_109_for_tab] <- .s23
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s23 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s24
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 24
   # .s26[.tmp_109_for_tab] <- .s25
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s25 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s26
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 26
   la $a0, .s27
   la $a1, .tmp_110_for_idx
   la $a2, .empty_string
   jal concat
# quad 27
_l8:
   la $a0, .tmp_110_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s28
   jal convert_entier
   blt $a1, $v0, _l3
# quad 28
   b _l4
# quad 29
_l3:
   # .tmp_110_for_idx <- v[.tmp_109_for_tab]
   la $a0, .tmp_109_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_110_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 30

   # .s29 <- .tmp_110_for_idx+.tmp_110_for_idx
   la $a0, .tmp_110_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_110_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s29
   jal convert_string
   #---
# quad 33
   # .s31[.tmp_111_for_tab] <- .s30
   la $a0, .tmp_111_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s30 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s31
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 34
   # .s33[.tmp_111_for_tab] <- .s32
   la $a0, .tmp_111_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s32 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s33
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 35
   # .s35[.tmp_111_for_tab] <- .s34
   la $a0, .tmp_111_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s34 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s35
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 37
   la $a0, .s36
   la $a1, .tmp_112_for_idx
   la $a2, .empty_string
   jal concat
# quad 38
_l7:
   la $a0, .tmp_112_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s37
   jal convert_entier
   blt $a1, $v0, _l5
# quad 39
   b _l6
# quad 40
_l5:
   # .tmp_112_for_idx <- v2[.tmp_111_for_tab]
   la $a0, .tmp_111_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v2
   add $t0, $t0, $s0
   # la $t1, v2
   lw $a1, ($t0)
   la $a0, .tmp_112_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 41

   # .s38 <- .tmp_112_for_idx+.tmp_112_for_idx
   la $a0, .tmp_112_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_112_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s38
   jal convert_string
   #---
# quad 42
   la $a0, v
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 43
   la $a0, v2
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 44
   la $a0, .s39
   li $v0, 4
   syscall #print_str
# quad 45
   b _l7
# quad 46
_l6:
   b _l8
# quad 47
_l4:
   la $a0, .s40
   li $v0, 4
   syscall #print_str
# quad 49
   # .s42[.tmp_113_for_tab] <- .s41
   la $a0, .tmp_113_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s41 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s42
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 50
   # .s44[.tmp_113_for_tab] <- .s43
   la $a0, .tmp_113_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s43 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s44
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 51
   # .s46[.tmp_113_for_tab] <- .s45
   la $a0, .tmp_113_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s45 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s46
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 53
   la $a0, .s47
   la $a1, .tmp_114_for_idx
   la $a2, .empty_string
   jal concat
# quad 54
_l17:
   la $a0, .tmp_114_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s48
   jal convert_entier
   blt $a1, $v0, _l9
# quad 55
   b _l10
# quad 56
_l9:
   # .tmp_114_for_idx <- v[.tmp_113_for_tab]
   la $a0, .tmp_113_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_114_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 57

   # .s49 <- .tmp_114_for_idx+.tmp_114_for_idx
   la $a0, .tmp_114_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_114_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s49
   jal convert_string
   #---
# quad 59
   # .s51[.tmp_115_for_tab] <- .s50
   la $a0, .tmp_115_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s50 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s51
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 60
   # .s53[.tmp_115_for_tab] <- .s52
   la $a0, .tmp_115_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s52 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s53
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 61
   # .s55[.tmp_115_for_tab] <- .s54
   la $a0, .tmp_115_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s54 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s55
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 63
   la $a0, .s56
   la $a1, .tmp_116_for_idx
   la $a2, .empty_string
   jal concat
# quad 64
_l16:
   la $a0, .tmp_116_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s57
   jal convert_entier
   blt $a1, $v0, _l11
# quad 65
   b _l12
# quad 66
_l11:
   # .tmp_116_for_idx <- v2[.tmp_115_for_tab]
   la $a0, .tmp_115_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v2
   add $t0, $t0, $s0
   # la $t1, v2
   lw $a1, ($t0)
   la $a0, .tmp_116_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 67

   # .s58 <- .tmp_116_for_idx+.tmp_116_for_idx
   la $a0, .tmp_116_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_116_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s58
   jal convert_string
   #---
# quad 70
   # .s60[.tmp_117_for_tab] <- .s59
   la $a0, .tmp_117_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s59 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s60
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 71
   # .s62[.tmp_117_for_tab] <- .s61
   la $a0, .tmp_117_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s61 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s62
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 72
   # .s64[.tmp_117_for_tab] <- .s63
   la $a0, .tmp_117_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s63 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s64
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 74
   la $a0, .s65
   la $a1, .tmp_118_for_idx
   la $a2, .empty_string
   jal concat
# quad 75
_l15:
   la $a0, .tmp_118_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s66
   jal convert_entier
   blt $a1, $v0, _l13
# quad 76
   b _l14
# quad 77
_l13:
   # .tmp_118_for_idx <- v3[.tmp_117_for_tab]
   la $a0, .tmp_117_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v3
   add $t0, $t0, $s0
   # la $t1, v3
   lw $a1, ($t0)
   la $a0, .tmp_118_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 78

   # .s67 <- .tmp_118_for_idx+.tmp_118_for_idx
   la $a0, .tmp_118_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_118_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s67
   jal convert_string
   #---
# quad 80
   la $a0, v2
   la $a1, .tmp_119
   la $a2, v
   jal concat
# quad 82
   la $a0, v3
   la $a1, .tmp_120
   la $a2, .tmp_119
   jal concat
# quad 84
   la $a0, .tmp_120
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 85
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 86
   la $a0, .s68
   li $v0, 4
   syscall #print_str
# quad 87
   b _l15
# quad 88
_l14:
   b _l16
# quad 89
_l12:
   b _l17
# quad 90
_l10:
   la $a0, .s69
   li $v0, 4
   syscall #print_str
# quad 92
   la $a0, .s70
   la $a1, sum
   la $a2, .empty_string
   jal concat
# quad 93
_l26:
   la $a0, sum
   jal convert_entier
   move $a1, $v0
   la $a0, .s71
   jal convert_entier
   blt $a1, $v0, _l18
# quad 94
   b _l19
_l18:
# quad 96
   # .s73[.tmp_121_for_tab] <- .s72
   la $a0, .tmp_121_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s72 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s73
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 97
   # .s75[.tmp_121_for_tab] <- .s74
   la $a0, .tmp_121_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s74 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s75
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 98
   # .s77[.tmp_121_for_tab] <- .s76
   la $a0, .tmp_121_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s76 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s77
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 100
   la $a0, .s78
   la $a1, .tmp_122_for_idx
   la $a2, .empty_string
   jal concat
# quad 101
_l25:
   la $a0, .tmp_122_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s79
   jal convert_entier
   blt $a1, $v0, _l20
# quad 102
   b _l21
# quad 103
_l20:
   # .tmp_122_for_idx <- v[.tmp_121_for_tab]
   la $a0, .tmp_121_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_122_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 104

   # .s80 <- .tmp_122_for_idx+.tmp_122_for_idx
   la $a0, .tmp_122_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_122_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s80
   jal convert_string
   #---
# quad 106

   # v <- .tmp_123+sum
   la $a0, .tmp_123
   jal convert_entier
   move $s0, $v0
   la $a0, sum
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, v
   jal convert_string
   #---
# quad 107
   la $a0, .tmp_123
   la $a1, sum
   la $a2, .empty_string
   jal concat
# quad 109
   # .s82[.tmp_124_for_tab] <- .s81
   la $a0, .tmp_124_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 2, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s81 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s82
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 110
   # .s84[.tmp_124_for_tab] <- .s83
   la $a0, .tmp_124_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 2, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s83 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s84
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 112
   la $a0, .s85
   la $a1, .tmp_125_for_idx
   la $a2, .empty_string
   jal concat
# quad 113
_l24:
   la $a0, .tmp_125_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s86
   jal convert_entier
   blt $a1, $v0, _l22
# quad 114
   b _l23
# quad 115
_l22:
   # .tmp_125_for_idx <- v2[.tmp_124_for_tab]
   la $a0, .tmp_124_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 2, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v2
   add $t0, $t0, $s0
   # la $t1, v2
   lw $a1, ($t0)
   la $a0, .tmp_125_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 116

   # .s87 <- .tmp_125_for_idx+.tmp_125_for_idx
   la $a0, .tmp_125_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_125_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s87
   jal convert_string
   #---
# quad 118

   # v2 <- .tmp_126+sum
   la $a0, .tmp_126
   jal convert_entier
   move $s0, $v0
   la $a0, sum
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, v2
   jal convert_string
   #---
# quad 119
   la $a0, .tmp_126
   la $a1, sum
   la $a2, .empty_string
   jal concat
# quad 120
   la $a0, .s88
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 121
   la $a0, sum
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 122
   la $a0, .s89
   li $v0, 4
   syscall #print_str
# quad 123
   b _l24
# quad 124
_l23:
   b _l25
# quad 125
_l21:
   la $a0, .s90
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 126
   la $a0, sum
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 127
   la $a0, .s91
   li $v0, 4
   syscall #print_str
# quad 128
   b _l26
# quad 129
_l19:
   la $a0, .s92
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 130
   la $a0, sum
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 131
   la $a0, .s93
   li $v0, 4
   syscall #print_str
# quad 132
   la $a0, .s94
   li $v0, 4
   syscall #print_str
# quad 134
   # .s96[.tmp_127_for_tab] <- .s95
   la $a0, .tmp_127_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s95 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s96
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 135
   # .s98[.tmp_127_for_tab] <- .s97
   la $a0, .tmp_127_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s97 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s98
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 136
   # .s100[.tmp_127_for_tab] <- .s99
   la $a0, .tmp_127_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s99 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s100
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 138
   la $a0, .s101
   la $a1, .tmp_128_for_idx
   la $a2, .empty_string
   jal concat
# quad 139
_l29:
   la $a0, .tmp_128_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s102
   jal convert_entier
   blt $a1, $v0, _l27
# quad 140
   b _l28
# quad 141
_l27:
   # .tmp_128_for_idx <- v[.tmp_127_for_tab]
   la $a0, .tmp_127_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_128_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 142

   # .s103 <- .tmp_128_for_idx+.tmp_128_for_idx
   la $a0, .tmp_128_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_128_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s103
   jal convert_string
   #---
# quad 143
   la $a0, .s104
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 144
   la $a0, v
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 145
   la $a0, .s105
   li $v0, 4
   syscall #print_str
# quad 146
   b _l29
# quad 147
_l28:
   la $a0, .s106
   li $v0, 4
   syscall #print_str
# quad 148
   la $a0, .s107
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 151

   # .s108 <- .tmp_129+a
   la $a0, .tmp_129
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s108
   jal convert_string
   #---
# quad 153

   # .s109 <- .tmp_130-.tmp_129
   la $a0, .tmp_130
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_129
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, .s109
   jal convert_string
   #---
# quad 155
   # a <- .tmp_131[b]
   la $a0, b
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_131
   add $t0, $t0, $s0
   # la $t1, .tmp_131
   lw $a1, ($t0)
   la $a0, a
   la $a2, .empty_string
   jal concat
   # ----
# quad 157
   # .s111[.tmp_132_for_tab] <- .s110
   la $a0, .tmp_132_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s110 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s111
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 158
   # a[.tmp_132_for_tab] <- .s112
   la $a0, .tmp_132_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s112 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, a
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 159
   # .tmp_130[.tmp_132_for_tab] <- .s113
   la $a0, .tmp_132_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s113 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_130
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 160
   # .tmp_131[.tmp_132_for_tab] <- .s114
   la $a0, .tmp_132_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s114 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_131
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 162
   la $a0, .s115
   la $a1, .tmp_133_for_idx
   la $a2, .empty_string
   jal concat
# quad 163
_l32:
   la $a0, .tmp_133_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s116
   jal convert_entier
   blt $a1, $v0, _l30
# quad 164
   b _l31
# quad 165
_l30:
   # .tmp_133_for_idx <- v[.tmp_132_for_tab]
   la $a0, .tmp_132_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_133_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 166

   # .s117 <- .tmp_133_for_idx+.tmp_133_for_idx
   la $a0, .tmp_133_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_133_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s117
   jal convert_string
   #---
# quad 167
   la $a0, .s118
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 168
   la $a0, v
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 169
   la $a0, .s119
   li $v0, 4
   syscall #print_str
# quad 170
   b _l32
# quad 171
_l31:
   la $a0, .s120
   li $v0, 4
   syscall #print_str
# quad 175
   # .s122[.tmp_134_for_tab] <- .s121
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s121 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s122
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 176
   # .s124[.tmp_134_for_tab] <- .s123
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s123 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s124
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 177
   # .s126[.tmp_134_for_tab] <- .s125
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s125 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s126
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 178
   # .s128[.tmp_134_for_tab] <- .s127
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s127 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s128
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 179
   # .s130[.tmp_134_for_tab] <- .s129
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s129 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s130
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 181
   la $a0, .s131
   la $a1, .tmp_135_for_idx
   la $a2, .empty_string
   jal concat
# quad 182
_l35:
   la $a0, .tmp_135_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s132
   jal convert_entier
   blt $a1, $v0, _l33
# quad 183
   b _l34
# quad 184
_l33:
   # .tmp_135_for_idx <- i[.tmp_134_for_tab]
   la $a0, .tmp_134_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, i
   add $t0, $t0, $s0
   # la $t1, i
   lw $a1, ($t0)
   la $a0, .tmp_135_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 185

   # .s133 <- .tmp_135_for_idx+.tmp_135_for_idx
   la $a0, .tmp_135_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_135_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s133
   jal convert_string
   #---
# quad 187
   la $a0, i
   la $a1, .tmp_136
   la $a2, .s134
   jal concat
# quad 188
   # .tmp_136[tab] <- i
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, i # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_136
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 190
   # i <- .tmp_137[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_137
   add $t0, $t0, $s0
   # la $t1, .tmp_137
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 191
   la $a0, .s135
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 192
   la $a0, .tmp_137
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 193
   la $a0, .s136
   li $v0, 4
   syscall #print_str
# quad 194
   b _l35
_l34:
# quad 197
   # .s137 <- .tmp_139[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   # la $t1, .tmp_139
   lw $a1, ($t0)
   la $a0, .s137
   la $a2, .empty_string
   jal concat
   # ----
# quad 198
   # .tmp_139[.tmp_138_for_tab] <- .s138
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s138 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 199
   # .s139 <- .tmp_139[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   # la $t1, .tmp_139
   lw $a1, ($t0)
   la $a0, .s139
   la $a2, .empty_string
   jal concat
   # ----
# quad 200
   # .tmp_139[.tmp_138_for_tab] <- .s140
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s140 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 201
   # .s141 <- .tmp_139[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   # la $t1, .tmp_139
   lw $a1, ($t0)
   la $a0, .s141
   la $a2, .empty_string
   jal concat
   # ----
# quad 202
   # .tmp_139[.tmp_138_for_tab] <- .s142
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s142 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 203
   # .s143 <- .tmp_139[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   # la $t1, .tmp_139
   lw $a1, ($t0)
   la $a0, .s143
   la $a2, .empty_string
   jal concat
   # ----
# quad 204
   # .tmp_139[.tmp_138_for_tab] <- .s144
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s144 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 205
   # .s145 <- .tmp_139[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   # la $t1, .tmp_139
   lw $a1, ($t0)
   la $a0, .s145
   la $a2, .empty_string
   jal concat
   # ----
# quad 206
   # .tmp_139[.tmp_138_for_tab] <- .s146
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s146 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_139
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 208
   la $a0, .s147
   la $a1, .tmp_140_for_idx
   la $a2, .empty_string
   jal concat
# quad 209
_l38:
   la $a0, .tmp_140_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s148
   jal convert_entier
   blt $a1, $v0, _l36
# quad 210
   b _l37
# quad 211
_l36:
   # .tmp_140_for_idx <- v[.tmp_138_for_tab]
   la $a0, .tmp_138_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, v
   add $t0, $t0, $s0
   # la $t1, v
   lw $a1, ($t0)
   la $a0, .tmp_140_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 212

   # .s149 <- .tmp_140_for_idx+.tmp_140_for_idx
   la $a0, .tmp_140_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_140_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s149
   jal convert_string
   #---
# quad 213
   la $a0, .s150
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 214
   la $a0, v
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 215
   la $a0, .s151
   li $v0, 4
   syscall #print_str
# quad 216
   b _l38
# quad 217
_l37:
   la $a0, .s152
   li $v0, 4
   syscall #print_str
# quad 218
   li $v0, 17
   li $a0, 0
   syscall #EXIT
