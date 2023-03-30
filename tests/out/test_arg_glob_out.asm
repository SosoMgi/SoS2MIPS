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
   .s0: .asciiz "debut test_arg_glob\n"
   .tmp_151: .space 1024
   a: .space 1024
   .tmp_152: .space 1024
   .tmp_153: .space 1024
   .tmp_154: .space 1024
   .s1: .asciiz "arg séparés :"
   .s2: .asciiz "\n"
   .s3: .asciiz "ppppppp"
   .tmp_155: .space 1024
   .tmp_156: .space 1024
   .tmp_157: .space 1024
   .s4: .asciiz "arg après modif :"
   .s5: .asciiz "\n"
   .s6: .asciiz "tout les args :"
   .s7: .asciiz "\n"
   .tmp_158: .space 1024
   .tmp_159: .space 1024
   .s8: .asciiz "11"
   .tmp_160: .space 1024
   .tmp_161: .space 1024
   .s9: .asciiz "\n"
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
# initialisation de .tmp_151
   la $t0, .tmp_151
   sb $t1, 0($t0)
# initialisation de a
   la $t0, a
   sb $t1, 0($t0)
# initialisation de .tmp_152
   la $t0, .tmp_152
   sb $t1, 0($t0)
# initialisation de .tmp_153
   la $t0, .tmp_153
   sb $t1, 0($t0)
# initialisation de .tmp_154
   la $t0, .tmp_154
   sb $t1, 0($t0)
# initialisation de .tmp_155
   la $t0, .tmp_155
   sb $t1, 0($t0)
# initialisation de .tmp_156
   la $t0, .tmp_156
   sb $t1, 0($t0)
# initialisation de .tmp_157
   la $t0, .tmp_157
   sb $t1, 0($t0)
# initialisation de .tmp_158
   la $t0, .tmp_158
   sb $t1, 0($t0)
# initialisation de .tmp_159
   la $t0, .tmp_159
   sb $t1, 0($t0)
# initialisation de .tmp_160
   la $t0, .tmp_160
   sb $t1, 0($t0)
# initialisation de .tmp_161
   la $t0, .tmp_161
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 2
   # .tmp_151 <- .argv[2]
   li $s0, 2 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_151
   la $a2, .empty_string
   jal concat
   # ----
# quad 4
   la $a0, .tmp_151
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 6
   # .tmp_152 <- .argv[0]
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
   la $a0, .tmp_152
   la $a2, .empty_string
   jal concat
   # ----
# quad 8
   # .tmp_153 <- .argv[1]
   li $s0, 1 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_153
   la $a2, .empty_string
   jal concat
   # ----
# quad 10
   # .tmp_154 <- .argv[2]
   li $s0, 2 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_154
   la $a2, .empty_string
   jal concat
   # ----
# quad 11
   la $a0, .s1
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 12
   la $a0, .tmp_152
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 13
   la $a0, .tmp_153
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 14
   la $a0, .tmp_154
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 15
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 16
   la $a0, .s2
   li $v0, 4
   syscall #print_str
# quad 17
   la $a0, .s3
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 19
   # .tmp_155 <- .argv[0]
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
   la $a0, .tmp_155
   la $a2, .empty_string
   jal concat
   # ----
# quad 21
   # .tmp_156 <- .argv[1]
   li $s0, 1 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_156
   la $a2, .empty_string
   jal concat
   # ----
# quad 23
   # .tmp_157 <- .argv[2]
   li $s0, 2 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_157
   la $a2, .empty_string
   jal concat
   # ----
# quad 24
   la $a0, .s4
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 25
   la $a0, .tmp_155
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 26
   la $a0, .tmp_156
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 27
   la $a0, .tmp_157
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 28
   la $a0, a
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 29
   la $a0, .s5
   li $v0, 4
   syscall #print_str
# quad 30
   la $a0, .s6
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 31
   la $a0, .arg_concat
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 32
   la $a0, .s7
   li $v0, 4
   syscall #print_str
# quad 34
   # .tmp_158 <- .argv[0]
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
   la $a0, .tmp_158
   la $a2, .empty_string
   jal concat
   # ----
# quad 36

   # .s8 <- .tmp_159+.tmp_158
   la $a0, .tmp_159
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_158
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s8
   jal convert_string
   #---
# quad 38
   # .tmp_160 <- .argv[1]
   li $s0, 1 # chargement de l'idx
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   lw $t0, .argc
   bge $s0, $t0, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .argv
   add $t0, $t0, $s0
   lw $a1, ($t0)
   la $a0, .tmp_160
   la $a2, .empty_string
   jal concat
   # ----
# quad 40

   # .tmp_160 <- .tmp_161/.tmp_159
   la $a0, .tmp_161
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_159
   jal convert_entier
   move $s1, $v0
   div $s0, $s1
   mflo $a0
   la $a1, .tmp_160
   jal convert_string
   #---
# quad 41
   la $a0, .tmp_161
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 42
   la $a0, .s9
   li $v0, 4
   syscall #print_str
# quad 43
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 44
   li $v0, 17
   li $a0, 0
   syscall #EXIT
