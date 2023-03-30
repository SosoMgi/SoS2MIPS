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
   .align 2
   valeurs: .space 400 # 100*4
   .tmp_190: .space 1024
   nombre: .space 1024
   .tmp_191: .space 1024
   .s0: .asciiz "Il faut saisir"
   .s1: .asciiz "valeurs entières\n"
   i: .space 1024
   .s2: .asciiz "0"
   .s3: .asciiz "100"
   .tmp_192: .space 1024
   .s4: .asciiz "1"
   .s5: .asciiz "Entre la valeur"
   .s6: .asciiz ": "
   .tmp_193: .space 1024
   .s7: .asciiz "0"
   .s8: .asciiz "Les valeurs doivent etre strictement positives\n"
   .s9: .asciiz "1"
   .tmp_194: .space 1024
   .s10: .asciiz "1"
   somme: .space 1024
   .s11: .asciiz "0"
   .s12: .asciiz "0"
   .tmp_195: .space 1024
   .tmp_196: .space 1024
   .tmp_197: .space 1024
   .tmp_198: .space 1024
   .s13: .asciiz "1"
   .tmp_199: .space 1024
   .tmp_200: .space 1024
   res: .space 1024
   .s14: .asciiz "Moyenne (tronquée) ="
   .s15: .asciiz "\n"

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
# initialisation du tableau valeurs
   la $t0, valeurs
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
# initialisation de .tmp_190
   la $t0, .tmp_190
   sb $t1, 0($t0)
# initialisation de nombre
   la $t0, nombre
   sb $t1, 0($t0)
# initialisation de .tmp_191
   la $t0, .tmp_191
   sb $t1, 0($t0)
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation de .tmp_192
   la $t0, .tmp_192
   sb $t1, 0($t0)
# initialisation de .tmp_193
   la $t0, .tmp_193
   sb $t1, 0($t0)
# initialisation de .tmp_194
   la $t0, .tmp_194
   sb $t1, 0($t0)
# initialisation de somme
   la $t0, somme
   sb $t1, 0($t0)
# initialisation de .tmp_195
   la $t0, .tmp_195
   sb $t1, 0($t0)
# initialisation de .tmp_196
   la $t0, .tmp_196
   sb $t1, 0($t0)
# initialisation de .tmp_197
   la $t0, .tmp_197
   sb $t1, 0($t0)
# initialisation de .tmp_198
   la $t0, .tmp_198
   sb $t1, 0($t0)
# initialisation de .tmp_199
   la $t0, .tmp_199
   sb $t1, 0($t0)
# initialisation de .tmp_200
   la $t0, .tmp_200
   sb $t1, 0($t0)
# initialisation de res
   la $t0, res
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 2
   # .tmp_190 <- .argv[0]
   li $s0, 0 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_190
   la $a2, .empty_string
   jal concat
   # ----
# quad 4
   la $a0, .tmp_190
   la $a1, nombre
   la $a2, .empty_string
   jal concat
# quad 6
   # .tmp_191 <- .argv[0]
   li $s0, 0 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_191
   la $a2, .empty_string
   jal concat
   # ----
# quad 7
   la $a0, .s0
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 8
   la $a0, .tmp_191
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 9
   la $a0, .s1
   li $v0, 4
   syscall #print_str
# quad 11
   la $a0, .s2
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 12
_l5:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, nombre
   jal convert_entier
   blt $a1, $v0, _l0
# quad 13
   b _l1
# quad 14
_l0:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, .s3
   jal convert_entier
   blt $a1, $v0, _l2
# quad 15
   b _l1
_l2:
# quad 17

   # .s4 <- .tmp_192+i
   la $a0, .tmp_192
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s4
   jal convert_string
   #---
# quad 18
   la $a0, .s5
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 19
   la $a0, .tmp_192
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 20
   la $a0, .s6
   li $v0, 4
   syscall #print_str
# quad 21
   # read -> 0[valeurs]
   li $v0, 8
   la $a0, .buffer_read # @ buf
   la $a1, 1024 # buf size
   syscall # read_str
   la $a0, .buffer_read
   jal strlen
   subi $t0, $v0, 1
   la $t2, .buffer_read
   add $t0, $t0, $t2
   li $t1, 0
   sb $t1, ($t0) #suppresion \n
   la $a0, .buffer_read
   jal copy_string
   move $s3, $v0 #stockage de la copie dans $s3
   # tab_set
   la $a0, valeurs
   jal convert_entier # conversion index
   move $s0, $v0 # stockage de l'index dans $s0
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, 0 # addresse du tableau 
   add $t0, $t0, $s0 # addresse de la case 
   sw $s3, ($t0) # on stocke la copie
   # ----
# quad 23
   # i <- .tmp_193[valeurs]
   la $a0, valeurs
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_193
   add $t0, $t0, $s0
   # la $t1, .tmp_193
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 24
   la $a0, .tmp_193
   jal convert_entier
   move $a1, $v0
   la $a0, .s7
   jal convert_entier
   bgt $a1, $v0, _l3
# quad 25
   b _l4
# quad 26
_l4:
   la $a0, .s8
   li $v0, 4
   syscall #print_str
# quad 27
   la $a0, .s9
   jal convert_entier
   move $a0, $v0
   li $v0, 17
   syscall #EXIT
_l3:
# quad 29

   # .s10 <- .tmp_194+i
   la $a0, .tmp_194
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s10
   jal convert_string
   #---
# quad 30
   la $a0, .tmp_194
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 31
   b _l5
_l1:
# quad 33
   la $a0, .s11
   la $a1, somme
   la $a2, .empty_string
   jal concat
# quad 34
   la $a0, .s12
   la $a1, i
   la $a2, .empty_string
   jal concat
_l8:
# quad 36
   # .tmp_195 <- .argv[0]
   li $s0, 0 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_195
   la $a2, .empty_string
   jal concat
   # ----
# quad 37
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, .tmp_195
   jal convert_entier
   blt $a1, $v0, _l6
# quad 38
   b _l7
_l6:
# quad 40
   # i <- .tmp_196[valeurs]
   la $a0, valeurs
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_196
   add $t0, $t0, $s0
   # la $t1, .tmp_196
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 42

   # .tmp_196 <- .tmp_197+somme
   la $a0, .tmp_197
   jal convert_entier
   move $s0, $v0
   la $a0, somme
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .tmp_196
   jal convert_string
   #---
# quad 43
   la $a0, .tmp_197
   la $a1, somme
   la $a2, .empty_string
   jal concat
# quad 45

   # .s13 <- .tmp_198+i
   la $a0, .tmp_198
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s13
   jal convert_string
   #---
# quad 46
   la $a0, .tmp_198
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 47
   b _l8
_l7:
# quad 49
   # .tmp_199 <- .argv[0]
   li $s0, 0 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_199
   la $a2, .empty_string
   jal concat
   # ----
# quad 51

   # .tmp_199 <- .tmp_200/somme
   la $a0, .tmp_200
   jal convert_entier
   move $s0, $v0
   la $a0, somme
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .tmp_199
   jal convert_string
   #---
# quad 53
   la $a0, .tmp_200
   la $a1, res
   la $a2, .empty_string
   jal concat
# quad 54
   la $a0, .s14
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 55
   la $a0, res
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 56
   la $a0, .s15
   li $v0, 4
   syscall #print_str
# quad 57
   li $v0, 17
   li $a0, 0
   syscall #EXIT
