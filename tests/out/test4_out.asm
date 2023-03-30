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
   .s0: .asciiz "début test 4\n"
   a: .space 1024
   .s1: .asciiz "a"
   b: .space 1024
   .s2: .asciiz "b"
   c: .space 1024
   .s3: .asciiz "c"
   .tmp_85: .space 1024
   .tmp_86: .space 1024
   .tmp_87: .space 1024
   .tmp_88: .space 1024
   d: .space 1024
   .s4: .asciiz "est"
   .s5: .asciiz "égal"
   .s6: .asciiz "à"
   .s7: .asciiz "(1)"
   .s8: .asciiz "est"
   .s9: .asciiz "égal"
   .s10: .asciiz "à"
   .s11: .asciiz "(2)"
   .s12: .asciiz "est"
   .s13: .asciiz "égal"
   .s14: .asciiz "à"
   .s15: .asciiz "(3)"
   .s16: .asciiz "est"
   .s17: .asciiz "différent"
   .s18: .asciiz "de"
   .s19: .asciiz "et"
   .s20: .asciiz "et"
   .s21: .asciiz "(4)"
   .s22: .asciiz "\nfin\n"

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
# initialisation de .tmp_85
   la $t0, .tmp_85
   sb $t1, 0($t0)
# initialisation de .tmp_86
   la $t0, .tmp_86
   sb $t1, 0($t0)
# initialisation de .tmp_87
   la $t0, .tmp_87
   sb $t1, 0($t0)
# initialisation de .tmp_88
   la $t0, .tmp_88
   sb $t1, 0($t0)
# initialisation de d
   la $t0, d
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
   la $a0, b
   la $a1, .tmp_85
   la $a2, a
   jal concat
# quad 10
   la $a0, c
   la $a1, .tmp_86
   la $a2, .tmp_85
   jal concat
# quad 12
   la $a0, b
   la $a1, .tmp_87
   la $a2, .tmp_86
   jal concat
# quad 14
   la $a0, a
   la $a1, .tmp_88
   la $a2, .tmp_87
   jal concat
# quad 16
   la $a0, .tmp_88
   la $a1, d
   la $a2, .empty_string
   jal concat
# quad 17
   la $a0, a
   la $a1, b
   jal compare
   beq $v0, 0, _l0
# quad 18
   b _l1
# quad 19
_l0:
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 20
   la $a0, .s4
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 21
   la $a0, .s5
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 22
   la $a0, .s6
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 23
   la $a0, b
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 24
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 25
   b _l2
# quad 26
_l1:
   la $a0, a
   la $a1, c
   jal compare
   beq $v0, 0, _l3
# quad 27
   b _l4
# quad 28
_l3:
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 29
   la $a0, .s8
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
   la $a0, .s10
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 32
   la $a0, c
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 33
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 34
   b _l2
# quad 35
_l4:
   la $a0, a
   la $a1, d
   jal compare
   beq $v0, 0, _l5
# quad 36
   b _l6
# quad 37
_l5:
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 38
   la $a0, .s12
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 39
   la $a0, .s13
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 40
   la $a0, .s14
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 41
   la $a0, d
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 42
   la $a0, .s15
   li $v0, 4
   syscall #print_str
# quad 43
   b _l2
# quad 44
_l6:
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 45
   la $a0, .s16
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 46
   la $a0, .s17
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 47
   la $a0, .s18
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 48
   la $a0, b
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 49
   la $a0, .s19
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 50
   la $a0, c
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 51
   la $a0, .s20
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 52
   la $a0, d
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 53
   la $a0, .s21
   li $v0, 4
   syscall #print_str
# quad 54
_l2:
   la $a0, .s22
   li $v0, 4
   syscall #print_str
# quad 55
   li $v0, 17
   li $a0, 0
   syscall #EXIT
