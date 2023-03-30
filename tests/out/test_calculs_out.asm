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
   .s0: .asciiz "début test_calculs\n"
   a: .space 1024
   .s1: .asciiz "7"
   .s2: .asciiz "a ="
   .s3: .asciiz "\n"
   .tmp_89: .space 1024
   .s4: .asciiz "-a ="
   .s5: .asciiz "\n"
   .tmp_90: .space 1024
   .s6: .asciiz "2"
   .s7: .asciiz "a + 2 ="
   .s8: .asciiz "\n"
   .tmp_91: .space 1024
   .s9: .asciiz "2"
   .s10: .asciiz "a - 2 ="
   .s11: .asciiz "\n"
   .tmp_92: .space 1024
   .s12: .asciiz "3"
   .s13: .asciiz "3 * a ="
   .s14: .asciiz "\n"
   .tmp_93: .space 1024
   .s15: .asciiz "3"
   .s16: .asciiz "a / 3 ="
   .s17: .asciiz "\n"
   .tmp_94: .space 1024
   .s18: .asciiz "3"
   .s19: .asciiz "a % 3 ="
   .s20: .asciiz "\n"
   .s21: .asciiz "--------------\n"
   .tmp_95: .space 1024
   .s22: .asciiz "2"
   .tmp_96: .space 1024
   .tmp_97: .space 1024
   .tmp_98: .space 1024
   .s23: .asciiz "(a + -2) * -a ="
   .s24: .asciiz "\n"
   .s25: .asciiz "--------------\n"
   .tmp_99: .space 1024
   .s26: .asciiz "3"
   .s27: .asciiz "2"
   .tmp_100: .space 1024
   .s28: .asciiz "4"
   .s29: .asciiz "2"
   .tmp_101: .space 1024
   .s30: .asciiz "5"
   .tmp_102: .space 1024
   .tmp_103: .space 1024
   .tmp_104: .space 1024
   .s31: .asciiz "15"
   b: .space 1024
   .s32: .asciiz "(3+2)*((4/2)*(-5)) % 15 ="
   .s33: .asciiz "\n"
   .s34: .asciiz "fin\n"

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
# initialisation de .tmp_89
   la $t0, .tmp_89
   sb $t1, 0($t0)
# initialisation de .tmp_90
   la $t0, .tmp_90
   sb $t1, 0($t0)
# initialisation de .tmp_91
   la $t0, .tmp_91
   sb $t1, 0($t0)
# initialisation de .tmp_92
   la $t0, .tmp_92
   sb $t1, 0($t0)
# initialisation de .tmp_93
   la $t0, .tmp_93
   sb $t1, 0($t0)
# initialisation de .tmp_94
   la $t0, .tmp_94
   sb $t1, 0($t0)
# initialisation de .tmp_95
   la $t0, .tmp_95
   sb $t1, 0($t0)
# initialisation de .tmp_96
   la $t0, .tmp_96
   sb $t1, 0($t0)
# initialisation de .tmp_97
   la $t0, .tmp_97
   sb $t1, 0($t0)
# initialisation de .tmp_98
   la $t0, .tmp_98
   sb $t1, 0($t0)
# initialisation de .tmp_99
   la $t0, .tmp_99
   sb $t1, 0($t0)
# initialisation de .tmp_100
   la $t0, .tmp_100
   sb $t1, 0($t0)
# initialisation de .tmp_101
   la $t0, .tmp_101
   sb $t1, 0($t0)
# initialisation de .tmp_102
   la $t0, .tmp_102
   sb $t1, 0($t0)
# initialisation de .tmp_103
   la $t0, .tmp_103
   sb $t1, 0($t0)
# initialisation de .tmp_104
   la $t0, .tmp_104
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
# quad 3
   la $a0, .s2
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 4
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 5
   la $a0, .s3
   li $v0, 4
   syscall #print_str
# quad 7

   # a <- (-1)*.tmp_89
   la $a0, .tmp_89
   jal convert_entier
   move $s0, $v0
   mul $s0, $s0, -1
   move $a0, $s0
   la $a1, a
   jal convert_string
   #---
# quad 8
   la $a0, .s4
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 9
   la $a0, .tmp_89
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 10
   la $a0, .s5
   li $v0, 4
   syscall #print_str
# quad 12

   # .s6 <- .tmp_90+a
   la $a0, .tmp_90
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s6
   jal convert_string
   #---
# quad 13
   la $a0, .s7
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 14
   la $a0, .tmp_90
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 15
   la $a0, .s8
   li $v0, 4
   syscall #print_str
# quad 17

   # .s9 <- .tmp_91-a
   la $a0, .tmp_91
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   sub $a0, $s0, $s1
   la $a1, .s9
   jal convert_string
   #---
# quad 18
   la $a0, .s10
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 19
   la $a0, .tmp_91
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 20
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 22

   # a <- .tmp_92*.s12
   la $a0, .tmp_92
   jal convert_entier
   move $s0, $v0
   la $a0, .s12
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, a
   jal convert_string
   #---
# quad 23
   la $a0, .s13
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 24
   la $a0, .tmp_92
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 25
   la $a0, .s14
   li $v0, 4
   syscall #print_str
# quad 27

   # .s15 <- .tmp_93/a
   la $a0, .tmp_93
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .s15
   jal convert_string
   #---
# quad 28
   la $a0, .s16
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 29
   la $a0, .tmp_93
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 30
   la $a0, .s17
   li $v0, 4
   syscall #print_str
# quad 32

   # .s18 <- .tmp_94%a
   la $a0, .tmp_94
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mfhi $a0 # reste
   la $a1, .s18
   jal convert_string
   #---
# quad 33
   la $a0, .s19
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 34
   la $a0, .tmp_94
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 35
   la $a0, .s20
   li $v0, 4
   syscall #print_str
# quad 36
   la $a0, .s21
   li $v0, 4
   syscall #print_str
# quad 38

   # .s22 <- (-1)*.tmp_95
   la $a0, .tmp_95
   jal convert_entier
   move $s0, $v0
   mul $s0, $s0, -1
   move $a0, $s0
   la $a1, .s22
   jal convert_string
   #---
# quad 40

   # .tmp_95 <- .tmp_96+a
   la $a0, .tmp_96
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .tmp_95
   jal convert_string
   #---
# quad 42

   # a <- (-1)*.tmp_97
   la $a0, .tmp_97
   jal convert_entier
   move $s0, $v0
   mul $s0, $s0, -1
   move $a0, $s0
   la $a1, a
   jal convert_string
   #---
# quad 44

   # .tmp_97 <- .tmp_98*.tmp_96
   la $a0, .tmp_98
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_96
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, .tmp_97
   jal convert_string
   #---
# quad 45
   la $a0, .s23
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 46
   la $a0, .tmp_98
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 47
   la $a0, .s24
   li $v0, 4
   syscall #print_str
# quad 48
   la $a0, .s25
   li $v0, 4
   syscall #print_str
# quad 50

   # .s27 <- .tmp_99+.s26
   la $a0, .tmp_99
   jal convert_entier
   move $s0, $v0
   la $a0, .s26
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s27
   jal convert_string
   #---
# quad 52

   # .s29 <- .tmp_100/.s28
   la $a0, .tmp_100
   jal convert_entier
   move $s0, $v0
   la $a0, .s28
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .s29
   jal convert_string
   #---
# quad 54

   # .s30 <- (-1)*.tmp_101
   la $a0, .tmp_101
   jal convert_entier
   move $s0, $v0
   mul $s0, $s0, -1
   move $a0, $s0
   la $a1, .s30
   jal convert_string
   #---
# quad 56

   # .tmp_101 <- .tmp_102*.tmp_100
   la $a0, .tmp_102
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_100
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, .tmp_101
   jal convert_string
   #---
# quad 58

   # .tmp_102 <- .tmp_103*.tmp_99
   la $a0, .tmp_103
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_99
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, .tmp_102
   jal convert_string
   #---
# quad 60

   # .s31 <- .tmp_104%.tmp_103
   la $a0, .tmp_104
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_103
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mfhi $a0 # reste
   la $a1, .s31
   jal convert_string
   #---
# quad 62
   la $a0, .tmp_104
   la $a1, b
   la $a2, .empty_string
   jal concat
# quad 63
   la $a0, .s32
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 64
   la $a0, b
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 65
   la $a0, .s33
   li $v0, 4
   syscall #print_str
# quad 66
   la $a0, .s34
   li $v0, 4
   syscall #print_str
# quad 67
   li $v0, 17
   li $a0, 0
   syscall #EXIT
