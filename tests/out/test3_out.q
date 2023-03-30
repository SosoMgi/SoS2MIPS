0  : DECLARE <ident>.tmp_82
1  : SET <cst_str>ghi TO CONCAT(<ident>.tmp_82, <cst_str>"abc def")
2  : DECLARE <ident>.tmp_83
3  : SET <cst_str>"jklmn" TO CONCAT(<ident>.tmp_83, <ident>.tmp_82)
4  : DECLARE <ident>var
5  : SET <ident>.tmp_83 TO <ident>var
6  : ECHO <ident>var
7  : DECLARE <ident>.tmp_84
8  : SET <cst_str>"prout" TO CONCAT(<ident>.tmp_84, <ident>var)
9  : IF <ident>.tmp_84 !=(str) <cst_str>"abc defghijklmn" GOTO <addr>11
10 : GOTO <addr>12
11 : ECHO <cst_str>"hihihaha"
12 : EXIT <cst>0
