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
   .s0: .asciiz "début test_str_cond\n"
   a: .space 1024
   .s1: .asciiz "abcdef"
   .s2: .asciiz "-n"
   .s3: .asciiz "-z"
   .tmp_105: .space 1024
   .s4: .asciiz "abc"
   .s5: .asciiz "ghi"
   .tmp_106: .space 1024
   .s6: .asciiz "jkl"
   .s7: .asciiz "-n concat"
   .s8: .asciiz "milieu\n"
   .s9: .asciiz "-n -o -z\n"
   .s10: .asciiz "fin\n"

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
# initialisation de .tmp_105
   la $t0, .tmp_105
   sb $t1, 0($t0)
# initialisation de .tmp_106
   la $t0, .tmp_106
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
   la $a0, a
   la $a1, .empty_string
   jal compare
   bne $v0, 0, _l0
# quad 4
   b _l1
# quad 5
_l0:
   la $a0, .s2
   li $v0, 4
   syscall #print_str
# quad 6
   b _l2
# quad 7
_l1:
   la $a0, a
   la $a1, .empty_string
   jal compare
   beq $v0, 0, _l3
# quad 8
   b _l4
# quad 9
_l3:
   la $a0, .s3
   li $v0, 4
   syscall #print_str
# quad 10
   b _l2
_l4:
# quad 12
   la $a0, .s5
   la $a1, .tmp_105
   la $a2, .s4
   jal concat
# quad 14
   la $a0, .s6
   la $a1, .tmp_106
   la $a2, .tmp_105
   jal concat
# quad 15
   la $a0, .tmp_106
   la $a1, .empty_string
   jal compare
   bne $v0, 0, _l5
# quad 16
   b _l2
# quad 17
_l5:
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 18
_l2:
   la $a0, .s8
   li $v0, 4
   syscall #print_str
# quad 19
   la $a0, a
   la $a1, .empty_string
   jal compare
   bne $v0, 0, _l6
# quad 20
   b _l7
# quad 21
_l7:
   la $a0, a
   la $a1, .empty_string
   jal compare
   beq $v0, 0, _l6
# quad 22
   b _l8
# quad 23
_l6:
   la $a0, .s9
   li $v0, 4
   syscall #print_str
# quad 24
_l8:
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 25
   li $v0, 17
   li $a0, 0
   syscall #EXIT
