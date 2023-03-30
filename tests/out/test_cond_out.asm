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
   .s0: .asciiz "début test_cond\n"
   a: .space 1024
   .s1: .asciiz "a"
   b: .space 1024
   .s2: .asciiz "a"
   c: .space 1024
   .s3: .asciiz "c"
   d: .space 1024
   .s4: .asciiz "d"
   e: .space 1024
   .s5: .asciiz "e"
   f: .space 1024
   .s6: .asciiz "e"
   g: .space 1024
   .s7: .asciiz "h"
   h: .space 1024
   .s8: .asciiz "h"
   i: .space 1024
   .s9: .asciiz "i"
   j: .space 1024
   .s10: .asciiz "j"
   .s11: .asciiz "wow un and insane "
   .s12: .asciiz "enfin bon\n"
   .s13: .asciiz "un elif avec un or ??\n"
   .s14: .asciiz "pff juste le else\n"
   .s15: .asciiz "\n-----------------\n"
   .s16: .asciiz "0"
   .s17: .asciiz "1"
   .s18: .asciiz "cond complexe 1\n"
   .s19: .asciiz "cond complexe 2\n"
   .s20: .asciiz "\nfin\n"

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
# initialisation de c
   la $t0, c
   sb $t1, 0($t0)
# initialisation de d
   la $t0, d
   sb $t1, 0($t0)
# initialisation de e
   la $t0, e
   sb $t1, 0($t0)
# initialisation de f
   la $t0, f
   sb $t1, 0($t0)
# initialisation de g
   la $t0, g
   sb $t1, 0($t0)
# initialisation de h
   la $t0, h
   sb $t1, 0($t0)
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation de j
   la $t0, j
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
# quad 6
   la $a0, .s3
   la $a1, c
   la $a2, .empty_string
   jal concat
# quad 8
   la $a0, .s4
   la $a1, d
   la $a2, .empty_string
   jal concat
# quad 10
   la $a0, .s5
   la $a1, e
   la $a2, .empty_string
   jal concat
# quad 12
   la $a0, .s6
   la $a1, f
   la $a2, .empty_string
   jal concat
# quad 14
   la $a0, .s7
   la $a1, g
   la $a2, .empty_string
   jal concat
# quad 16
   la $a0, .s8
   la $a1, h
   la $a2, .empty_string
   jal concat
# quad 18
   la $a0, .s9
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 20
   la $a0, .s10
   la $a1, j
   la $a2, .empty_string
   jal concat
# quad 21
   la $a0, a
   la $a1, b
   jal compare
   beq $v0, 0, _l0
# quad 22
   b _l1
# quad 23
_l0:
   la $a0, c
   la $a1, d
   jal compare
   beq $v0, 0, _l2
# quad 24
   b _l1
# quad 25
_l2:
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 26
   la $a0, .s12
   li $v0, 4
   syscall #print_str
# quad 27
   b _l3
# quad 28
_l1:
   la $a0, g
   la $a1, h
   jal compare
   beq $v0, 0, _l4
# quad 29
   b _l5
# quad 30
_l5:
   la $a0, i
   la $a1, j
   jal compare
   beq $v0, 0, _l6
# quad 31
   b _l4
# quad 32
_l4:
   la $a0, .s13
   li $v0, 4
   syscall #print_str
# quad 33
   b _l3
# quad 34
_l6:
   la $a0, .s14
   li $v0, 4
   syscall #print_str
# quad 35
_l3:
   la $a0, .s15
   li $v0, 4
   syscall #print_str
# quad 36
   la $a0, a
   la $a1, b
   jal compare
   beq $v0, 1, _l7
# quad 37
   b _l8
# quad 38
_l7:
   la $a0, c
   la $a1, d
   jal compare
   beq $v0, 0, _l9
# quad 39
   b _l8
# quad 40
_l8:
   la $a0, e
   la $a1, f
   jal compare
   beq $v0, 0, _l9
# quad 41
   b _l10
# quad 42
_l9:
   la $a0, .s16
   la $a1, .s17
   jal compare
   beq $v0, 0, _l11
# quad 43
   b _l10
# quad 44
_l11:
   la $a0, .s18
   li $v0, 4
   syscall #print_str
# quad 45
   b _l12
# quad 46
_l10:
   la $a0, a
   la $a1, b
   jal compare
   beq $v0, 0, _l13
# quad 47
   b _l12
# quad 48
_l13:
   la $a0, c
   la $a1, d
   jal compare
   beq $v0, 0, _l14
# quad 49
   b _l15
# quad 50
_l15:
   la $a0, e
   la $a1, f
   jal compare
   beq $v0, 0, _l16
# quad 51
   b _l12
# quad 52
_l16:
   la $a0, g
   la $a1, h
   jal compare
   beq $v0, 0, _l14
# quad 53
   b _l12
# quad 54
_l14:
   la $a0, .s19
   li $v0, 4
   syscall #print_str
# quad 55
_l12:
   la $a0, .s20
   li $v0, 4
   syscall #print_str
# quad 56
   li $v0, 17
   li $a0, 0
   syscall #EXIT
