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
   .s0: .asciiz "debut test_tab_3\n"
   .align 2
   tab: .space 20 # 5*4
   i: .space 1024
   .s1: .asciiz "0"
   .s2: .asciiz "4"
   .s3: .asciiz "\n"
   .tmp_177: .space 1024
   .s4: .asciiz "1"
   .s5: .asciiz "4"
   .s6: .asciiz "0"
   .tmp_178: .space 1024
   .s7: .asciiz "0"
   .s8: .asciiz "1"
   .s9: .asciiz "2"
   .s10: .asciiz "3"
   .s11: .asciiz "4"
   .s12: .asciiz "\n"
   .s13: .asciiz "fin\n"

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
# initialisation de .tmp_177
   la $t0, .tmp_177
   sb $t1, 0($t0)
# initialisation de .tmp_178
   la $t0, .tmp_178
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 3
   la $a0, .s1
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 4
_l2:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, .s2
   jal convert_entier
   blt $a1, $v0, _l0
# quad 5
   b _l1
# quad 6
_l0:
   la $a0, i
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 7
   la $a0, .s3
   li $v0, 4
   syscall #print_str
# quad 8
   # i[tab] <- i
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
   la $t0, i
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 10

   # .s4 <- .tmp_177+i
   la $a0, .tmp_177
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s4
   jal convert_string
   #---
# quad 11
   la $a0, .tmp_177
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 12
   b _l2
# quad 13
_l1:
   # .s6[tab] <- .s5
   la $a0, tab
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
# quad 15
   # .s7 <- .tmp_178[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_178
   add $t0, $t0, $s0
   # la $t1, .tmp_178
   lw $a1, ($t0)
   la $a0, .s7
   la $a2, .empty_string
   jal concat
   # ----
# quad 16
   la $a0, .tmp_178
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 17
   # .s8 <- .tmp_178[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_178
   add $t0, $t0, $s0
   # la $t1, .tmp_178
   lw $a1, ($t0)
   la $a0, .s8
   la $a2, .empty_string
   jal concat
   # ----
# quad 18
   la $a0, .tmp_178
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 19
   # .s9 <- .tmp_178[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_178
   add $t0, $t0, $s0
   # la $t1, .tmp_178
   lw $a1, ($t0)
   la $a0, .s9
   la $a2, .empty_string
   jal concat
   # ----
# quad 20
   la $a0, .tmp_178
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 21
   # .s10 <- .tmp_178[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_178
   add $t0, $t0, $s0
   # la $t1, .tmp_178
   lw $a1, ($t0)
   la $a0, .s10
   la $a2, .empty_string
   jal concat
   # ----
# quad 22
   la $a0, .tmp_178
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 23
   # .s11 <- .tmp_178[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 5, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_178
   add $t0, $t0, $s0
   # la $t1, .tmp_178
   lw $a1, ($t0)
   la $a0, .s11
   la $a2, .empty_string
   jal concat
   # ----
# quad 24
   la $a0, .tmp_178
   li $v0, 4
   syscall #print_str
# quad 25
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 26
   la $a0, .s13
   li $v0, 4
   syscall #print_str
# quad 27
   li $v0, 17
   li $a0, 0
   syscall #EXIT
