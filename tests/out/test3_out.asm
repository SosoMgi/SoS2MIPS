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
   .tmp_82: .space 1024
   .s0: .asciiz "abc def"
   .s1: .asciiz "ghi"
   .tmp_83: .space 1024
   .s2: .asciiz "jklmn"
   var: .space 1024
   .tmp_84: .space 1024
   .s3: .asciiz "prout"
   .s4: .asciiz "abc defghijklmn"
   .s5: .asciiz "hihihaha"

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
# initialisation de .tmp_82
   la $t0, .tmp_82
   sb $t1, 0($t0)
# initialisation de .tmp_83
   la $t0, .tmp_83
   sb $t1, 0($t0)
# initialisation de var
   la $t0, var
   sb $t1, 0($t0)
# initialisation de .tmp_84
   la $t0, .tmp_84
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 1
   la $a0, .s1
   la $a1, .tmp_82
   la $a2, .s0
   jal concat
# quad 3
   la $a0, .s2
   la $a1, .tmp_83
   la $a2, .tmp_82
   jal concat
# quad 5
   la $a0, .tmp_83
   la $a1, var
   la $a2, .empty_string
   jal concat
# quad 6
   la $a0, var
   li $v0, 4
   syscall #print_str
# quad 8
   la $a0, .s3
   la $a1, .tmp_84
   la $a2, var
   jal concat
# quad 9
   la $a0, .tmp_84
   la $a1, .s4
   jal compare
   beq $v0, 1, _l0
# quad 10
   b _l1
# quad 11
_l0:
   la $a0, .s5
   li $v0, 4
   syscall #print_str
# quad 12
_l1:
   li $v0, 17
   li $a0, 0
   syscall #EXIT
