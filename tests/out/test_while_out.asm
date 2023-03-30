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
   .s0: .asciiz "début"
   .s1: .asciiz "a"
   .s2: .asciiz "b"
   .s3: .asciiz "intérieur while"
   .s4: .asciiz "c"
   .s5: .asciiz "d"
   .s6: .asciiz "while dans while"
   .s7: .asciiz "e"
   .s8: .asciiz "f"
   .s9: .asciiz "if dans while dans while"
   .s10: .asciiz "2e instr"
   .s11: .asciiz "fin"

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
_l3:
   la $a0, .s1
   la $a1, .s2
   jal compare
   beq $v0, 0, _l0
# quad 2
   b _l1
# quad 3
_l0:
   la $a0, .s3
   li $v0, 4
   syscall #print_str
# quad 4
_l5:
   la $a0, .s4
   la $a1, .s5
   jal compare
   beq $v0, 0, _l2
# quad 5
   b _l3
# quad 6
_l2:
   la $a0, .s6
   li $v0, 4
   syscall #print_str
# quad 7
   la $a0, .s7
   la $a1, .s8
   jal compare
   beq $v0, 1, _l4
# quad 8
   b _l5
# quad 9
_l4:
   la $a0, .s9
   li $v0, 4
   syscall #print_str
# quad 10
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 11
   b _l5
# quad 12
   b _l3
# quad 13
_l1:
   la $a0, .s11
   li $v0, 4
   syscall #print_str
# quad 14
   li $v0, 17
   li $a0, 0
   syscall #EXIT
