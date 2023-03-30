0  : ECHO <cst_str>"entiers de 1 à 10\n"
1  : DECLARE <ident>i
2  : SET <cst_str>1 TO <ident>i
3  : IF <ident>i <= <cst_str>10 GOTO <addr>5
4  : GOTO <addr>10
5  : ECHO <ident>i
6  : DECLARE <ident>.tmp_81
7  : SET <cst_str>1 TO <ident>.tmp_81 + <ident>i
8  : SET <ident>.tmp_81 TO <ident>i
9  : GOTO <addr>3
10 : ECHO <cst_str>"fin ! :):):):):)\n"
11 : EXIT <cst>0
