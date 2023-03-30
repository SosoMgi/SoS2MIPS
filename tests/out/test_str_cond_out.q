0  : ECHO <cst_str>"début test_str_cond\n"
1  : DECLARE <ident>a
2  : SET <cst_str>"abcdef" TO <ident>a
3  : IF <ident>a != "" (not null) GOTO <addr>5
4  : GOTO <addr>7
5  : ECHO <cst_str>"-n"
6  : GOTO <addr>18
7  : IF <ident>a == "" (null) GOTO <addr>9
8  : GOTO <addr>11
9  : ECHO <cst_str>"-z"
10 : GOTO <addr>18
11 : DECLARE <ident>.tmp_105
12 : SET <cst_str>ghi TO CONCAT(<ident>.tmp_105, <cst_str>"abc")
13 : DECLARE <ident>.tmp_106
14 : SET <cst_str>"jkl" TO CONCAT(<ident>.tmp_106, <ident>.tmp_105)
15 : IF <ident>.tmp_106 != "" (not null) GOTO <addr>17
16 : GOTO <addr>18
17 : ECHO <cst_str>"-n concat"
18 : ECHO <cst_str>"milieu\n"
19 : IF <ident>a != "" (not null) GOTO <addr>23
20 : GOTO <addr>21
21 : IF <ident>a == "" (null) GOTO <addr>23
22 : GOTO <addr>24
23 : ECHO <cst_str>"-n -o -z\n"
24 : ECHO <cst_str>"fin\n"
25 : EXIT <cst>0
