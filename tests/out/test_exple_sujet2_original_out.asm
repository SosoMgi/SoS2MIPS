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
   .align 2
   mots: .space 400 # 100*4
   .s0: .asciiz "Entrez le nombre de mots de la phrase : "
   nombre: .space 1024
   i: .space 1024
   .s1: .asciiz "1"
   .s2: .asciiz "Entrez le mot numero "
   .s3: .asciiz " : "
   .tmp_201: .space 1024
   .s4: .asciiz "1"
   new_phrase: .space 1024
   .s5: .asciiz ""
   .tmp_202: .space 1024
   .s6: .asciiz "0"
   .s7: .asciiz "1"
   .s8: .asciiz "2"
   .s9: .asciiz "3"
   .s10: .asciiz "4"
   .s11: .asciiz "5"
   .s12: .asciiz "6"
   .s13: .asciiz "7"
   .s14: .asciiz "8"
   .s15: .asciiz "9"
   .s16: .asciiz "10"
   .s17: .asciiz "11"
   .s18: .asciiz "12"
   .s19: .asciiz "13"
   .s20: .asciiz "14"
   .s21: .asciiz "15"
   .s22: .asciiz "16"
   .s23: .asciiz "17"
   .s24: .asciiz "18"
   .s25: .asciiz "19"
   .s26: .asciiz "20"
   .s27: .asciiz "21"
   .s28: .asciiz "22"
   .s29: .asciiz "23"
   .s30: .asciiz "24"
   .s31: .asciiz "25"
   .s32: .asciiz "26"
   .s33: .asciiz "27"
   .s34: .asciiz "28"
   .s35: .asciiz "29"
   .s36: .asciiz "30"
   .s37: .asciiz "31"
   .s38: .asciiz "32"
   .s39: .asciiz "33"
   .s40: .asciiz "34"
   .s41: .asciiz "35"
   .s42: .asciiz "36"
   .s43: .asciiz "37"
   .s44: .asciiz "38"
   .s45: .asciiz "39"
   .s46: .asciiz "40"
   .s47: .asciiz "41"
   .s48: .asciiz "42"
   .s49: .asciiz "43"
   .s50: .asciiz "44"
   .s51: .asciiz "45"
   .s52: .asciiz "46"
   .s53: .asciiz "47"
   .s54: .asciiz "48"
   .s55: .asciiz "49"
   .s56: .asciiz "50"
   .s57: .asciiz "51"
   .s58: .asciiz "52"
   .s59: .asciiz "53"
   .s60: .asciiz "54"
   .s61: .asciiz "55"
   .s62: .asciiz "56"
   .s63: .asciiz "57"
   .s64: .asciiz "58"
   .s65: .asciiz "59"
   .s66: .asciiz "60"
   .s67: .asciiz "61"
   .s68: .asciiz "62"
   .s69: .asciiz "63"
   .s70: .asciiz "64"
   .s71: .asciiz "65"
   .s72: .asciiz "66"
   .s73: .asciiz "67"
   .s74: .asciiz "68"
   .s75: .asciiz "69"
   .s76: .asciiz "70"
   .s77: .asciiz "71"
   .s78: .asciiz "72"
   .s79: .asciiz "73"
   .s80: .asciiz "74"
   .s81: .asciiz "75"
   .s82: .asciiz "76"
   .s83: .asciiz "77"
   .s84: .asciiz "78"
   .s85: .asciiz "79"
   .s86: .asciiz "80"
   .s87: .asciiz "81"
   .s88: .asciiz "82"
   .s89: .asciiz "83"
   .s90: .asciiz "84"
   .s91: .asciiz "85"
   .s92: .asciiz "86"
   .s93: .asciiz "87"
   .s94: .asciiz "88"
   .s95: .asciiz "89"
   .s96: .asciiz "90"
   .s97: .asciiz "91"
   .s98: .asciiz "92"
   .s99: .asciiz "93"
   .s100: .asciiz "94"
   .s101: .asciiz "95"
   .s102: .asciiz "96"
   .s103: .asciiz "97"
   .s104: .asciiz "98"
   .s105: .asciiz "99"
   mot: .space 1024
   .align 2
   .tmp_203_for_tab: .space 400 # 100*4
   .tmp_204: .space 1024
   .s106: .asciiz "0"
   .s107: .asciiz "0"
   .s108: .asciiz "1"
   .s109: .asciiz "1"
   .s110: .asciiz "2"
   .s111: .asciiz "2"
   .s112: .asciiz "3"
   .s113: .asciiz "3"
   .s114: .asciiz "4"
   .s115: .asciiz "4"
   .s116: .asciiz "5"
   .s117: .asciiz "5"
   .s118: .asciiz "6"
   .s119: .asciiz "6"
   .s120: .asciiz "7"
   .s121: .asciiz "7"
   .s122: .asciiz "8"
   .s123: .asciiz "8"
   .s124: .asciiz "9"
   .s125: .asciiz "9"
   .s126: .asciiz "10"
   .s127: .asciiz "10"
   .s128: .asciiz "11"
   .s129: .asciiz "11"
   .s130: .asciiz "12"
   .s131: .asciiz "12"
   .s132: .asciiz "13"
   .s133: .asciiz "13"
   .s134: .asciiz "14"
   .s135: .asciiz "14"
   .s136: .asciiz "15"
   .s137: .asciiz "15"
   .s138: .asciiz "16"
   .s139: .asciiz "16"
   .s140: .asciiz "17"
   .s141: .asciiz "17"
   .s142: .asciiz "18"
   .s143: .asciiz "18"
   .s144: .asciiz "19"
   .s145: .asciiz "19"
   .s146: .asciiz "20"
   .s147: .asciiz "20"
   .s148: .asciiz "21"
   .s149: .asciiz "21"
   .s150: .asciiz "22"
   .s151: .asciiz "22"
   .s152: .asciiz "23"
   .s153: .asciiz "23"
   .s154: .asciiz "24"
   .s155: .asciiz "24"
   .s156: .asciiz "25"
   .s157: .asciiz "25"
   .s158: .asciiz "26"
   .s159: .asciiz "26"
   .s160: .asciiz "27"
   .s161: .asciiz "27"
   .s162: .asciiz "28"
   .s163: .asciiz "28"
   .s164: .asciiz "29"
   .s165: .asciiz "29"
   .s166: .asciiz "30"
   .s167: .asciiz "30"
   .s168: .asciiz "31"
   .s169: .asciiz "31"
   .s170: .asciiz "32"
   .s171: .asciiz "32"
   .s172: .asciiz "33"
   .s173: .asciiz "33"
   .s174: .asciiz "34"
   .s175: .asciiz "34"
   .s176: .asciiz "35"
   .s177: .asciiz "35"
   .s178: .asciiz "36"
   .s179: .asciiz "36"
   .s180: .asciiz "37"
   .s181: .asciiz "37"
   .s182: .asciiz "38"
   .s183: .asciiz "38"
   .s184: .asciiz "39"
   .s185: .asciiz "39"
   .s186: .asciiz "40"
   .s187: .asciiz "40"
   .s188: .asciiz "41"
   .s189: .asciiz "41"
   .s190: .asciiz "42"
   .s191: .asciiz "42"
   .s192: .asciiz "43"
   .s193: .asciiz "43"
   .s194: .asciiz "44"
   .s195: .asciiz "44"
   .s196: .asciiz "45"
   .s197: .asciiz "45"
   .s198: .asciiz "46"
   .s199: .asciiz "46"
   .s200: .asciiz "47"
   .s201: .asciiz "47"
   .s202: .asciiz "48"
   .s203: .asciiz "48"
   .s204: .asciiz "49"
   .s205: .asciiz "49"
   .s206: .asciiz "50"
   .s207: .asciiz "50"
   .s208: .asciiz "51"
   .s209: .asciiz "51"
   .s210: .asciiz "52"
   .s211: .asciiz "52"
   .s212: .asciiz "53"
   .s213: .asciiz "53"
   .s214: .asciiz "54"
   .s215: .asciiz "54"
   .s216: .asciiz "55"
   .s217: .asciiz "55"
   .s218: .asciiz "56"
   .s219: .asciiz "56"
   .s220: .asciiz "57"
   .s221: .asciiz "57"
   .s222: .asciiz "58"
   .s223: .asciiz "58"
   .s224: .asciiz "59"
   .s225: .asciiz "59"
   .s226: .asciiz "60"
   .s227: .asciiz "60"
   .s228: .asciiz "61"
   .s229: .asciiz "61"
   .s230: .asciiz "62"
   .s231: .asciiz "62"
   .s232: .asciiz "63"
   .s233: .asciiz "63"
   .s234: .asciiz "64"
   .s235: .asciiz "64"
   .s236: .asciiz "65"
   .s237: .asciiz "65"
   .s238: .asciiz "66"
   .s239: .asciiz "66"
   .s240: .asciiz "67"
   .s241: .asciiz "67"
   .s242: .asciiz "68"
   .s243: .asciiz "68"
   .s244: .asciiz "69"
   .s245: .asciiz "69"
   .s246: .asciiz "70"
   .s247: .asciiz "70"
   .s248: .asciiz "71"
   .s249: .asciiz "71"
   .s250: .asciiz "72"
   .s251: .asciiz "72"
   .s252: .asciiz "73"
   .s253: .asciiz "73"
   .s254: .asciiz "74"
   .s255: .asciiz "74"
   .s256: .asciiz "75"
   .s257: .asciiz "75"
   .s258: .asciiz "76"
   .s259: .asciiz "76"
   .s260: .asciiz "77"
   .s261: .asciiz "77"
   .s262: .asciiz "78"
   .s263: .asciiz "78"
   .s264: .asciiz "79"
   .s265: .asciiz "79"
   .s266: .asciiz "80"
   .s267: .asciiz "80"
   .s268: .asciiz "81"
   .s269: .asciiz "81"
   .s270: .asciiz "82"
   .s271: .asciiz "82"
   .s272: .asciiz "83"
   .s273: .asciiz "83"
   .s274: .asciiz "84"
   .s275: .asciiz "84"
   .s276: .asciiz "85"
   .s277: .asciiz "85"
   .s278: .asciiz "86"
   .s279: .asciiz "86"
   .s280: .asciiz "87"
   .s281: .asciiz "87"
   .s282: .asciiz "88"
   .s283: .asciiz "88"
   .s284: .asciiz "89"
   .s285: .asciiz "89"
   .s286: .asciiz "90"
   .s287: .asciiz "90"
   .s288: .asciiz "91"
   .s289: .asciiz "91"
   .s290: .asciiz "92"
   .s291: .asciiz "92"
   .s292: .asciiz "93"
   .s293: .asciiz "93"
   .s294: .asciiz "94"
   .s295: .asciiz "94"
   .s296: .asciiz "95"
   .s297: .asciiz "95"
   .s298: .asciiz "96"
   .s299: .asciiz "96"
   .s300: .asciiz "97"
   .s301: .asciiz "97"
   .s302: .asciiz "98"
   .s303: .asciiz "98"
   .s304: .asciiz "99"
   .s305: .asciiz "99"
   .tmp_205_for_idx: .space 1024
   .s306: .asciiz "0"
   .s307: .asciiz "100"
   .s308: .asciiz "1"
   .tmp_206: .space 1024
   .s309: .asciiz " "
   .tmp_207: .space 1024
   .s310: .asciiz "elle"
   .tmp_208: .space 1024
   .s311: .asciiz " "
   .tmp_209: .space 1024
   .s312: .asciiz "lui"
   .tmp_210: .space 1024
   .s313: .asciiz " "
   .tmp_211: .space 1024
   .s314: .asciiz "Nouvelle phrase : "

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
# initialisation du tableau mots
   la $t0, mots
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de nombre
   la $t0, nombre
   sb $t1, 0($t0)
# initialisation de i
   la $t0, i
   sb $t1, 0($t0)
# initialisation de .tmp_201
   la $t0, .tmp_201
   sb $t1, 0($t0)
# initialisation de new_phrase
   la $t0, new_phrase
   sb $t1, 0($t0)
# initialisation de .tmp_202
   la $t0, .tmp_202
   sb $t1, 0($t0)
# initialisation de mot
   la $t0, mot
   sb $t1, 0($t0)
# initialisation du tableau .tmp_203_for_tab
   la $t0, .tmp_203_for_tab
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
   sw $t2 ($t0)
   addi $t0, $t0, 4
# initialisation de .tmp_204
   la $t0, .tmp_204
   sb $t1, 0($t0)
# initialisation de .tmp_205_for_idx
   la $t0, .tmp_205_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_206
   la $t0, .tmp_206
   sb $t1, 0($t0)
# initialisation de .tmp_207
   la $t0, .tmp_207
   sb $t1, 0($t0)
# initialisation de .tmp_208
   la $t0, .tmp_208
   sb $t1, 0($t0)
# initialisation de .tmp_209
   la $t0, .tmp_209
   sb $t1, 0($t0)
# initialisation de .tmp_210
   la $t0, .tmp_210
   sb $t1, 0($t0)
# initialisation de .tmp_211
   la $t0, .tmp_211
   sb $t1, 0($t0)
# fin des initialisations ----

# quad 1
   la $a0, .s0
   li $v0, 4
   syscall #print_str
# quad 3
   # read -> nombre
   li $v0, 8
   la $a0, .buffer_read # @ buf
   li $a1, 1024 # buf size
   syscall # read_str
   la $a0, .buffer_read
   jal strlen
   subi $t0, $v0, 1
   la $t2, .buffer_read
   add $t0, $t0, $t2
   li $t1, 0
   sb $t1, ($t0) #suppresion \n
   la $a0, .buffer_read
   jal copy_string
   la $a0, nombre # res
    move $a1, $v0 # val
   la $a2, .empty_string
   jal concat
# quad 5
   la $a0, .s1
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 6
_l2:
   la $a0, i
   jal convert_entier
   move $a1, $v0
   la $a0, nombre
   jal convert_entier
   ble $a1, $v0, _l0
# quad 7
   b _l1
# quad 8
_l0:
   la $a0, .s2
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 9
   la $a0, i
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 10
   la $a0, .s3
   li $v0, 4
   syscall #print_str
# quad 11
   # read -> 0[mots]
   li $v0, 8
   la $a0, .buffer_read # @ buf
   la $a1, 1024 # buf size
   syscall # read_str
   la $a0, .buffer_read
   jal strlen
   subi $t0, $v0, 1
   la $t2, .buffer_read
   add $t0, $t0, $t2
   li $t1, 0
   sb $t1, ($t0) #suppresion \n
   la $a0, .buffer_read
   jal copy_string
   move $s3, $v0 #stockage de la copie dans $s3
   # tab_set
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage de l'index dans $s0
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, 0 # addresse du tableau 
   add $t0, $t0, $s0 # addresse de la case 
   sw $s3, ($t0) # on stocke la copie
   # ----
# quad 13

   # .s4 <- .tmp_201+i
   la $a0, .tmp_201
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s4
   jal convert_string
   #---
# quad 14
   la $a0, .tmp_201
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 15
   b _l2
_l1:
# quad 17
   la $a0, .s5
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 19
   # .s6 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s6
   la $a2, .empty_string
   jal concat
   # ----
# quad 20
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 21
   # .s7 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s7
   la $a2, .empty_string
   jal concat
   # ----
# quad 22
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 23
   # .s8 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s8
   la $a2, .empty_string
   jal concat
   # ----
# quad 24
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 25
   # .s9 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s9
   la $a2, .empty_string
   jal concat
   # ----
# quad 26
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 27
   # .s10 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s10
   la $a2, .empty_string
   jal concat
   # ----
# quad 28
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 29
   # .s11 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s11
   la $a2, .empty_string
   jal concat
   # ----
# quad 30
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 31
   # .s12 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s12
   la $a2, .empty_string
   jal concat
   # ----
# quad 32
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 33
   # .s13 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s13
   la $a2, .empty_string
   jal concat
   # ----
# quad 34
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 35
   # .s14 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s14
   la $a2, .empty_string
   jal concat
   # ----
# quad 36
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 37
   # .s15 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s15
   la $a2, .empty_string
   jal concat
   # ----
# quad 38
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 39
   # .s16 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s16
   la $a2, .empty_string
   jal concat
   # ----
# quad 40
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 41
   # .s17 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s17
   la $a2, .empty_string
   jal concat
   # ----
# quad 42
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 43
   # .s18 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s18
   la $a2, .empty_string
   jal concat
   # ----
# quad 44
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 45
   # .s19 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s19
   la $a2, .empty_string
   jal concat
   # ----
# quad 46
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 47
   # .s20 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s20
   la $a2, .empty_string
   jal concat
   # ----
# quad 48
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 49
   # .s21 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s21
   la $a2, .empty_string
   jal concat
   # ----
# quad 50
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 51
   # .s22 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s22
   la $a2, .empty_string
   jal concat
   # ----
# quad 52
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 53
   # .s23 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s23
   la $a2, .empty_string
   jal concat
   # ----
# quad 54
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 55
   # .s24 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s24
   la $a2, .empty_string
   jal concat
   # ----
# quad 56
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 57
   # .s25 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s25
   la $a2, .empty_string
   jal concat
   # ----
# quad 58
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 59
   # .s26 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s26
   la $a2, .empty_string
   jal concat
   # ----
# quad 60
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 61
   # .s27 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s27
   la $a2, .empty_string
   jal concat
   # ----
# quad 62
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 63
   # .s28 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s28
   la $a2, .empty_string
   jal concat
   # ----
# quad 64
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 65
   # .s29 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s29
   la $a2, .empty_string
   jal concat
   # ----
# quad 66
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 67
   # .s30 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s30
   la $a2, .empty_string
   jal concat
   # ----
# quad 68
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 69
   # .s31 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s31
   la $a2, .empty_string
   jal concat
   # ----
# quad 70
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 71
   # .s32 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s32
   la $a2, .empty_string
   jal concat
   # ----
# quad 72
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 73
   # .s33 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s33
   la $a2, .empty_string
   jal concat
   # ----
# quad 74
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 75
   # .s34 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s34
   la $a2, .empty_string
   jal concat
   # ----
# quad 76
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 77
   # .s35 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s35
   la $a2, .empty_string
   jal concat
   # ----
# quad 78
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 79
   # .s36 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s36
   la $a2, .empty_string
   jal concat
   # ----
# quad 80
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 81
   # .s37 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s37
   la $a2, .empty_string
   jal concat
   # ----
# quad 82
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 83
   # .s38 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s38
   la $a2, .empty_string
   jal concat
   # ----
# quad 84
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 85
   # .s39 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s39
   la $a2, .empty_string
   jal concat
   # ----
# quad 86
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 87
   # .s40 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s40
   la $a2, .empty_string
   jal concat
   # ----
# quad 88
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 89
   # .s41 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s41
   la $a2, .empty_string
   jal concat
   # ----
# quad 90
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 91
   # .s42 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s42
   la $a2, .empty_string
   jal concat
   # ----
# quad 92
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 93
   # .s43 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s43
   la $a2, .empty_string
   jal concat
   # ----
# quad 94
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 95
   # .s44 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s44
   la $a2, .empty_string
   jal concat
   # ----
# quad 96
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 97
   # .s45 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s45
   la $a2, .empty_string
   jal concat
   # ----
# quad 98
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 99
   # .s46 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s46
   la $a2, .empty_string
   jal concat
   # ----
# quad 100
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 101
   # .s47 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s47
   la $a2, .empty_string
   jal concat
   # ----
# quad 102
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 103
   # .s48 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s48
   la $a2, .empty_string
   jal concat
   # ----
# quad 104
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 105
   # .s49 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s49
   la $a2, .empty_string
   jal concat
   # ----
# quad 106
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 107
   # .s50 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s50
   la $a2, .empty_string
   jal concat
   # ----
# quad 108
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 109
   # .s51 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s51
   la $a2, .empty_string
   jal concat
   # ----
# quad 110
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 111
   # .s52 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s52
   la $a2, .empty_string
   jal concat
   # ----
# quad 112
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 113
   # .s53 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s53
   la $a2, .empty_string
   jal concat
   # ----
# quad 114
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 115
   # .s54 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s54
   la $a2, .empty_string
   jal concat
   # ----
# quad 116
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 117
   # .s55 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s55
   la $a2, .empty_string
   jal concat
   # ----
# quad 118
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 119
   # .s56 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s56
   la $a2, .empty_string
   jal concat
   # ----
# quad 120
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 121
   # .s57 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s57
   la $a2, .empty_string
   jal concat
   # ----
# quad 122
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 123
   # .s58 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s58
   la $a2, .empty_string
   jal concat
   # ----
# quad 124
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 125
   # .s59 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s59
   la $a2, .empty_string
   jal concat
   # ----
# quad 126
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 127
   # .s60 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s60
   la $a2, .empty_string
   jal concat
   # ----
# quad 128
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 129
   # .s61 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s61
   la $a2, .empty_string
   jal concat
   # ----
# quad 130
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 131
   # .s62 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s62
   la $a2, .empty_string
   jal concat
   # ----
# quad 132
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 133
   # .s63 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s63
   la $a2, .empty_string
   jal concat
   # ----
# quad 134
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 135
   # .s64 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s64
   la $a2, .empty_string
   jal concat
   # ----
# quad 136
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 137
   # .s65 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s65
   la $a2, .empty_string
   jal concat
   # ----
# quad 138
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 139
   # .s66 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s66
   la $a2, .empty_string
   jal concat
   # ----
# quad 140
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 141
   # .s67 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s67
   la $a2, .empty_string
   jal concat
   # ----
# quad 142
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 143
   # .s68 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s68
   la $a2, .empty_string
   jal concat
   # ----
# quad 144
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 145
   # .s69 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s69
   la $a2, .empty_string
   jal concat
   # ----
# quad 146
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 147
   # .s70 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s70
   la $a2, .empty_string
   jal concat
   # ----
# quad 148
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 149
   # .s71 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s71
   la $a2, .empty_string
   jal concat
   # ----
# quad 150
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 151
   # .s72 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s72
   la $a2, .empty_string
   jal concat
   # ----
# quad 152
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 153
   # .s73 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s73
   la $a2, .empty_string
   jal concat
   # ----
# quad 154
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 155
   # .s74 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s74
   la $a2, .empty_string
   jal concat
   # ----
# quad 156
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 157
   # .s75 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s75
   la $a2, .empty_string
   jal concat
   # ----
# quad 158
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 159
   # .s76 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s76
   la $a2, .empty_string
   jal concat
   # ----
# quad 160
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 161
   # .s77 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s77
   la $a2, .empty_string
   jal concat
   # ----
# quad 162
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 163
   # .s78 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s78
   la $a2, .empty_string
   jal concat
   # ----
# quad 164
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 165
   # .s79 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s79
   la $a2, .empty_string
   jal concat
   # ----
# quad 166
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 167
   # .s80 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s80
   la $a2, .empty_string
   jal concat
   # ----
# quad 168
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 169
   # .s81 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s81
   la $a2, .empty_string
   jal concat
   # ----
# quad 170
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 171
   # .s82 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s82
   la $a2, .empty_string
   jal concat
   # ----
# quad 172
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 173
   # .s83 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s83
   la $a2, .empty_string
   jal concat
   # ----
# quad 174
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 175
   # .s84 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s84
   la $a2, .empty_string
   jal concat
   # ----
# quad 176
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 177
   # .s85 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s85
   la $a2, .empty_string
   jal concat
   # ----
# quad 178
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 179
   # .s86 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s86
   la $a2, .empty_string
   jal concat
   # ----
# quad 180
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 181
   # .s87 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s87
   la $a2, .empty_string
   jal concat
   # ----
# quad 182
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 183
   # .s88 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s88
   la $a2, .empty_string
   jal concat
   # ----
# quad 184
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 185
   # .s89 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s89
   la $a2, .empty_string
   jal concat
   # ----
# quad 186
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 187
   # .s90 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s90
   la $a2, .empty_string
   jal concat
   # ----
# quad 188
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 189
   # .s91 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s91
   la $a2, .empty_string
   jal concat
   # ----
# quad 190
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 191
   # .s92 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s92
   la $a2, .empty_string
   jal concat
   # ----
# quad 192
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 193
   # .s93 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s93
   la $a2, .empty_string
   jal concat
   # ----
# quad 194
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 195
   # .s94 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s94
   la $a2, .empty_string
   jal concat
   # ----
# quad 196
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 197
   # .s95 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s95
   la $a2, .empty_string
   jal concat
   # ----
# quad 198
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 199
   # .s96 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s96
   la $a2, .empty_string
   jal concat
   # ----
# quad 200
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 201
   # .s97 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s97
   la $a2, .empty_string
   jal concat
   # ----
# quad 202
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 203
   # .s98 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s98
   la $a2, .empty_string
   jal concat
   # ----
# quad 204
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 205
   # .s99 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s99
   la $a2, .empty_string
   jal concat
   # ----
# quad 206
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 207
   # .s100 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s100
   la $a2, .empty_string
   jal concat
   # ----
# quad 208
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 209
   # .s101 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s101
   la $a2, .empty_string
   jal concat
   # ----
# quad 210
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 211
   # .s102 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s102
   la $a2, .empty_string
   jal concat
   # ----
# quad 212
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 213
   # .s103 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s103
   la $a2, .empty_string
   jal concat
   # ----
# quad 214
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 215
   # .s104 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s104
   la $a2, .empty_string
   jal concat
   # ----
# quad 216
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 217
   # .s105 <- .tmp_202[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_202
   add $t0, $t0, $s0
   # la $t1, .tmp_202
   lw $a1, ($t0)
   la $a0, .s105
   la $a2, .empty_string
   jal concat
   # ----
# quad 218
   la $a0, .tmp_202
   li $v0, 4
   syscall #print_str
# quad 222
   # .s106 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s106
   la $a2, .empty_string
   jal concat
   # ----
# quad 223
   # .tmp_204[.tmp_203_for_tab] <- .s107
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s107 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 224
   # .s108 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s108
   la $a2, .empty_string
   jal concat
   # ----
# quad 225
   # .tmp_204[.tmp_203_for_tab] <- .s109
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s109 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 226
   # .s110 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s110
   la $a2, .empty_string
   jal concat
   # ----
# quad 227
   # .tmp_204[.tmp_203_for_tab] <- .s111
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s111 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 228
   # .s112 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s112
   la $a2, .empty_string
   jal concat
   # ----
# quad 229
   # .tmp_204[.tmp_203_for_tab] <- .s113
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s113 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 230
   # .s114 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s114
   la $a2, .empty_string
   jal concat
   # ----
# quad 231
   # .tmp_204[.tmp_203_for_tab] <- .s115
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s115 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 232
   # .s116 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s116
   la $a2, .empty_string
   jal concat
   # ----
# quad 233
   # .tmp_204[.tmp_203_for_tab] <- .s117
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s117 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 234
   # .s118 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s118
   la $a2, .empty_string
   jal concat
   # ----
# quad 235
   # .tmp_204[.tmp_203_for_tab] <- .s119
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s119 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 236
   # .s120 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s120
   la $a2, .empty_string
   jal concat
   # ----
# quad 237
   # .tmp_204[.tmp_203_for_tab] <- .s121
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s121 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 238
   # .s122 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s122
   la $a2, .empty_string
   jal concat
   # ----
# quad 239
   # .tmp_204[.tmp_203_for_tab] <- .s123
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s123 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 240
   # .s124 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s124
   la $a2, .empty_string
   jal concat
   # ----
# quad 241
   # .tmp_204[.tmp_203_for_tab] <- .s125
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s125 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 242
   # .s126 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s126
   la $a2, .empty_string
   jal concat
   # ----
# quad 243
   # .tmp_204[.tmp_203_for_tab] <- .s127
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s127 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 244
   # .s128 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s128
   la $a2, .empty_string
   jal concat
   # ----
# quad 245
   # .tmp_204[.tmp_203_for_tab] <- .s129
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s129 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 246
   # .s130 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s130
   la $a2, .empty_string
   jal concat
   # ----
# quad 247
   # .tmp_204[.tmp_203_for_tab] <- .s131
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s131 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 248
   # .s132 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s132
   la $a2, .empty_string
   jal concat
   # ----
# quad 249
   # .tmp_204[.tmp_203_for_tab] <- .s133
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s133 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 250
   # .s134 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s134
   la $a2, .empty_string
   jal concat
   # ----
# quad 251
   # .tmp_204[.tmp_203_for_tab] <- .s135
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s135 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 252
   # .s136 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s136
   la $a2, .empty_string
   jal concat
   # ----
# quad 253
   # .tmp_204[.tmp_203_for_tab] <- .s137
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s137 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 254
   # .s138 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s138
   la $a2, .empty_string
   jal concat
   # ----
# quad 255
   # .tmp_204[.tmp_203_for_tab] <- .s139
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s139 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 256
   # .s140 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s140
   la $a2, .empty_string
   jal concat
   # ----
# quad 257
   # .tmp_204[.tmp_203_for_tab] <- .s141
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s141 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 258
   # .s142 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s142
   la $a2, .empty_string
   jal concat
   # ----
# quad 259
   # .tmp_204[.tmp_203_for_tab] <- .s143
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s143 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 260
   # .s144 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s144
   la $a2, .empty_string
   jal concat
   # ----
# quad 261
   # .tmp_204[.tmp_203_for_tab] <- .s145
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s145 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 262
   # .s146 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s146
   la $a2, .empty_string
   jal concat
   # ----
# quad 263
   # .tmp_204[.tmp_203_for_tab] <- .s147
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s147 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 264
   # .s148 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s148
   la $a2, .empty_string
   jal concat
   # ----
# quad 265
   # .tmp_204[.tmp_203_for_tab] <- .s149
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s149 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 266
   # .s150 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s150
   la $a2, .empty_string
   jal concat
   # ----
# quad 267
   # .tmp_204[.tmp_203_for_tab] <- .s151
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s151 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 268
   # .s152 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s152
   la $a2, .empty_string
   jal concat
   # ----
# quad 269
   # .tmp_204[.tmp_203_for_tab] <- .s153
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s153 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 270
   # .s154 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s154
   la $a2, .empty_string
   jal concat
   # ----
# quad 271
   # .tmp_204[.tmp_203_for_tab] <- .s155
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s155 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 272
   # .s156 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s156
   la $a2, .empty_string
   jal concat
   # ----
# quad 273
   # .tmp_204[.tmp_203_for_tab] <- .s157
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s157 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 274
   # .s158 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s158
   la $a2, .empty_string
   jal concat
   # ----
# quad 275
   # .tmp_204[.tmp_203_for_tab] <- .s159
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s159 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 276
   # .s160 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s160
   la $a2, .empty_string
   jal concat
   # ----
# quad 277
   # .tmp_204[.tmp_203_for_tab] <- .s161
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s161 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 278
   # .s162 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s162
   la $a2, .empty_string
   jal concat
   # ----
# quad 279
   # .tmp_204[.tmp_203_for_tab] <- .s163
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s163 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 280
   # .s164 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s164
   la $a2, .empty_string
   jal concat
   # ----
# quad 281
   # .tmp_204[.tmp_203_for_tab] <- .s165
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s165 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 282
   # .s166 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s166
   la $a2, .empty_string
   jal concat
   # ----
# quad 283
   # .tmp_204[.tmp_203_for_tab] <- .s167
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s167 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 284
   # .s168 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s168
   la $a2, .empty_string
   jal concat
   # ----
# quad 285
   # .tmp_204[.tmp_203_for_tab] <- .s169
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s169 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 286
   # .s170 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s170
   la $a2, .empty_string
   jal concat
   # ----
# quad 287
   # .tmp_204[.tmp_203_for_tab] <- .s171
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s171 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 288
   # .s172 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s172
   la $a2, .empty_string
   jal concat
   # ----
# quad 289
   # .tmp_204[.tmp_203_for_tab] <- .s173
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s173 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 290
   # .s174 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s174
   la $a2, .empty_string
   jal concat
   # ----
# quad 291
   # .tmp_204[.tmp_203_for_tab] <- .s175
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s175 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 292
   # .s176 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s176
   la $a2, .empty_string
   jal concat
   # ----
# quad 293
   # .tmp_204[.tmp_203_for_tab] <- .s177
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s177 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 294
   # .s178 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s178
   la $a2, .empty_string
   jal concat
   # ----
# quad 295
   # .tmp_204[.tmp_203_for_tab] <- .s179
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s179 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 296
   # .s180 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s180
   la $a2, .empty_string
   jal concat
   # ----
# quad 297
   # .tmp_204[.tmp_203_for_tab] <- .s181
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s181 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 298
   # .s182 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s182
   la $a2, .empty_string
   jal concat
   # ----
# quad 299
   # .tmp_204[.tmp_203_for_tab] <- .s183
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s183 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 300
   # .s184 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s184
   la $a2, .empty_string
   jal concat
   # ----
# quad 301
   # .tmp_204[.tmp_203_for_tab] <- .s185
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s185 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 302
   # .s186 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s186
   la $a2, .empty_string
   jal concat
   # ----
# quad 303
   # .tmp_204[.tmp_203_for_tab] <- .s187
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s187 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 304
   # .s188 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s188
   la $a2, .empty_string
   jal concat
   # ----
# quad 305
   # .tmp_204[.tmp_203_for_tab] <- .s189
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s189 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 306
   # .s190 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s190
   la $a2, .empty_string
   jal concat
   # ----
# quad 307
   # .tmp_204[.tmp_203_for_tab] <- .s191
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s191 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 308
   # .s192 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s192
   la $a2, .empty_string
   jal concat
   # ----
# quad 309
   # .tmp_204[.tmp_203_for_tab] <- .s193
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s193 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 310
   # .s194 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s194
   la $a2, .empty_string
   jal concat
   # ----
# quad 311
   # .tmp_204[.tmp_203_for_tab] <- .s195
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s195 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 312
   # .s196 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s196
   la $a2, .empty_string
   jal concat
   # ----
# quad 313
   # .tmp_204[.tmp_203_for_tab] <- .s197
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s197 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 314
   # .s198 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s198
   la $a2, .empty_string
   jal concat
   # ----
# quad 315
   # .tmp_204[.tmp_203_for_tab] <- .s199
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s199 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 316
   # .s200 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s200
   la $a2, .empty_string
   jal concat
   # ----
# quad 317
   # .tmp_204[.tmp_203_for_tab] <- .s201
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s201 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 318
   # .s202 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s202
   la $a2, .empty_string
   jal concat
   # ----
# quad 319
   # .tmp_204[.tmp_203_for_tab] <- .s203
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s203 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 320
   # .s204 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s204
   la $a2, .empty_string
   jal concat
   # ----
# quad 321
   # .tmp_204[.tmp_203_for_tab] <- .s205
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s205 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 322
   # .s206 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s206
   la $a2, .empty_string
   jal concat
   # ----
# quad 323
   # .tmp_204[.tmp_203_for_tab] <- .s207
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s207 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 324
   # .s208 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s208
   la $a2, .empty_string
   jal concat
   # ----
# quad 325
   # .tmp_204[.tmp_203_for_tab] <- .s209
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s209 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 326
   # .s210 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s210
   la $a2, .empty_string
   jal concat
   # ----
# quad 327
   # .tmp_204[.tmp_203_for_tab] <- .s211
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s211 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 328
   # .s212 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s212
   la $a2, .empty_string
   jal concat
   # ----
# quad 329
   # .tmp_204[.tmp_203_for_tab] <- .s213
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s213 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 330
   # .s214 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s214
   la $a2, .empty_string
   jal concat
   # ----
# quad 331
   # .tmp_204[.tmp_203_for_tab] <- .s215
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s215 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 332
   # .s216 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s216
   la $a2, .empty_string
   jal concat
   # ----
# quad 333
   # .tmp_204[.tmp_203_for_tab] <- .s217
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s217 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 334
   # .s218 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s218
   la $a2, .empty_string
   jal concat
   # ----
# quad 335
   # .tmp_204[.tmp_203_for_tab] <- .s219
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s219 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 336
   # .s220 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s220
   la $a2, .empty_string
   jal concat
   # ----
# quad 337
   # .tmp_204[.tmp_203_for_tab] <- .s221
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s221 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 338
   # .s222 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s222
   la $a2, .empty_string
   jal concat
   # ----
# quad 339
   # .tmp_204[.tmp_203_for_tab] <- .s223
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s223 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 340
   # .s224 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s224
   la $a2, .empty_string
   jal concat
   # ----
# quad 341
   # .tmp_204[.tmp_203_for_tab] <- .s225
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s225 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 342
   # .s226 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s226
   la $a2, .empty_string
   jal concat
   # ----
# quad 343
   # .tmp_204[.tmp_203_for_tab] <- .s227
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s227 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 344
   # .s228 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s228
   la $a2, .empty_string
   jal concat
   # ----
# quad 345
   # .tmp_204[.tmp_203_for_tab] <- .s229
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s229 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 346
   # .s230 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s230
   la $a2, .empty_string
   jal concat
   # ----
# quad 347
   # .tmp_204[.tmp_203_for_tab] <- .s231
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s231 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 348
   # .s232 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s232
   la $a2, .empty_string
   jal concat
   # ----
# quad 349
   # .tmp_204[.tmp_203_for_tab] <- .s233
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s233 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 350
   # .s234 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s234
   la $a2, .empty_string
   jal concat
   # ----
# quad 351
   # .tmp_204[.tmp_203_for_tab] <- .s235
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s235 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 352
   # .s236 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s236
   la $a2, .empty_string
   jal concat
   # ----
# quad 353
   # .tmp_204[.tmp_203_for_tab] <- .s237
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s237 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 354
   # .s238 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s238
   la $a2, .empty_string
   jal concat
   # ----
# quad 355
   # .tmp_204[.tmp_203_for_tab] <- .s239
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s239 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 356
   # .s240 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s240
   la $a2, .empty_string
   jal concat
   # ----
# quad 357
   # .tmp_204[.tmp_203_for_tab] <- .s241
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s241 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 358
   # .s242 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s242
   la $a2, .empty_string
   jal concat
   # ----
# quad 359
   # .tmp_204[.tmp_203_for_tab] <- .s243
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s243 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 360
   # .s244 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s244
   la $a2, .empty_string
   jal concat
   # ----
# quad 361
   # .tmp_204[.tmp_203_for_tab] <- .s245
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s245 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 362
   # .s246 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s246
   la $a2, .empty_string
   jal concat
   # ----
# quad 363
   # .tmp_204[.tmp_203_for_tab] <- .s247
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s247 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 364
   # .s248 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s248
   la $a2, .empty_string
   jal concat
   # ----
# quad 365
   # .tmp_204[.tmp_203_for_tab] <- .s249
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s249 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 366
   # .s250 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s250
   la $a2, .empty_string
   jal concat
   # ----
# quad 367
   # .tmp_204[.tmp_203_for_tab] <- .s251
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s251 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 368
   # .s252 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s252
   la $a2, .empty_string
   jal concat
   # ----
# quad 369
   # .tmp_204[.tmp_203_for_tab] <- .s253
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s253 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 370
   # .s254 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s254
   la $a2, .empty_string
   jal concat
   # ----
# quad 371
   # .tmp_204[.tmp_203_for_tab] <- .s255
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s255 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 372
   # .s256 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s256
   la $a2, .empty_string
   jal concat
   # ----
# quad 373
   # .tmp_204[.tmp_203_for_tab] <- .s257
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s257 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 374
   # .s258 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s258
   la $a2, .empty_string
   jal concat
   # ----
# quad 375
   # .tmp_204[.tmp_203_for_tab] <- .s259
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s259 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 376
   # .s260 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s260
   la $a2, .empty_string
   jal concat
   # ----
# quad 377
   # .tmp_204[.tmp_203_for_tab] <- .s261
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s261 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 378
   # .s262 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s262
   la $a2, .empty_string
   jal concat
   # ----
# quad 379
   # .tmp_204[.tmp_203_for_tab] <- .s263
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s263 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 380
   # .s264 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s264
   la $a2, .empty_string
   jal concat
   # ----
# quad 381
   # .tmp_204[.tmp_203_for_tab] <- .s265
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s265 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 382
   # .s266 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s266
   la $a2, .empty_string
   jal concat
   # ----
# quad 383
   # .tmp_204[.tmp_203_for_tab] <- .s267
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s267 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 384
   # .s268 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s268
   la $a2, .empty_string
   jal concat
   # ----
# quad 385
   # .tmp_204[.tmp_203_for_tab] <- .s269
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s269 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 386
   # .s270 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s270
   la $a2, .empty_string
   jal concat
   # ----
# quad 387
   # .tmp_204[.tmp_203_for_tab] <- .s271
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s271 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 388
   # .s272 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s272
   la $a2, .empty_string
   jal concat
   # ----
# quad 389
   # .tmp_204[.tmp_203_for_tab] <- .s273
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s273 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 390
   # .s274 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s274
   la $a2, .empty_string
   jal concat
   # ----
# quad 391
   # .tmp_204[.tmp_203_for_tab] <- .s275
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s275 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 392
   # .s276 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s276
   la $a2, .empty_string
   jal concat
   # ----
# quad 393
   # .tmp_204[.tmp_203_for_tab] <- .s277
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s277 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 394
   # .s278 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s278
   la $a2, .empty_string
   jal concat
   # ----
# quad 395
   # .tmp_204[.tmp_203_for_tab] <- .s279
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s279 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 396
   # .s280 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s280
   la $a2, .empty_string
   jal concat
   # ----
# quad 397
   # .tmp_204[.tmp_203_for_tab] <- .s281
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s281 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 398
   # .s282 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s282
   la $a2, .empty_string
   jal concat
   # ----
# quad 399
   # .tmp_204[.tmp_203_for_tab] <- .s283
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s283 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 400
   # .s284 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s284
   la $a2, .empty_string
   jal concat
   # ----
# quad 401
   # .tmp_204[.tmp_203_for_tab] <- .s285
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s285 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 402
   # .s286 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s286
   la $a2, .empty_string
   jal concat
   # ----
# quad 403
   # .tmp_204[.tmp_203_for_tab] <- .s287
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s287 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 404
   # .s288 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s288
   la $a2, .empty_string
   jal concat
   # ----
# quad 405
   # .tmp_204[.tmp_203_for_tab] <- .s289
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s289 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 406
   # .s290 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s290
   la $a2, .empty_string
   jal concat
   # ----
# quad 407
   # .tmp_204[.tmp_203_for_tab] <- .s291
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s291 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 408
   # .s292 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s292
   la $a2, .empty_string
   jal concat
   # ----
# quad 409
   # .tmp_204[.tmp_203_for_tab] <- .s293
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s293 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 410
   # .s294 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s294
   la $a2, .empty_string
   jal concat
   # ----
# quad 411
   # .tmp_204[.tmp_203_for_tab] <- .s295
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s295 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 412
   # .s296 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s296
   la $a2, .empty_string
   jal concat
   # ----
# quad 413
   # .tmp_204[.tmp_203_for_tab] <- .s297
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s297 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 414
   # .s298 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s298
   la $a2, .empty_string
   jal concat
   # ----
# quad 415
   # .tmp_204[.tmp_203_for_tab] <- .s299
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s299 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 416
   # .s300 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s300
   la $a2, .empty_string
   jal concat
   # ----
# quad 417
   # .tmp_204[.tmp_203_for_tab] <- .s301
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s301 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 418
   # .s302 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s302
   la $a2, .empty_string
   jal concat
   # ----
# quad 419
   # .tmp_204[.tmp_203_for_tab] <- .s303
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s303 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 420
   # .s304 <- .tmp_204[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   # la $t1, .tmp_204
   lw $a1, ($t0)
   la $a0, .s304
   la $a2, .empty_string
   jal concat
   # ----
# quad 421
   # .tmp_204[.tmp_203_for_tab] <- .s305
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s305 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_204
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 423
   la $a0, .s306
   la $a1, .tmp_205_for_idx
   la $a2, .empty_string
   jal concat
# quad 424
_l5:
   la $a0, .tmp_205_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s307
   jal convert_entier
   blt $a1, $v0, _l3
# quad 425
   b _l4
# quad 426
_l3:
   # .tmp_205_for_idx <- mot[.tmp_203_for_tab]
   la $a0, .tmp_203_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, mot
   add $t0, $t0, $s0
   # la $t1, mot
   lw $a1, ($t0)
   la $a0, .tmp_205_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 427

   # .s308 <- .tmp_205_for_idx+.tmp_205_for_idx
   la $a0, .tmp_205_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_205_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s308
   jal convert_string
   #---
# quad 429
   la $a0, .s309
   la $a1, .tmp_206
   la $a2, new_phrase
   jal concat
# quad 431
   la $a0, .s310
   la $a1, .tmp_207
   la $a2, .tmp_206
   jal concat
# quad 432
   la $a0, .tmp_207
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 434
   la $a0, .s311
   la $a1, .tmp_208
   la $a2, new_phrase
   jal concat
# quad 436
   la $a0, .s312
   la $a1, .tmp_209
   la $a2, .tmp_208
   jal concat
# quad 437
   la $a0, .tmp_209
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 439
   la $a0, .s313
   la $a1, .tmp_210
   la $a2, new_phrase
   jal concat
# quad 441
   la $a0, mot
   la $a1, .tmp_211
   la $a2, .tmp_210
   jal concat
# quad 442
   la $a0, .tmp_211
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 443
   b _l5
# quad 444
_l4:
   la $a0, .s314
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 445
   la $a0, new_phrase
   li $v0, 4
   syscall #print_str
# quad 446
   li $v0, 17
   li $a0, 0
   syscall #EXIT
