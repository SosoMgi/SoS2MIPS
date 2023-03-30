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
   .s0: .asciiz "avant le if"
   .s1: .asciiz "abauzoids"
   .s2: .asciiz "unmot"
   .s3: .asciiz "abc"
   .s4: .asciiz "un truc je suppose"
   .s5: .asciiz "wow"
   .s6: .asciiz "dinguerie"
   .s7: .asciiz "double if insane le truc"
   .s8: .asciiz "quoi"
   .s9: .asciiz "feur"
   .s10: .asciiz "plus d'idées oskour"
   .s11: .asciiz "après le if"
   .s12: .asciiz "encore après"

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
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 1
   la $a0, .s1
   li $v0, 4
   syscall #print_str
# quad 2
   la $a0, .s2
   la $a1, .s3
   jal compare
   beq $v0, 0, _l0
# quad 3
   b _l1
# quad 4
_l0:
   la $a0, .s4
   li $v0, 4
   syscall #print_str
# quad 5
   la $a0, .s5
   la $a1, .s6
   jal compare
   beq $v0, 1, _l2
# quad 6
   b _l3
# quad 7
_l2:
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 8
_l3:
   la $a0, .s8
   la $a1, .s9
   jal compare
   beq $v0, 0, _l4
# quad 9
   b _l1
# quad 10
_l4:
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 11
_l1:
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 12
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 13
   li $v0, 17
   li $a0, 0
   syscall #EXIT
