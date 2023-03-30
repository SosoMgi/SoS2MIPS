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
   .s0: .asciiz "début test_tab_2 (simple)\n"
   .align 2
   tab: .space 12 # 3*4
   .s1: .asciiz "0"
   .s2: .asciiz "0"
   .s3: .asciiz "1"
   .s4: .asciiz "1"
   .tmp_163: .space 1024
   .s5: .asciiz "0"
   .tmp_164: .space 1024
   .s6: .asciiz "1"
   .tmp_165: .space 1024
   .s7: .asciiz "2"
   .s8: .asciiz "|"
   .s9: .asciiz "|"
   .s10: .asciiz "\n"
   .tmp_166: .space 1024
   .s11: .asciiz "0"
   .s12: .asciiz "1"
   .s13: .asciiz "2"
   .s14: .asciiz "\n"
   .tmp_167: .space 1024
   .s15: .asciiz "0"
   tmp: .space 1024
   .tmp_168: .space 1024
   .s16: .asciiz "1"
   .s17: .asciiz "0"
   .s18: .asciiz "1"
   .tmp_169: .space 1024
   .s19: .asciiz "0"
   .s20: .asciiz "1"
   .s21: .asciiz "2"
   .s22: .asciiz "\n"
   .s23: .asciiz "--------------\n"
   .tmp_170: .space 1024
   .s24: .asciiz "0"
   .tmp_171: .space 1024
   .tmp_172: .space 1024
   .s25: .asciiz "1"
   .tmp_173: .space 1024
   tmp2: .space 1024
   .s26: .asciiz "0"
   .s27: .asciiz "1"
   .tmp_174: .space 1024
   .s28: .asciiz "0"
   .s29: .asciiz "1"
   .s30: .asciiz "2"
   .s31: .asciiz "\n"
   a: .space 1024
   .s32: .asciiz "1"
   .tmp_175: .space 1024
   .s33: .asciiz "5"
   .tmp_176: .space 1024
   .s34: .asciiz "0"
   .s35: .asciiz "1"
   .s36: .asciiz "2"
   .s37: .asciiz "\n"
   .s38: .asciiz "fin\n"

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
# initialisation de .tmp_163
   la $t0, .tmp_163
   sb $t1, 0($t0)
# initialisation de .tmp_164
   la $t0, .tmp_164
   sb $t1, 0($t0)
# initialisation de .tmp_165
   la $t0, .tmp_165
   sb $t1, 0($t0)
# initialisation de .tmp_166
   la $t0, .tmp_166
   sb $t1, 0($t0)
# initialisation de .tmp_167
   la $t0, .tmp_167
   sb $t1, 0($t0)
# initialisation de tmp
   la $t0, tmp
   sb $t1, 0($t0)
# initialisation de .tmp_168
   la $t0, .tmp_168
   sb $t1, 0($t0)
# initialisation de .tmp_169
   la $t0, .tmp_169
   sb $t1, 0($t0)
# initialisation de .tmp_170
   la $t0, .tmp_170
   sb $t1, 0($t0)
# initialisation de .tmp_171
   la $t0, .tmp_171
   sb $t1, 0($t0)
# initialisation de .tmp_172
   la $t0, .tmp_172
   sb $t1, 0($t0)
# initialisation de .tmp_173
   la $t0, .tmp_173
   sb $t1, 0($t0)
# initialisation de tmp2
   la $t0, tmp2
   sb $t1, 0($t0)
# initialisation de .tmp_174
   la $t0, .tmp_174
   sb $t1, 0($t0)
# initialisation de a
   la $t0, a
   sb $t1, 0($t0)
# initialisation de .tmp_175
   la $t0, .tmp_175
   sb $t1, 0($t0)
# initialisation de .tmp_176
   la $t0, .tmp_176
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 0
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 2
   # .s2[tab] <- .s1
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s1 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s2
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 3
   # .s4[tab] <- .s3
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s3 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .s4
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 5
   # .s5 <- .tmp_163[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_163
   add $t0, $t0, $s0
   # la $t1, .tmp_163
   lw $a1, ($t0)
   la $a0, .s5
   la $a2, .empty_string
   jal concat
   # ----
# quad 7
   # .s6 <- .tmp_164[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_164
   add $t0, $t0, $s0
   # la $t1, .tmp_164
   lw $a1, ($t0)
   la $a0, .s6
   la $a2, .empty_string
   jal concat
   # ----
# quad 9
   # .s7 <- .tmp_165[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_165
   add $t0, $t0, $s0
   # la $t1, .tmp_165
   lw $a1, ($t0)
   la $a0, .s7
   la $a2, .empty_string
   jal concat
   # ----
# quad 10
   la $a0, .tmp_163
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 11
   la $a0, .s8
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 12
   la $a0, .tmp_164
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 13
   la $a0, .s9
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 14
   la $a0, .tmp_165
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 15
   la $a0, .s10
   li $v0, 4
   syscall #print_str
# quad 17
   # .s11 <- .tmp_166[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_166
   add $t0, $t0, $s0
   # la $t1, .tmp_166
   lw $a1, ($t0)
   la $a0, .s11
   la $a2, .empty_string
   jal concat
   # ----
# quad 18
   la $a0, .tmp_166
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 19
   # .s12 <- .tmp_166[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_166
   add $t0, $t0, $s0
   # la $t1, .tmp_166
   lw $a1, ($t0)
   la $a0, .s12
   la $a2, .empty_string
   jal concat
   # ----
# quad 20
   la $a0, .tmp_166
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 21
   # .s13 <- .tmp_166[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_166
   add $t0, $t0, $s0
   # la $t1, .tmp_166
   lw $a1, ($t0)
   la $a0, .s13
   la $a2, .empty_string
   jal concat
   # ----
# quad 22
   la $a0, .tmp_166
   li $v0, 4
   syscall #print_str
# quad 23
   la $a0, .s14
   li $v0, 4
   syscall #print_str
# quad 25
   # .s15 <- .tmp_167[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_167
   add $t0, $t0, $s0
   # la $t1, .tmp_167
   lw $a1, ($t0)
   la $a0, .s15
   la $a2, .empty_string
   jal concat
   # ----
# quad 27
   la $a0, .tmp_167
   la $a1, tmp
   la $a2, .empty_string
   jal concat
# quad 29
   # .s16 <- .tmp_168[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_168
   add $t0, $t0, $s0
   # la $t1, .tmp_168
   lw $a1, ($t0)
   la $a0, .s16
   la $a2, .empty_string
   jal concat
   # ----
# quad 30
   # .tmp_168[tab] <- .s17
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s17 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_168
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 31
   # tmp[tab] <- .s18
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s18 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, tmp
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 33
   # .s19 <- .tmp_169[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_169
   add $t0, $t0, $s0
   # la $t1, .tmp_169
   lw $a1, ($t0)
   la $a0, .s19
   la $a2, .empty_string
   jal concat
   # ----
# quad 34
   la $a0, .tmp_169
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 35
   # .s20 <- .tmp_169[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_169
   add $t0, $t0, $s0
   # la $t1, .tmp_169
   lw $a1, ($t0)
   la $a0, .s20
   la $a2, .empty_string
   jal concat
   # ----
# quad 36
   la $a0, .tmp_169
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 37
   # .s21 <- .tmp_169[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_169
   add $t0, $t0, $s0
   # la $t1, .tmp_169
   lw $a1, ($t0)
   la $a0, .s21
   la $a2, .empty_string
   jal concat
   # ----
# quad 38
   la $a0, .tmp_169
   li $v0, 4
   syscall #print_str
# quad 39
   la $a0, .s22
   li $v0, 4
   syscall #print_str
# quad 40
   la $a0, .s23
   li $v0, 4
   syscall #print_str
# quad 42
   # .s24 <- .tmp_170[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_170
   add $t0, $t0, $s0
   # la $t1, .tmp_170
   lw $a1, ($t0)
   la $a0, .s24
   la $a2, .empty_string
   jal concat
   # ----
# quad 44
   # .tmp_170 <- .tmp_171[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_171
   add $t0, $t0, $s0
   # la $t1, .tmp_171
   lw $a1, ($t0)
   la $a0, .tmp_170
   la $a2, .empty_string
   jal concat
   # ----
# quad 45
   la $a0, .tmp_171
   la $a1, tmp
   la $a2, .empty_string
   jal concat
# quad 47
   # .s25 <- .tmp_172[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_172
   add $t0, $t0, $s0
   # la $t1, .tmp_172
   lw $a1, ($t0)
   la $a0, .s25
   la $a2, .empty_string
   jal concat
   # ----
# quad 49
   # .tmp_172 <- .tmp_173[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_173
   add $t0, $t0, $s0
   # la $t1, .tmp_173
   lw $a1, ($t0)
   la $a0, .tmp_172
   la $a2, .empty_string
   jal concat
   # ----
# quad 51
   la $a0, .tmp_173
   la $a1, tmp2
   la $a2, .empty_string
   jal concat
# quad 52
   # tmp[tab] <- .s26
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s26 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, tmp
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 53
   # tmp2[tab] <- .s27
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s27 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, tmp2
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 55
   # .s28 <- .tmp_174[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_174
   add $t0, $t0, $s0
   # la $t1, .tmp_174
   lw $a1, ($t0)
   la $a0, .s28
   la $a2, .empty_string
   jal concat
   # ----
# quad 56
   la $a0, .tmp_174
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 57
   # .s29 <- .tmp_174[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_174
   add $t0, $t0, $s0
   # la $t1, .tmp_174
   lw $a1, ($t0)
   la $a0, .s29
   la $a2, .empty_string
   jal concat
   # ----
# quad 58
   la $a0, .tmp_174
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 59
   # .s30 <- .tmp_174[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_174
   add $t0, $t0, $s0
   # la $t1, .tmp_174
   lw $a1, ($t0)
   la $a0, .s30
   la $a2, .empty_string
   jal concat
   # ----
# quad 60
   la $a0, .tmp_174
   li $v0, 4
   syscall #print_str
# quad 61
   la $a0, .s31
   li $v0, 4
   syscall #print_str
# quad 63
   la $a0, .s32
   la $a1, a
   la $a2, .empty_string
   jal concat
# quad 65

   # .s33 <- .tmp_175*a
   la $a0, .tmp_175
   jal convert_entier
   move $s0, $v0
   la $a0, a
   jal convert_entier
   move $s1, $v0
   mul $a0, $s0, $s1
   la $a1, .s33
   jal convert_string
   #---
# quad 66
   # .tmp_175[tab] <- a
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, a # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_175
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 68
   # .s34 <- .tmp_176[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_176
   add $t0, $t0, $s0
   # la $t1, .tmp_176
   lw $a1, ($t0)
   la $a0, .s34
   la $a2, .empty_string
   jal concat
   # ----
# quad 69
   la $a0, .tmp_176
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 70
   # .s35 <- .tmp_176[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_176
   add $t0, $t0, $s0
   # la $t1, .tmp_176
   lw $a1, ($t0)
   la $a0, .s35
   la $a2, .empty_string
   jal concat
   # ----
# quad 71
   la $a0, .tmp_176
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 72
   # .s36 <- .tmp_176[tab]
   la $a0, tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 3, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_176
   add $t0, $t0, $s0
   # la $t1, .tmp_176
   lw $a1, ($t0)
   la $a0, .s36
   la $a2, .empty_string
   jal concat
   # ----
# quad 73
   la $a0, .tmp_176
   li $v0, 4
   syscall #print_str
# quad 74
   la $a0, .s37
   li $v0, 4
   syscall #print_str
# quad 75
   la $a0, .s38
   li $v0, 4
   syscall #print_str
# quad 76
   li $v0, 17
   li $a0, 0
   syscall #EXIT
