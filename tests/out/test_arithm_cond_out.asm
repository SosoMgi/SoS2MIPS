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
   .s0: .asciiz "début test_arithm_cond\n"
   a: .space 1024
   .s1: .asciiz "15"
   b: .space 1024
   .s2: .asciiz "abc"
   .s3: .asciiz "-14"
   .s4: .asciiz "14"
   .s5: .asciiz "et"
   .s6: .asciiz " : "
   .s7: .asciiz "eq "
   .s8: .asciiz "ne "
   .s9: .asciiz "gt "
   .s10: .asciiz "ge "
   .s11: .asciiz "lt "
   .s12: .asciiz "le "
   .s13: .asciiz "\n----------------\n"
   .s14: .asciiz "0"
   .s15: .asciiz "10"
   .s16: .asciiz "0 <= a <= 10"
   .s17: .asciiz "a pas entre 0 et 10"
   .s18: .asciiz "\nfin\n"

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
# initialisation de a
   la $t0, a
   sb $t1, 0($t0)
# initialisation de b
   la $t0, b
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 2
   la $a0, .s1
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 4
   la $a0, .s2
   la $a1, b
   la $a2, .empty_string
   jal concat
# quad 5
   la $a0, .s3
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 6
   la $a0, .s4
   la $a1, b
   la $a2, .empty_string
   jal concat
# quad 7
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 8
   la $a0, .s5
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 9
   la $a0, b
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 10
   la $a0, .s6
   li $v0, 4
   syscall #print_str
# quad 11
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   beq $a1, $v0, _l0
# quad 12
   b _l1
# quad 13
_l0:
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 14
_l1:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   bne $a1, $v0, _l2
# quad 15
   b _l3
# quad 16
_l2:
   la $a0, .s8
   li $v0, 4
   syscall #print_str
# quad 17
_l3:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   bgt $a1, $v0, _l4
# quad 18
   b _l5
# quad 19
_l4:
   la $a0, .s9
   li $v0, 4
   syscall #print_str
# quad 20
_l5:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   bge $a1, $v0, _l6
# quad 21
   b _l7
# quad 22
_l6:
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 23
_l7:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   blt $a1, $v0, _l8
# quad 24
   b _l9
# quad 25
_l8:
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 26
_l9:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, b
   jal convert_entier
   ble $a1, $v0, _l10
# quad 27
   b _l11
# quad 28
_l10:
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 29
_l11:
   la $a0, .s13
   li $v0, 4
   syscall #print_str
# quad 30
   la $a0, .s14
   jal convert_entier
   move $a1, $v0
   la $a0, a
   jal convert_entier
   ble $a1, $v0, _l12
# quad 31
   b _l13
# quad 32
_l12:
   la $a0, a
   jal convert_entier
   move $a1, $v0
   la $a0, .s15
   jal convert_entier
   ble $a1, $v0, _l14
# quad 33
   b _l13
# quad 34
_l14:
   la $a0, .s16
   li $v0, 4
   syscall #print_str
# quad 35
   b _l15
# quad 36
_l13:
   la $a0, .s17
   li $v0, 4
   syscall #print_str
# quad 37
_l15:
   la $a0, .s18
   li $v0, 4
   syscall #print_str
# quad 38
   li $v0, 17
   li $a0, 0
   syscall #EXIT
