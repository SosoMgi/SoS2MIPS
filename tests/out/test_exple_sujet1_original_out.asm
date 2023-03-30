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
   valeurs: .space 16 # 4*4
   i: .space 1024
   .s0: .asciiz "0"
   .tmp_179: .space 1024
   nombre: .space 1024
   .tmp_180: .space 1024
   .s1: .asciiz "Il faut saisir "
   .s2: .asciiz "valeurs entieres\n"
   .tmp_181: .space 1024
   .s3: .asciiz "1"
   .s4: .asciiz "Entrez la valeur "
   .s5: .asciiz " : \n"
   .tmp_182: .space 1024
   .s6: .asciiz "0"
   .s7: .asciiz "Les valeurs doivent etre strictement positives !\n"
   .tmp_183: .space 1024
   .s8: .asciiz "1"
   .s9: .asciiz "0"
   somme: .space 1024
   .s10: .asciiz "0"
   .tmp_184: .space 1024
   .tmp_185: .space 1024
   .tmp_186: .space 1024
   .tmp_187: .space 1024
   .s11: .asciiz "1"
   .tmp_188: .space 1024
   .tmp_189: .space 1024
   .s12: .asciiz "Nombre de valeurs : "
   .s13: .asciiz "0"
   .s14: .asciiz "Moyenne = "
   .s15: .asciiz "fonction pas implémenté"
   .s16: .asciiz "\n"
   .s17: .asciiz "Erreur\n"

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
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation de .tmp_179
   la $t0, .tmp_179
   sb $t1, 0($t0)
# initialisation de nombre
   la $t0, nombre
   sb $t1, 0($t0)
# initialisation de .tmp_180
   la $t0, .tmp_180
   sb $t1, 0($t0)
# initialisation de .tmp_181
   la $t0, .tmp_181
   sb $t1, 0($t0)
# initialisation de .tmp_182
   la $t0, .tmp_182
   sb $t1, 0($t0)
# initialisation de .tmp_183
   la $t0, .tmp_183
   sb $t1, 0($t0)
# initialisation de somme
   la $t0, somme
   sb $t1, 0($t0)
# initialisation de .tmp_184
   la $t0, .tmp_184
   sb $t1, 0($t0)
# initialisation de .tmp_185
   la $t0, .tmp_185
   sb $t1, 0($t0)
# initialisation de .tmp_186
   la $t0, .tmp_186
   sb $t1, 0($t0)
# initialisation de .tmp_187
   la $t0, .tmp_187
   sb $t1, 0($t0)
# initialisation de .tmp_188
   la $t0, .tmp_188
   sb $t1, 0($t0)
# initialisation de .tmp_189
   la $t0, .tmp_189
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 2
   la $a0, .s0
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 4
   # .tmp_179 <- .argv[0]
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
   la $a0, .tmp_179
   la $a2, .empty_string
   jal concat
   # ----
# quad 6
   la $a0, .tmp_179
   la $a1, nombre
   la $a2, .empty_string
   jal concat
# quad 8
   # .tmp_180 <- .argv[0]
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
   la $a0, .tmp_180
   la $a2, .empty_string
   jal concat
   # ----
# quad 9
   la $a0, .s1
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 10
   la $a0, .tmp_180
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 11
   la $a0, .s2
   li $v0, 4
   syscall #print_str
# quad 12
_l4:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, nombre
   jal convert_entier
   blt $a1, $v0, _l0
# quad 13
   b _l1
_l0:
# quad 15

   # .s3 <- .tmp_181+i
   la $a0, .tmp_181
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s3
   jal convert_string
   #---
# quad 16
   la $a0, .s4
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 17
   la $a0, .tmp_181
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 18
   la $a0, .s5
   li $v0, 4
   syscall #print_str
# quad 19
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
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, 0 # addresse du tableau 
   add $t0, $t0, $s0 # addresse de la case 
   sw $s3, ($t0) # on stocke la copie
   # ----
# quad 21
   # i <- .tmp_182[valeurs]
   la $a0, valeurs
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_182
   add $t0, $t0, $s0
   # la $t1, .tmp_182
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 22
   la $a0, .tmp_182
   jal convert_entier
   move $a1, $v0
   la $a0, .s6
   jal convert_entier
   bgt $a1, $v0, _l2
# quad 23
   b _l3
# quad 24
_l3:
   la $a0, .s7
   li $v0, 4
   syscall #print_str
_l2:
# quad 26

   # .s8 <- .tmp_183+i
   la $a0, .tmp_183
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s8
   jal convert_string
   #---
# quad 27
   la $a0, .tmp_183
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 28
   b _l4
# quad 29
_l1:
   la $a0, .s9
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 31
   la $a0, .s10
   la $a1, somme
   la $a2, .empty_string
   jal concat
_l7:
# quad 33
   # .tmp_184 <- .argv[0]
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
   la $a0, .tmp_184
   la $a2, .empty_string
   jal concat
   # ----
# quad 34
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, .tmp_184
   jal convert_entier
   blt $a1, $v0, _l5
# quad 35
   b _l6
_l5:
# quad 37
   # i <- .tmp_185[valeurs]
   la $a0, valeurs
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 4, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_185
   add $t0, $t0, $s0
   # la $t1, .tmp_185
   lw $a1, ($t0)
   la $a0, i
   la $a2, .empty_string
   jal concat
   # ----
# quad 39

   # .tmp_185 <- .tmp_186+somme
   la $a0, .tmp_186
   jal convert_entier
   move $s0, $v0
   la $a0, somme
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .tmp_185
   jal convert_string
   #---
# quad 40
   la $a0, .tmp_186
   la $a1, somme
   la $a2, .empty_string
   jal concat
# quad 42

   # .s11 <- .tmp_187+i
   la $a0, .tmp_187
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s11
   jal convert_string
   #---
# quad 43
   la $a0, .tmp_187
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 44
   b _l7
_l6:
# quad 46
   # .tmp_188 <- .argv[0]
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
   la $a0, .tmp_188
   la $a2, .empty_string
   jal concat
   # ----
# quad 48

   # .tmp_188 <- .tmp_189/somme
   la $a0, .tmp_189
   jal convert_entier
   move $s0, $v0
   la $a0, somme
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .tmp_188
   jal convert_string
   #---
# quad 49
   la $a0, .tmp_189
   li $v0, 4
   syscall #print_str
# quad 50
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 51
   # read -> nombre
   li $v0, 8
   la $a0, .buffer_read # @ buf
   li $a1, 1024 # buf size
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
   la $a0, nombre # res
    move $a1, $v0 # val
   la $a2, .empty_string
   jal concat
# quad 52
   la $a0, .last_func_return
   la $a1, .s13
   jal compare
   beq $v0, 0, _l8
# quad 53
   b _l9
# quad 54
_l8:
   la $a0, .s14
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 55
   la $a0, .s15
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 56
   la $a0, .s16
   li $v0, 4
   syscall #print_str
# quad 57
   b _l10
# quad 58
_l9:
   la $a0, .s17
   li $v0, 4
   syscall #print_str
# quad 59
_l10:
   li $v0, 17
   li $a0, 0
   syscall #EXIT
