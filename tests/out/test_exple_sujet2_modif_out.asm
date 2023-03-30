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
   .s1: .asciiz "0"
   .tmp_212: .space 1024
   .s2: .asciiz "1"
   .s3: .asciiz "Entrez le mot numero "
   .s4: .asciiz " : "
   .tmp_213: .space 1024
   .s5: .asciiz "1"
   .tmp_214: .space 1024
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
   .s106: .asciiz "\n"
   new_phrase: .space 1024
   .s107: .asciiz ""
   mot: .space 1024
   .align 2
   .tmp_215_for_tab: .space 400 # 100*4
   .tmp_216: .space 1024
   .s108: .asciiz "0"
   .s109: .asciiz "0"
   .s110: .asciiz "1"
   .s111: .asciiz "1"
   .s112: .asciiz "2"
   .s113: .asciiz "2"
   .s114: .asciiz "3"
   .s115: .asciiz "3"
   .s116: .asciiz "4"
   .s117: .asciiz "4"
   .s118: .asciiz "5"
   .s119: .asciiz "5"
   .s120: .asciiz "6"
   .s121: .asciiz "6"
   .s122: .asciiz "7"
   .s123: .asciiz "7"
   .s124: .asciiz "8"
   .s125: .asciiz "8"
   .s126: .asciiz "9"
   .s127: .asciiz "9"
   .s128: .asciiz "10"
   .s129: .asciiz "10"
   .s130: .asciiz "11"
   .s131: .asciiz "11"
   .s132: .asciiz "12"
   .s133: .asciiz "12"
   .s134: .asciiz "13"
   .s135: .asciiz "13"
   .s136: .asciiz "14"
   .s137: .asciiz "14"
   .s138: .asciiz "15"
   .s139: .asciiz "15"
   .s140: .asciiz "16"
   .s141: .asciiz "16"
   .s142: .asciiz "17"
   .s143: .asciiz "17"
   .s144: .asciiz "18"
   .s145: .asciiz "18"
   .s146: .asciiz "19"
   .s147: .asciiz "19"
   .s148: .asciiz "20"
   .s149: .asciiz "20"
   .s150: .asciiz "21"
   .s151: .asciiz "21"
   .s152: .asciiz "22"
   .s153: .asciiz "22"
   .s154: .asciiz "23"
   .s155: .asciiz "23"
   .s156: .asciiz "24"
   .s157: .asciiz "24"
   .s158: .asciiz "25"
   .s159: .asciiz "25"
   .s160: .asciiz "26"
   .s161: .asciiz "26"
   .s162: .asciiz "27"
   .s163: .asciiz "27"
   .s164: .asciiz "28"
   .s165: .asciiz "28"
   .s166: .asciiz "29"
   .s167: .asciiz "29"
   .s168: .asciiz "30"
   .s169: .asciiz "30"
   .s170: .asciiz "31"
   .s171: .asciiz "31"
   .s172: .asciiz "32"
   .s173: .asciiz "32"
   .s174: .asciiz "33"
   .s175: .asciiz "33"
   .s176: .asciiz "34"
   .s177: .asciiz "34"
   .s178: .asciiz "35"
   .s179: .asciiz "35"
   .s180: .asciiz "36"
   .s181: .asciiz "36"
   .s182: .asciiz "37"
   .s183: .asciiz "37"
   .s184: .asciiz "38"
   .s185: .asciiz "38"
   .s186: .asciiz "39"
   .s187: .asciiz "39"
   .s188: .asciiz "40"
   .s189: .asciiz "40"
   .s190: .asciiz "41"
   .s191: .asciiz "41"
   .s192: .asciiz "42"
   .s193: .asciiz "42"
   .s194: .asciiz "43"
   .s195: .asciiz "43"
   .s196: .asciiz "44"
   .s197: .asciiz "44"
   .s198: .asciiz "45"
   .s199: .asciiz "45"
   .s200: .asciiz "46"
   .s201: .asciiz "46"
   .s202: .asciiz "47"
   .s203: .asciiz "47"
   .s204: .asciiz "48"
   .s205: .asciiz "48"
   .s206: .asciiz "49"
   .s207: .asciiz "49"
   .s208: .asciiz "50"
   .s209: .asciiz "50"
   .s210: .asciiz "51"
   .s211: .asciiz "51"
   .s212: .asciiz "52"
   .s213: .asciiz "52"
   .s214: .asciiz "53"
   .s215: .asciiz "53"
   .s216: .asciiz "54"
   .s217: .asciiz "54"
   .s218: .asciiz "55"
   .s219: .asciiz "55"
   .s220: .asciiz "56"
   .s221: .asciiz "56"
   .s222: .asciiz "57"
   .s223: .asciiz "57"
   .s224: .asciiz "58"
   .s225: .asciiz "58"
   .s226: .asciiz "59"
   .s227: .asciiz "59"
   .s228: .asciiz "60"
   .s229: .asciiz "60"
   .s230: .asciiz "61"
   .s231: .asciiz "61"
   .s232: .asciiz "62"
   .s233: .asciiz "62"
   .s234: .asciiz "63"
   .s235: .asciiz "63"
   .s236: .asciiz "64"
   .s237: .asciiz "64"
   .s238: .asciiz "65"
   .s239: .asciiz "65"
   .s240: .asciiz "66"
   .s241: .asciiz "66"
   .s242: .asciiz "67"
   .s243: .asciiz "67"
   .s244: .asciiz "68"
   .s245: .asciiz "68"
   .s246: .asciiz "69"
   .s247: .asciiz "69"
   .s248: .asciiz "70"
   .s249: .asciiz "70"
   .s250: .asciiz "71"
   .s251: .asciiz "71"
   .s252: .asciiz "72"
   .s253: .asciiz "72"
   .s254: .asciiz "73"
   .s255: .asciiz "73"
   .s256: .asciiz "74"
   .s257: .asciiz "74"
   .s258: .asciiz "75"
   .s259: .asciiz "75"
   .s260: .asciiz "76"
   .s261: .asciiz "76"
   .s262: .asciiz "77"
   .s263: .asciiz "77"
   .s264: .asciiz "78"
   .s265: .asciiz "78"
   .s266: .asciiz "79"
   .s267: .asciiz "79"
   .s268: .asciiz "80"
   .s269: .asciiz "80"
   .s270: .asciiz "81"
   .s271: .asciiz "81"
   .s272: .asciiz "82"
   .s273: .asciiz "82"
   .s274: .asciiz "83"
   .s275: .asciiz "83"
   .s276: .asciiz "84"
   .s277: .asciiz "84"
   .s278: .asciiz "85"
   .s279: .asciiz "85"
   .s280: .asciiz "86"
   .s281: .asciiz "86"
   .s282: .asciiz "87"
   .s283: .asciiz "87"
   .s284: .asciiz "88"
   .s285: .asciiz "88"
   .s286: .asciiz "89"
   .s287: .asciiz "89"
   .s288: .asciiz "90"
   .s289: .asciiz "90"
   .s290: .asciiz "91"
   .s291: .asciiz "91"
   .s292: .asciiz "92"
   .s293: .asciiz "92"
   .s294: .asciiz "93"
   .s295: .asciiz "93"
   .s296: .asciiz "94"
   .s297: .asciiz "94"
   .s298: .asciiz "95"
   .s299: .asciiz "95"
   .s300: .asciiz "96"
   .s301: .asciiz "96"
   .s302: .asciiz "97"
   .s303: .asciiz "97"
   .s304: .asciiz "98"
   .s305: .asciiz "98"
   .s306: .asciiz "99"
   .s307: .asciiz "99"
   .tmp_217_for_idx: .space 1024
   .s308: .asciiz "0"
   .s309: .asciiz "100"
   .s310: .asciiz "1"
   .s311: .asciiz "Anne"
   .s312: .asciiz "Corinne"
   .s313: .asciiz "Sabine"
   .s314: .asciiz "Emilie"
   .tmp_218: .space 1024
   .s315: .asciiz " "
   .tmp_219: .space 1024
   .s316: .asciiz "elle"
   .s317: .asciiz "Pierre"
   .s318: .asciiz "Paul"
   .s319: .asciiz "Jacques"
   .s320: .asciiz "Albert"
   .tmp_220: .space 1024
   .s321: .asciiz " "
   .tmp_221: .space 1024
   .s322: .asciiz "lui"
   .tmp_222: .space 1024
   .s323: .asciiz " "
   .tmp_223: .space 1024
   .s324: .asciiz "Nouvelle phrase :"
   .s325: .asciiz "\n"

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
# initialisation de .tmp_212
   la $t0, .tmp_212
   sb $t1, 0($t0)
# initialisation de .tmp_213
   la $t0, .tmp_213
   sb $t1, 0($t0)
# initialisation de .tmp_214
   la $t0, .tmp_214
   sb $t1, 0($t0)
# initialisation de new_phrase
   la $t0, new_phrase
   sb $t1, 0($t0)
# initialisation de mot
   la $t0, mot
   sb $t1, 0($t0)
# initialisation du tableau .tmp_215_for_tab
   la $t0, .tmp_215_for_tab
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
# initialisation de .tmp_216
   la $t0, .tmp_216
   sb $t1, 0($t0)
# initialisation de .tmp_217_for_idx
   la $t0, .tmp_217_for_idx
   sb $t1, 0($t0)
# initialisation de .tmp_218
   la $t0, .tmp_218
   sb $t1, 0($t0)
# initialisation de .tmp_219
   la $t0, .tmp_219
   sb $t1, 0($t0)
# initialisation de .tmp_220
   la $t0, .tmp_220
   sb $t1, 0($t0)
# initialisation de .tmp_221
   la $t0, .tmp_221
   sb $t1, 0($t0)
# initialisation de .tmp_222
   la $t0, .tmp_222
   sb $t1, 0($t0)
# initialisation de .tmp_223
   la $t0, .tmp_223
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
   blt $a1, $v0, _l0
# quad 7
   b _l1
_l0:
# quad 9

   # .s2 <- .tmp_212+i
   la $a0, .tmp_212
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s2
   jal convert_string
   #---
# quad 10
   la $a0, .s3
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 11
   la $a0, .tmp_212
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 12
   la $a0, .s4
   li $v0, 4
   syscall #print_str
# quad 13
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
# quad 15

   # .s5 <- .tmp_213+i
   la $a0, .tmp_213
   jal convert_entier
   move $s0, $v0
   la $a0, i
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s5
   jal convert_string
   #---
# quad 16
   la $a0, .tmp_213
   la $a1, i
   la $a2, .empty_string
   jal concat
# quad 17
   b _l2
_l1:
# quad 19
   # .s6 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s6
   la $a2, .empty_string
   jal concat
   # ----
# quad 20
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 21
   # .s7 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s7
   la $a2, .empty_string
   jal concat
   # ----
# quad 22
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 23
   # .s8 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s8
   la $a2, .empty_string
   jal concat
   # ----
# quad 24
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 25
   # .s9 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s9
   la $a2, .empty_string
   jal concat
   # ----
# quad 26
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 27
   # .s10 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s10
   la $a2, .empty_string
   jal concat
   # ----
# quad 28
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 29
   # .s11 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s11
   la $a2, .empty_string
   jal concat
   # ----
# quad 30
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 31
   # .s12 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s12
   la $a2, .empty_string
   jal concat
   # ----
# quad 32
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 33
   # .s13 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s13
   la $a2, .empty_string
   jal concat
   # ----
# quad 34
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 35
   # .s14 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s14
   la $a2, .empty_string
   jal concat
   # ----
# quad 36
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 37
   # .s15 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s15
   la $a2, .empty_string
   jal concat
   # ----
# quad 38
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 39
   # .s16 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s16
   la $a2, .empty_string
   jal concat
   # ----
# quad 40
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 41
   # .s17 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s17
   la $a2, .empty_string
   jal concat
   # ----
# quad 42
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 43
   # .s18 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s18
   la $a2, .empty_string
   jal concat
   # ----
# quad 44
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 45
   # .s19 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s19
   la $a2, .empty_string
   jal concat
   # ----
# quad 46
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 47
   # .s20 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s20
   la $a2, .empty_string
   jal concat
   # ----
# quad 48
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 49
   # .s21 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s21
   la $a2, .empty_string
   jal concat
   # ----
# quad 50
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 51
   # .s22 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s22
   la $a2, .empty_string
   jal concat
   # ----
# quad 52
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 53
   # .s23 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s23
   la $a2, .empty_string
   jal concat
   # ----
# quad 54
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 55
   # .s24 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s24
   la $a2, .empty_string
   jal concat
   # ----
# quad 56
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 57
   # .s25 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s25
   la $a2, .empty_string
   jal concat
   # ----
# quad 58
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 59
   # .s26 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s26
   la $a2, .empty_string
   jal concat
   # ----
# quad 60
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 61
   # .s27 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s27
   la $a2, .empty_string
   jal concat
   # ----
# quad 62
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 63
   # .s28 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s28
   la $a2, .empty_string
   jal concat
   # ----
# quad 64
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 65
   # .s29 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s29
   la $a2, .empty_string
   jal concat
   # ----
# quad 66
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 67
   # .s30 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s30
   la $a2, .empty_string
   jal concat
   # ----
# quad 68
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 69
   # .s31 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s31
   la $a2, .empty_string
   jal concat
   # ----
# quad 70
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 71
   # .s32 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s32
   la $a2, .empty_string
   jal concat
   # ----
# quad 72
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 73
   # .s33 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s33
   la $a2, .empty_string
   jal concat
   # ----
# quad 74
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 75
   # .s34 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s34
   la $a2, .empty_string
   jal concat
   # ----
# quad 76
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 77
   # .s35 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s35
   la $a2, .empty_string
   jal concat
   # ----
# quad 78
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 79
   # .s36 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s36
   la $a2, .empty_string
   jal concat
   # ----
# quad 80
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 81
   # .s37 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s37
   la $a2, .empty_string
   jal concat
   # ----
# quad 82
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 83
   # .s38 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s38
   la $a2, .empty_string
   jal concat
   # ----
# quad 84
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 85
   # .s39 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s39
   la $a2, .empty_string
   jal concat
   # ----
# quad 86
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 87
   # .s40 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s40
   la $a2, .empty_string
   jal concat
   # ----
# quad 88
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 89
   # .s41 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s41
   la $a2, .empty_string
   jal concat
   # ----
# quad 90
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 91
   # .s42 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s42
   la $a2, .empty_string
   jal concat
   # ----
# quad 92
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 93
   # .s43 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s43
   la $a2, .empty_string
   jal concat
   # ----
# quad 94
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 95
   # .s44 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s44
   la $a2, .empty_string
   jal concat
   # ----
# quad 96
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 97
   # .s45 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s45
   la $a2, .empty_string
   jal concat
   # ----
# quad 98
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 99
   # .s46 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s46
   la $a2, .empty_string
   jal concat
   # ----
# quad 100
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 101
   # .s47 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s47
   la $a2, .empty_string
   jal concat
   # ----
# quad 102
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 103
   # .s48 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s48
   la $a2, .empty_string
   jal concat
   # ----
# quad 104
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 105
   # .s49 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s49
   la $a2, .empty_string
   jal concat
   # ----
# quad 106
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 107
   # .s50 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s50
   la $a2, .empty_string
   jal concat
   # ----
# quad 108
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 109
   # .s51 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s51
   la $a2, .empty_string
   jal concat
   # ----
# quad 110
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 111
   # .s52 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s52
   la $a2, .empty_string
   jal concat
   # ----
# quad 112
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 113
   # .s53 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s53
   la $a2, .empty_string
   jal concat
   # ----
# quad 114
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 115
   # .s54 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s54
   la $a2, .empty_string
   jal concat
   # ----
# quad 116
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 117
   # .s55 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s55
   la $a2, .empty_string
   jal concat
   # ----
# quad 118
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 119
   # .s56 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s56
   la $a2, .empty_string
   jal concat
   # ----
# quad 120
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 121
   # .s57 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s57
   la $a2, .empty_string
   jal concat
   # ----
# quad 122
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 123
   # .s58 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s58
   la $a2, .empty_string
   jal concat
   # ----
# quad 124
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 125
   # .s59 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s59
   la $a2, .empty_string
   jal concat
   # ----
# quad 126
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 127
   # .s60 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s60
   la $a2, .empty_string
   jal concat
   # ----
# quad 128
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 129
   # .s61 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s61
   la $a2, .empty_string
   jal concat
   # ----
# quad 130
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 131
   # .s62 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s62
   la $a2, .empty_string
   jal concat
   # ----
# quad 132
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 133
   # .s63 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s63
   la $a2, .empty_string
   jal concat
   # ----
# quad 134
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 135
   # .s64 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s64
   la $a2, .empty_string
   jal concat
   # ----
# quad 136
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 137
   # .s65 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s65
   la $a2, .empty_string
   jal concat
   # ----
# quad 138
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 139
   # .s66 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s66
   la $a2, .empty_string
   jal concat
   # ----
# quad 140
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 141
   # .s67 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s67
   la $a2, .empty_string
   jal concat
   # ----
# quad 142
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 143
   # .s68 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s68
   la $a2, .empty_string
   jal concat
   # ----
# quad 144
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 145
   # .s69 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s69
   la $a2, .empty_string
   jal concat
   # ----
# quad 146
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 147
   # .s70 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s70
   la $a2, .empty_string
   jal concat
   # ----
# quad 148
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 149
   # .s71 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s71
   la $a2, .empty_string
   jal concat
   # ----
# quad 150
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 151
   # .s72 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s72
   la $a2, .empty_string
   jal concat
   # ----
# quad 152
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 153
   # .s73 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s73
   la $a2, .empty_string
   jal concat
   # ----
# quad 154
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 155
   # .s74 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s74
   la $a2, .empty_string
   jal concat
   # ----
# quad 156
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 157
   # .s75 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s75
   la $a2, .empty_string
   jal concat
   # ----
# quad 158
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 159
   # .s76 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s76
   la $a2, .empty_string
   jal concat
   # ----
# quad 160
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 161
   # .s77 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s77
   la $a2, .empty_string
   jal concat
   # ----
# quad 162
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 163
   # .s78 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s78
   la $a2, .empty_string
   jal concat
   # ----
# quad 164
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 165
   # .s79 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s79
   la $a2, .empty_string
   jal concat
   # ----
# quad 166
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 167
   # .s80 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s80
   la $a2, .empty_string
   jal concat
   # ----
# quad 168
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 169
   # .s81 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s81
   la $a2, .empty_string
   jal concat
   # ----
# quad 170
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 171
   # .s82 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s82
   la $a2, .empty_string
   jal concat
   # ----
# quad 172
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 173
   # .s83 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s83
   la $a2, .empty_string
   jal concat
   # ----
# quad 174
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 175
   # .s84 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s84
   la $a2, .empty_string
   jal concat
   # ----
# quad 176
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 177
   # .s85 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s85
   la $a2, .empty_string
   jal concat
   # ----
# quad 178
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 179
   # .s86 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s86
   la $a2, .empty_string
   jal concat
   # ----
# quad 180
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 181
   # .s87 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s87
   la $a2, .empty_string
   jal concat
   # ----
# quad 182
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 183
   # .s88 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s88
   la $a2, .empty_string
   jal concat
   # ----
# quad 184
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 185
   # .s89 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s89
   la $a2, .empty_string
   jal concat
   # ----
# quad 186
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 187
   # .s90 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s90
   la $a2, .empty_string
   jal concat
   # ----
# quad 188
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 189
   # .s91 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s91
   la $a2, .empty_string
   jal concat
   # ----
# quad 190
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 191
   # .s92 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s92
   la $a2, .empty_string
   jal concat
   # ----
# quad 192
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 193
   # .s93 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s93
   la $a2, .empty_string
   jal concat
   # ----
# quad 194
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 195
   # .s94 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s94
   la $a2, .empty_string
   jal concat
   # ----
# quad 196
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 197
   # .s95 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s95
   la $a2, .empty_string
   jal concat
   # ----
# quad 198
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 199
   # .s96 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s96
   la $a2, .empty_string
   jal concat
   # ----
# quad 200
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 201
   # .s97 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s97
   la $a2, .empty_string
   jal concat
   # ----
# quad 202
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 203
   # .s98 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s98
   la $a2, .empty_string
   jal concat
   # ----
# quad 204
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 205
   # .s99 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s99
   la $a2, .empty_string
   jal concat
   # ----
# quad 206
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 207
   # .s100 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s100
   la $a2, .empty_string
   jal concat
   # ----
# quad 208
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 209
   # .s101 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s101
   la $a2, .empty_string
   jal concat
   # ----
# quad 210
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 211
   # .s102 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s102
   la $a2, .empty_string
   jal concat
   # ----
# quad 212
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 213
   # .s103 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s103
   la $a2, .empty_string
   jal concat
   # ----
# quad 214
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 215
   # .s104 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s104
   la $a2, .empty_string
   jal concat
   # ----
# quad 216
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 217
   # .s105 <- .tmp_214[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_214
   add $t0, $t0, $s0
   # la $t1, .tmp_214
   lw $a1, ($t0)
   la $a0, .s105
   la $a2, .empty_string
   jal concat
   # ----
# quad 218
   la $a0, .tmp_214
   li $v0, 4
   syscall #print_str
# quad 219
   la $a0, .s106
   li $v0, 4
   syscall #print_str
# quad 221
   la $a0, .s107
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 225
   # .s108 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s108
   la $a2, .empty_string
   jal concat
   # ----
# quad 226
   # .tmp_216[.tmp_215_for_tab] <- .s109
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 227
   # .s110 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s110
   la $a2, .empty_string
   jal concat
   # ----
# quad 228
   # .tmp_216[.tmp_215_for_tab] <- .s111
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 229
   # .s112 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s112
   la $a2, .empty_string
   jal concat
   # ----
# quad 230
   # .tmp_216[.tmp_215_for_tab] <- .s113
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 231
   # .s114 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s114
   la $a2, .empty_string
   jal concat
   # ----
# quad 232
   # .tmp_216[.tmp_215_for_tab] <- .s115
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 233
   # .s116 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s116
   la $a2, .empty_string
   jal concat
   # ----
# quad 234
   # .tmp_216[.tmp_215_for_tab] <- .s117
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 235
   # .s118 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s118
   la $a2, .empty_string
   jal concat
   # ----
# quad 236
   # .tmp_216[.tmp_215_for_tab] <- .s119
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 237
   # .s120 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s120
   la $a2, .empty_string
   jal concat
   # ----
# quad 238
   # .tmp_216[.tmp_215_for_tab] <- .s121
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 239
   # .s122 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s122
   la $a2, .empty_string
   jal concat
   # ----
# quad 240
   # .tmp_216[.tmp_215_for_tab] <- .s123
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 241
   # .s124 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s124
   la $a2, .empty_string
   jal concat
   # ----
# quad 242
   # .tmp_216[.tmp_215_for_tab] <- .s125
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 243
   # .s126 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s126
   la $a2, .empty_string
   jal concat
   # ----
# quad 244
   # .tmp_216[.tmp_215_for_tab] <- .s127
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 245
   # .s128 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s128
   la $a2, .empty_string
   jal concat
   # ----
# quad 246
   # .tmp_216[.tmp_215_for_tab] <- .s129
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 247
   # .s130 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s130
   la $a2, .empty_string
   jal concat
   # ----
# quad 248
   # .tmp_216[.tmp_215_for_tab] <- .s131
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 249
   # .s132 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s132
   la $a2, .empty_string
   jal concat
   # ----
# quad 250
   # .tmp_216[.tmp_215_for_tab] <- .s133
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 251
   # .s134 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s134
   la $a2, .empty_string
   jal concat
   # ----
# quad 252
   # .tmp_216[.tmp_215_for_tab] <- .s135
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 253
   # .s136 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s136
   la $a2, .empty_string
   jal concat
   # ----
# quad 254
   # .tmp_216[.tmp_215_for_tab] <- .s137
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 255
   # .s138 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s138
   la $a2, .empty_string
   jal concat
   # ----
# quad 256
   # .tmp_216[.tmp_215_for_tab] <- .s139
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 257
   # .s140 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s140
   la $a2, .empty_string
   jal concat
   # ----
# quad 258
   # .tmp_216[.tmp_215_for_tab] <- .s141
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 259
   # .s142 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s142
   la $a2, .empty_string
   jal concat
   # ----
# quad 260
   # .tmp_216[.tmp_215_for_tab] <- .s143
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 261
   # .s144 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s144
   la $a2, .empty_string
   jal concat
   # ----
# quad 262
   # .tmp_216[.tmp_215_for_tab] <- .s145
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 263
   # .s146 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s146
   la $a2, .empty_string
   jal concat
   # ----
# quad 264
   # .tmp_216[.tmp_215_for_tab] <- .s147
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 265
   # .s148 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s148
   la $a2, .empty_string
   jal concat
   # ----
# quad 266
   # .tmp_216[.tmp_215_for_tab] <- .s149
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 267
   # .s150 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s150
   la $a2, .empty_string
   jal concat
   # ----
# quad 268
   # .tmp_216[.tmp_215_for_tab] <- .s151
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 269
   # .s152 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s152
   la $a2, .empty_string
   jal concat
   # ----
# quad 270
   # .tmp_216[.tmp_215_for_tab] <- .s153
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 271
   # .s154 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s154
   la $a2, .empty_string
   jal concat
   # ----
# quad 272
   # .tmp_216[.tmp_215_for_tab] <- .s155
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 273
   # .s156 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s156
   la $a2, .empty_string
   jal concat
   # ----
# quad 274
   # .tmp_216[.tmp_215_for_tab] <- .s157
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 275
   # .s158 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s158
   la $a2, .empty_string
   jal concat
   # ----
# quad 276
   # .tmp_216[.tmp_215_for_tab] <- .s159
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 277
   # .s160 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s160
   la $a2, .empty_string
   jal concat
   # ----
# quad 278
   # .tmp_216[.tmp_215_for_tab] <- .s161
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 279
   # .s162 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s162
   la $a2, .empty_string
   jal concat
   # ----
# quad 280
   # .tmp_216[.tmp_215_for_tab] <- .s163
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 281
   # .s164 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s164
   la $a2, .empty_string
   jal concat
   # ----
# quad 282
   # .tmp_216[.tmp_215_for_tab] <- .s165
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 283
   # .s166 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s166
   la $a2, .empty_string
   jal concat
   # ----
# quad 284
   # .tmp_216[.tmp_215_for_tab] <- .s167
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 285
   # .s168 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s168
   la $a2, .empty_string
   jal concat
   # ----
# quad 286
   # .tmp_216[.tmp_215_for_tab] <- .s169
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 287
   # .s170 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s170
   la $a2, .empty_string
   jal concat
   # ----
# quad 288
   # .tmp_216[.tmp_215_for_tab] <- .s171
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 289
   # .s172 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s172
   la $a2, .empty_string
   jal concat
   # ----
# quad 290
   # .tmp_216[.tmp_215_for_tab] <- .s173
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 291
   # .s174 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s174
   la $a2, .empty_string
   jal concat
   # ----
# quad 292
   # .tmp_216[.tmp_215_for_tab] <- .s175
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 293
   # .s176 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s176
   la $a2, .empty_string
   jal concat
   # ----
# quad 294
   # .tmp_216[.tmp_215_for_tab] <- .s177
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 295
   # .s178 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s178
   la $a2, .empty_string
   jal concat
   # ----
# quad 296
   # .tmp_216[.tmp_215_for_tab] <- .s179
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 297
   # .s180 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s180
   la $a2, .empty_string
   jal concat
   # ----
# quad 298
   # .tmp_216[.tmp_215_for_tab] <- .s181
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 299
   # .s182 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s182
   la $a2, .empty_string
   jal concat
   # ----
# quad 300
   # .tmp_216[.tmp_215_for_tab] <- .s183
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 301
   # .s184 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s184
   la $a2, .empty_string
   jal concat
   # ----
# quad 302
   # .tmp_216[.tmp_215_for_tab] <- .s185
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 303
   # .s186 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s186
   la $a2, .empty_string
   jal concat
   # ----
# quad 304
   # .tmp_216[.tmp_215_for_tab] <- .s187
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 305
   # .s188 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s188
   la $a2, .empty_string
   jal concat
   # ----
# quad 306
   # .tmp_216[.tmp_215_for_tab] <- .s189
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 307
   # .s190 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s190
   la $a2, .empty_string
   jal concat
   # ----
# quad 308
   # .tmp_216[.tmp_215_for_tab] <- .s191
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 309
   # .s192 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s192
   la $a2, .empty_string
   jal concat
   # ----
# quad 310
   # .tmp_216[.tmp_215_for_tab] <- .s193
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 311
   # .s194 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s194
   la $a2, .empty_string
   jal concat
   # ----
# quad 312
   # .tmp_216[.tmp_215_for_tab] <- .s195
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 313
   # .s196 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s196
   la $a2, .empty_string
   jal concat
   # ----
# quad 314
   # .tmp_216[.tmp_215_for_tab] <- .s197
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 315
   # .s198 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s198
   la $a2, .empty_string
   jal concat
   # ----
# quad 316
   # .tmp_216[.tmp_215_for_tab] <- .s199
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 317
   # .s200 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s200
   la $a2, .empty_string
   jal concat
   # ----
# quad 318
   # .tmp_216[.tmp_215_for_tab] <- .s201
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 319
   # .s202 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s202
   la $a2, .empty_string
   jal concat
   # ----
# quad 320
   # .tmp_216[.tmp_215_for_tab] <- .s203
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 321
   # .s204 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s204
   la $a2, .empty_string
   jal concat
   # ----
# quad 322
   # .tmp_216[.tmp_215_for_tab] <- .s205
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 323
   # .s206 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s206
   la $a2, .empty_string
   jal concat
   # ----
# quad 324
   # .tmp_216[.tmp_215_for_tab] <- .s207
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 325
   # .s208 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s208
   la $a2, .empty_string
   jal concat
   # ----
# quad 326
   # .tmp_216[.tmp_215_for_tab] <- .s209
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 327
   # .s210 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s210
   la $a2, .empty_string
   jal concat
   # ----
# quad 328
   # .tmp_216[.tmp_215_for_tab] <- .s211
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 329
   # .s212 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s212
   la $a2, .empty_string
   jal concat
   # ----
# quad 330
   # .tmp_216[.tmp_215_for_tab] <- .s213
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 331
   # .s214 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s214
   la $a2, .empty_string
   jal concat
   # ----
# quad 332
   # .tmp_216[.tmp_215_for_tab] <- .s215
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 333
   # .s216 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s216
   la $a2, .empty_string
   jal concat
   # ----
# quad 334
   # .tmp_216[.tmp_215_for_tab] <- .s217
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 335
   # .s218 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s218
   la $a2, .empty_string
   jal concat
   # ----
# quad 336
   # .tmp_216[.tmp_215_for_tab] <- .s219
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 337
   # .s220 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s220
   la $a2, .empty_string
   jal concat
   # ----
# quad 338
   # .tmp_216[.tmp_215_for_tab] <- .s221
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 339
   # .s222 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s222
   la $a2, .empty_string
   jal concat
   # ----
# quad 340
   # .tmp_216[.tmp_215_for_tab] <- .s223
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 341
   # .s224 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s224
   la $a2, .empty_string
   jal concat
   # ----
# quad 342
   # .tmp_216[.tmp_215_for_tab] <- .s225
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 343
   # .s226 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s226
   la $a2, .empty_string
   jal concat
   # ----
# quad 344
   # .tmp_216[.tmp_215_for_tab] <- .s227
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 345
   # .s228 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s228
   la $a2, .empty_string
   jal concat
   # ----
# quad 346
   # .tmp_216[.tmp_215_for_tab] <- .s229
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 347
   # .s230 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s230
   la $a2, .empty_string
   jal concat
   # ----
# quad 348
   # .tmp_216[.tmp_215_for_tab] <- .s231
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 349
   # .s232 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s232
   la $a2, .empty_string
   jal concat
   # ----
# quad 350
   # .tmp_216[.tmp_215_for_tab] <- .s233
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 351
   # .s234 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s234
   la $a2, .empty_string
   jal concat
   # ----
# quad 352
   # .tmp_216[.tmp_215_for_tab] <- .s235
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 353
   # .s236 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s236
   la $a2, .empty_string
   jal concat
   # ----
# quad 354
   # .tmp_216[.tmp_215_for_tab] <- .s237
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 355
   # .s238 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s238
   la $a2, .empty_string
   jal concat
   # ----
# quad 356
   # .tmp_216[.tmp_215_for_tab] <- .s239
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 357
   # .s240 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s240
   la $a2, .empty_string
   jal concat
   # ----
# quad 358
   # .tmp_216[.tmp_215_for_tab] <- .s241
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 359
   # .s242 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s242
   la $a2, .empty_string
   jal concat
   # ----
# quad 360
   # .tmp_216[.tmp_215_for_tab] <- .s243
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 361
   # .s244 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s244
   la $a2, .empty_string
   jal concat
   # ----
# quad 362
   # .tmp_216[.tmp_215_for_tab] <- .s245
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 363
   # .s246 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s246
   la $a2, .empty_string
   jal concat
   # ----
# quad 364
   # .tmp_216[.tmp_215_for_tab] <- .s247
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 365
   # .s248 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s248
   la $a2, .empty_string
   jal concat
   # ----
# quad 366
   # .tmp_216[.tmp_215_for_tab] <- .s249
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 367
   # .s250 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s250
   la $a2, .empty_string
   jal concat
   # ----
# quad 368
   # .tmp_216[.tmp_215_for_tab] <- .s251
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 369
   # .s252 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s252
   la $a2, .empty_string
   jal concat
   # ----
# quad 370
   # .tmp_216[.tmp_215_for_tab] <- .s253
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 371
   # .s254 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s254
   la $a2, .empty_string
   jal concat
   # ----
# quad 372
   # .tmp_216[.tmp_215_for_tab] <- .s255
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 373
   # .s256 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s256
   la $a2, .empty_string
   jal concat
   # ----
# quad 374
   # .tmp_216[.tmp_215_for_tab] <- .s257
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 375
   # .s258 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s258
   la $a2, .empty_string
   jal concat
   # ----
# quad 376
   # .tmp_216[.tmp_215_for_tab] <- .s259
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 377
   # .s260 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s260
   la $a2, .empty_string
   jal concat
   # ----
# quad 378
   # .tmp_216[.tmp_215_for_tab] <- .s261
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 379
   # .s262 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s262
   la $a2, .empty_string
   jal concat
   # ----
# quad 380
   # .tmp_216[.tmp_215_for_tab] <- .s263
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 381
   # .s264 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s264
   la $a2, .empty_string
   jal concat
   # ----
# quad 382
   # .tmp_216[.tmp_215_for_tab] <- .s265
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 383
   # .s266 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s266
   la $a2, .empty_string
   jal concat
   # ----
# quad 384
   # .tmp_216[.tmp_215_for_tab] <- .s267
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 385
   # .s268 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s268
   la $a2, .empty_string
   jal concat
   # ----
# quad 386
   # .tmp_216[.tmp_215_for_tab] <- .s269
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 387
   # .s270 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s270
   la $a2, .empty_string
   jal concat
   # ----
# quad 388
   # .tmp_216[.tmp_215_for_tab] <- .s271
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 389
   # .s272 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s272
   la $a2, .empty_string
   jal concat
   # ----
# quad 390
   # .tmp_216[.tmp_215_for_tab] <- .s273
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 391
   # .s274 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s274
   la $a2, .empty_string
   jal concat
   # ----
# quad 392
   # .tmp_216[.tmp_215_for_tab] <- .s275
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 393
   # .s276 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s276
   la $a2, .empty_string
   jal concat
   # ----
# quad 394
   # .tmp_216[.tmp_215_for_tab] <- .s277
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 395
   # .s278 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s278
   la $a2, .empty_string
   jal concat
   # ----
# quad 396
   # .tmp_216[.tmp_215_for_tab] <- .s279
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 397
   # .s280 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s280
   la $a2, .empty_string
   jal concat
   # ----
# quad 398
   # .tmp_216[.tmp_215_for_tab] <- .s281
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 399
   # .s282 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s282
   la $a2, .empty_string
   jal concat
   # ----
# quad 400
   # .tmp_216[.tmp_215_for_tab] <- .s283
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 401
   # .s284 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s284
   la $a2, .empty_string
   jal concat
   # ----
# quad 402
   # .tmp_216[.tmp_215_for_tab] <- .s285
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 403
   # .s286 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s286
   la $a2, .empty_string
   jal concat
   # ----
# quad 404
   # .tmp_216[.tmp_215_for_tab] <- .s287
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 405
   # .s288 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s288
   la $a2, .empty_string
   jal concat
   # ----
# quad 406
   # .tmp_216[.tmp_215_for_tab] <- .s289
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 407
   # .s290 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s290
   la $a2, .empty_string
   jal concat
   # ----
# quad 408
   # .tmp_216[.tmp_215_for_tab] <- .s291
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 409
   # .s292 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s292
   la $a2, .empty_string
   jal concat
   # ----
# quad 410
   # .tmp_216[.tmp_215_for_tab] <- .s293
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 411
   # .s294 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s294
   la $a2, .empty_string
   jal concat
   # ----
# quad 412
   # .tmp_216[.tmp_215_for_tab] <- .s295
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 413
   # .s296 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s296
   la $a2, .empty_string
   jal concat
   # ----
# quad 414
   # .tmp_216[.tmp_215_for_tab] <- .s297
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 415
   # .s298 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s298
   la $a2, .empty_string
   jal concat
   # ----
# quad 416
   # .tmp_216[.tmp_215_for_tab] <- .s299
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 417
   # .s300 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s300
   la $a2, .empty_string
   jal concat
   # ----
# quad 418
   # .tmp_216[.tmp_215_for_tab] <- .s301
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 419
   # .s302 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s302
   la $a2, .empty_string
   jal concat
   # ----
# quad 420
   # .tmp_216[.tmp_215_for_tab] <- .s303
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 421
   # .s304 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s304
   la $a2, .empty_string
   jal concat
   # ----
# quad 422
   # .tmp_216[.tmp_215_for_tab] <- .s305
   la $a0, .tmp_215_for_tab
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
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 423
   # .s306 <- .tmp_216[mots]
   la $a0, mots
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   # la $t1, .tmp_216
   lw $a1, ($t0)
   la $a0, .s306
   la $a2, .empty_string
   jal concat
   # ----
# quad 424
   # .tmp_216[.tmp_215_for_tab] <- .s307
   la $a0, .tmp_215_for_tab
   jal convert_entier # conversion index
   move $s0, $v0 # stockage
   la $a0, .empty_string
   move $a1, $s0 # en cas d'erreur
   blt $s0, 0, erreur_out_of_range
   bge $s0, 100, erreur_out_of_range
   mul $s0, $s0, 4 # pour l'addresse dans le tableau
   la $a0, .s307 # copy_string
   jal copy_string
   move $s2, $v0 # on stocke $s2 dans le tableau
   la $t0, .tmp_216
   add $t0, $t0, $s0
   sw $s2, ($t0)
   # ----
# quad 426
   la $a0, .s308
   la $a1, .tmp_217_for_idx
   la $a2, .empty_string
   jal concat
# quad 427
_l10:
   la $a0, .tmp_217_for_idx
   jal convert_entier
   move $a1, $v0
   la $a0, .s309
   jal convert_entier
   blt $a1, $v0, _l3
# quad 428
   b _l4
# quad 429
_l3:
   # .tmp_217_for_idx <- mot[.tmp_215_for_tab]
   la $a0, .tmp_215_for_tab
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
   la $a0, .tmp_217_for_idx
   la $a2, .empty_string
   jal concat
   # ----
# quad 430

   # .s310 <- .tmp_217_for_idx+.tmp_217_for_idx
   la $a0, .tmp_217_for_idx
   jal convert_entier
   move $s0, $v0
   la $a0, .tmp_217_for_idx
   jal convert_entier
   move $s1, $v0
   add $a0, $s0, $s1
   la $a1, .s310
   jal convert_string
   #---
# quad 431
   la $a0, mot
   la $a1, .s311
   jal compare
   beq $v0, 0, _l5
# quad 432
   b _l6
# quad 433
_l6:
   la $a0, mot
   la $a1, .s312
   jal compare
   beq $v0, 0, _l5
# quad 434
   b _l7
# quad 435
_l7:
   la $a0, mot
   la $a1, .s313
   jal compare
   beq $v0, 0, _l5
# quad 436
   b _l8
# quad 437
_l8:
   la $a0, mot
   la $a1, .s314
   jal compare
   beq $v0, 0, _l5
# quad 438
   b _l9
_l5:
# quad 440
   la $a0, .s315
   la $a1, .tmp_218
   la $a2, new_phrase
   jal concat
# quad 442
   la $a0, .s316
   la $a1, .tmp_219
   la $a2, .tmp_218
   jal concat
# quad 443
   la $a0, .tmp_219
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 444
   b _l10
# quad 445
_l9:
   la $a0, mot
   la $a1, .s317
   jal compare
   beq $v0, 0, _l11
# quad 446
   b _l12
# quad 447
_l12:
   la $a0, mot
   la $a1, .s318
   jal compare
   beq $v0, 0, _l11
# quad 448
   b _l13
# quad 449
_l13:
   la $a0, mot
   la $a1, .s319
   jal compare
   beq $v0, 0, _l11
# quad 450
   b _l14
# quad 451
_l14:
   la $a0, mot
   la $a1, .s320
   jal compare
   beq $v0, 0, _l11
# quad 452
   b _l15
_l11:
# quad 454
   la $a0, .s321
   la $a1, .tmp_220
   la $a2, new_phrase
   jal concat
# quad 456
   la $a0, .s322
   la $a1, .tmp_221
   la $a2, .tmp_220
   jal concat
# quad 457
   la $a0, .tmp_221
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 458
   b _l10
_l15:
# quad 460
   la $a0, .s323
   la $a1, .tmp_222
   la $a2, new_phrase
   jal concat
# quad 462
   la $a0, mot
   la $a1, .tmp_223
   la $a2, .tmp_222
   jal concat
# quad 463
   la $a0, .tmp_223
   la $a1, new_phrase
   la $a2, .empty_string
   jal concat
# quad 464
   b _l10
# quad 465
_l4:
   la $a0, .s324
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 466
   la $a0, new_phrase
   li $v0, 4
   syscall #print_str
   la $a0, .single_space
   li $v0, 4
   syscall #print_str
# quad 467
   la $a0, .s325
   li $v0, 4
   syscall #print_str
# quad 468
   li $v0, 17
   li $a0, 0
   syscall #EXIT
