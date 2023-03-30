0  : ECHO <cst_str>"début test_read\n"
1  : ECHO <cst_str>"première valeur : "
2  : DECLARE <ident>a
3  : READ IN <ident>a
4  : ECHO <cst_str>"deuxième valeur : "
5  : DECLARE <ident>b
6  : READ IN <ident>b
7  : DECLARE <ident>.tmp_162
8  : SET <ident>b TO <ident>.tmp_162 + <ident>a
9  : ECHO <cst_str>"somme ="
10 : ECHO <ident>.tmp_162
11 : ECHO <cst_str>"\n"
12 : ECHO <cst_str>"fin\n"
13 : EXIT <cst>0
