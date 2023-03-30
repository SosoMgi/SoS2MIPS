0  : DECLARE_TAB <ident>valeurs[<cst>4]
1  : DECLARE <ident>i
2  : SET <cst_str>0 TO <ident>i
3  : DECLARE <ident>.tmp_179
4  : ARG n°<cst>0 -> <ident>.tmp_179
5  : DECLARE <ident>nombre
6  : SET <ident>.tmp_179 TO <ident>nombre
7  : DECLARE <ident>.tmp_180
8  : ARG n°<cst>0 -> <ident>.tmp_180
9  : ECHO <cst_str>"Il faut saisir "
10 : ECHO <ident>.tmp_180
11 : ECHO <cst_str>"valeurs entieres\n"
12 : IF <ident>i < <ident>nombre GOTO <addr>14
13 : GOTO <addr>29
14 : DECLARE <ident>.tmp_181
15 : SET <cst_str>1 TO <ident>.tmp_181 + <ident>i
16 : ECHO <cst_str>"Entrez la valeur "
17 : ECHO <ident>.tmp_181
18 : ECHO <cst_str>" : \n"
19 : READ IN TAB <cst>0[<ident>valeurs]
20 : DECLARE <ident>.tmp_182
21 : SET <ident>i TO <ident>.tmp_182[<ident>valeurs] (GET_TAB)
22 : IF <ident>.tmp_182 > <cst_str>0 GOTO <addr>25
23 : GOTO <addr>24
24 : ECHO <cst_str>"Les valeurs doivent etre strictement positives !\n"
25 : DECLARE <ident>.tmp_183
26 : SET <cst_str>1 TO <ident>.tmp_183 + <ident>i
27 : SET <ident>.tmp_183 TO <ident>i
28 : GOTO <addr>12
29 : SET <cst_str>0 TO <ident>i
30 : DECLARE <ident>somme
31 : SET <cst_str>0 TO <ident>somme
32 : DECLARE <ident>.tmp_184
33 : ARG n°<cst>0 -> <ident>.tmp_184
34 : IF <ident>i < <ident>.tmp_184 GOTO <addr>36
35 : GOTO <addr>45
36 : DECLARE <ident>.tmp_185
37 : SET <ident>i TO <ident>.tmp_185[<ident>valeurs] (GET_TAB)
38 : DECLARE <ident>.tmp_186
39 : SET <ident>.tmp_185 TO <ident>.tmp_186 + <ident>somme
40 : SET <ident>.tmp_186 TO <ident>somme
41 : DECLARE <ident>.tmp_187
42 : SET <cst_str>1 TO <ident>.tmp_187 + <ident>i
43 : SET <ident>.tmp_187 TO <ident>i
44 : GOTO <addr>32
45 : DECLARE <ident>.tmp_188
46 : ARG n°<cst>0 -> <ident>.tmp_188
47 : DECLARE <ident>.tmp_189
48 : SET <ident>.tmp_188 TO <ident>.tmp_189 / <ident>somme
49 : ECHO <ident>.tmp_189
50 : ECHO <cst_str>"Nombre de valeurs : "
51 : READ IN <ident>nombre
52 : IF <ident>.last_func_return ==(str) <cst_str>0 GOTO <addr>54
53 : GOTO <addr>58
54 : ECHO <cst_str>"Moyenne = "
55 : ECHO <cst_str>fonction pas implémenté
56 : ECHO <cst_str>"\n"
57 : GOTO <addr>59
58 : ECHO <cst_str>"Erreur\n"
59 : EXIT <cst>0
