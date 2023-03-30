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
   .s0: .asciiz "début test_tab\n"
   .align 2
   tableau: .space 20 # 5*4
   taille_tab: .space 1024
   .s1: .asciiz "5"
   .tmp_141: .space 1024
   .s2: .asciiz "1"
   i: .space 1024
   .s3: .asciiz "0"
   .tmp_142: .space 1024
   .s4: .asciiz "1"
   .tmp_143: .space 1024
   a: .space 1024
   .tmp_144: .space 1024
   .s5: .asciiz "2"
   .tmp_145: .space 1024
   .s6: .asciiz "1"
   .s7: .asciiz "tableau : \n"
   .s8: .asciiz "0"
   .tmp_146: .space 1024
   .s9: .asciiz " : "
   .s10: .asciiz "\n"
   .tmp_147: .space 1024
   .s11: .asciiz "1"
   .s12: .asciiz "-----------\n"
   .s13: .asciiz "et en une ligne : "
   .tmp_148: .space 1024
   .s14: .asciiz "0"
   .s15: .asciiz "1"
   .s16: .asciiz "2"
   .s17: .asciiz "3"
   .s18: .asciiz "4"
   .s19: .asciiz "\n"
   .s20: .asciiz "------------\n"
   .tmp_149: .space 1024
   .s21: .asciiz "2"
   .tmp_150: .space 1024
   .s22: .asciiz "element du milieu : "
   .s23: .asciiz "\n"
   .s24: .asciiz "\nfin\n"

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
# initialisation du tableau tableau
   la $t0, tableau
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
# initialisation de taille_tab
   la $t0, taille_tab
   sb $t1, 0($t0)
# initialisation de .tmp_141
   la $t0, .tmp_141
   sb $t1, 0($t0)
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation de .tmp_142
   la $t0, .tmp_142
   sb $t1, 0($t0)
# initialisation de .tmp_143
   la $t0, .tmp_143
   sb $t1, 0($t0)
# initialisation de a
   la $t0, a
   sb $t1, 0($t0)
# initialisation de .tmp_144
   la $t0, .tmp_144
   sb $t1, 0($t0)
# initialisation de .tmp_145
   la $t0, .tmp_145
   sb $t1, 0($t0)
# initialisation de .tmp_146
   la $t0, .tmp_146
   sb $t1, 0($t0)
# initialisation de .tmp_147
   la $t0, .tmp_147
   sb $t1, 0($t0)
# initialisation de .tmp_148
   la $t0, .tmp_148
   sb $t1, 0($t0)
# initialisation de .tmp_149
   la $t0, .tmp_149
   sb $t1, 0($t0)
# initialisation de .tmp_150
   la $t0, .tmp_150
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 3
   la $a0, .s1
   la $a1, taille_tab
   la $a2, .empty_string
   jal concat
# quad 5

   # .s2 <- .tmp_141-taille_tab
   la $a0, .tmp_141
   jal convert_entier
   move $s0, $v0
   la $a0, taille_tab
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, .s2
   jal convert_string
   #---
# quad 7
   la $a0, .tmp_141
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 8
_l2:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, .s3
   jal convert_entier
   bge $a1, $v0, _l0
# quad 9
   b _l1
_l0:
# quad 11

   # .s4 <- .tmp_142-taille_tab
   la $a0, .tmp_142
   jal convert_entier
   move $s0, $v0
   la $a0, taille_tab
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, .s4
   jal convert_string
   #---
# quad 13

   # i <- .tmp_143-.tmp_142
   la $a0, .tmp_143
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_142
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, i
   jal convert_string
   #---
# quad 15
   la $a0, .tmp_143
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 17

   # i <- .tmp_144*.s5
   la $a0, .tmp_144
   jal convert_entier
   move $s0, $v0
   la $a0, .s5
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, i
   jal convert_string
   #---
# quad 18
   # .tmp_144[tableau] <- a
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, a # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_144
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 20

   # .s6 <- .tmp_145-i
   la $a0, .tmp_145
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, .s6
   jal convert_string
   #---
# quad 21
   la $a0, .tmp_145
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 22
   b _l2
# quad 23
_l1:
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 24
   la $a0, .s8
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 25
_l5:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, taille_tab
   jal convert_entier
   blt $a1, $v0, _l3
# quad 26
   b _l4
_l3:
# quad 28
   # i <- .tmp_146[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_146
   add $t0, $t0, $s0
   # la $t1, .tmp_146
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 29
   la $a0, i
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 30
   la $a0, .s9
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 31
   la $a0, .tmp_146
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 32
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 34

   # .s11 <- .tmp_147+i
   la $a0, .tmp_147
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s11
   jal convert_string
   #---
# quad 35
   la $a0, .tmp_147
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 36
   b _l5
# quad 37
_l4:
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 38
   la $a0, .s13
   li $v0, 4
   syscall #print_str
# quad 40
   # .s14 <- .tmp_148[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_148
   add $t0, $t0, $s0
   # la $t1, .tmp_148
   lw $a1, ($t0)
   la $a0, .s14
   la $a2, .empty_string
   jal concat
   # ----
# quad 41
   la $a0, .tmp_148
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 42
   # .s15 <- .tmp_148[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_148
   add $t0, $t0, $s0
   # la $t1, .tmp_148
   lw $a1, ($t0)
   la $a0, .s15
   la $a2, .empty_string
   jal concat
   # ----
# quad 43
   la $a0, .tmp_148
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 44
   # .s16 <- .tmp_148[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_148
   add $t0, $t0, $s0
   # la $t1, .tmp_148
   lw $a1, ($t0)
   la $a0, .s16
   la $a2, .empty_string
   jal concat
   # ----
# quad 45
   la $a0, .tmp_148
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 46
   # .s17 <- .tmp_148[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_148
   add $t0, $t0, $s0
   # la $t1, .tmp_148
   lw $a1, ($t0)
   la $a0, .s17
   la $a2, .empty_string
   jal concat
   # ----
# quad 47
   la $a0, .tmp_148
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 48
   # .s18 <- .tmp_148[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_148
   add $t0, $t0, $s0
   # la $t1, .tmp_148
   lw $a1, ($t0)
   la $a0, .s18
   la $a2, .empty_string
   jal concat
   # ----
# quad 49
   la $a0, .tmp_148
   li $v0, 4
   syscall #print_str
# quad 50
   la $a0, .s19
   li $v0, 4
   syscall #print_str
# quad 51
   la $a0, .s20
   li $v0, 4
   syscall #print_str
# quad 53

   # .s21 <- .tmp_149/taille_tab
   la $a0, .tmp_149
   jal convert_entier
   move $s0, $v0
   la $a0, taille_tab
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .s21
   jal convert_string
   #---
# quad 55
   # .tmp_149 <- .tmp_150[tableau]
   la $a0, tableau
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_150
   add $t0, $t0, $s0
   # la $t1, .tmp_150
   lw $a1, ($t0)
   la $a0, .tmp_149
   la $a2, .empty_string
   jal concat
   # ----
# quad 56
   la $a0, .s22
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 57
   la $a0, .tmp_150
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 58
   la $a0, .s23
   li $v0, 4
   syscall #print_str
# quad 59
   la $a0, .s24
   li $v0, 4
   syscall #print_str
# quad 60
   li $v0, 17
   li $a0, 0
   syscall #EXIT
