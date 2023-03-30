0  : DECLARE_TAB <ident>valeurs[<cst>100]
1  : DECLARE <ident>.tmp_190
2  : ARG n°<cst>0 -> <ident>.tmp_190
3  : DECLARE <ident>nombre
4  : SET <ident>.tmp_190 TO <ident>nombre
5  : DECLARE <ident>.tmp_191
6  : ARG n°<cst>0 -> <ident>.tmp_191
7  : ECHO <cst_str>"Il faut saisir"
8  : ECHO <ident>.tmp_191
9  : ECHO <cst_str>"valeurs entières\n"
10 : DECLARE <ident>i
11 : SET <cst_str>0 TO <ident>i
12 : IF <ident>i < <ident>nombre GOTO <addr>14
13 : GOTO <addr>32
14 : IF <ident>i < <cst_str>100 GOTO <addr>16
15 : GOTO <addr>32
16 : DECLARE <ident>.tmp_192
17 : SET <cst_str>1 TO <ident>.tmp_192 + <ident>i
18 : ECHO <cst_str>"Entre la valeur"
19 : ECHO <ident>.tmp_192
20 : ECHO <cst_str>": "
21 : READ IN TAB <cst>0[<ident>valeurs]
22 : DECLARE <ident>.tmp_193
23 : SET <ident>i TO <ident>.tmp_193[<ident>valeurs] (GET_TAB)
24 : IF <ident>.tmp_193 > <cst_str>0 GOTO <addr>28
25 : GOTO <addr>26
26 : ECHO <cst_str>"Les valeurs doivent etre strictement positives\n"
27 : EXIT <cst_str>1
28 : DECLARE <ident>.tmp_194
29 : SET <cst_str>1 TO <ident>.tmp_194 + <ident>i
30 : SET <ident>.tmp_194 TO <ident>i
31 : GOTO <addr>12
32 : DECLARE <ident>somme
33 : SET <cst_str>0 TO <ident>somme
34 : SET <cst_str>0 TO <ident>i
35 : DECLARE <ident>.tmp_195
36 : ARG n°<cst>0 -> <ident>.tmp_195
37 : IF <ident>i < <ident>.tmp_195 GOTO <addr>39
38 : GOTO <addr>48
39 : DECLARE <ident>.tmp_196
40 : SET <ident>i TO <ident>.tmp_196[<ident>valeurs] (GET_TAB)
41 : DECLARE <ident>.tmp_197
42 : SET <ident>.tmp_196 TO <ident>.tmp_197 + <ident>somme
43 : SET <ident>.tmp_197 TO <ident>somme
44 : DECLARE <ident>.tmp_198
45 : SET <cst_str>1 TO <ident>.tmp_198 + <ident>i
46 : SET <ident>.tmp_198 TO <ident>i
47 : GOTO <addr>35
48 : DECLARE <ident>.tmp_199
49 : ARG n°<cst>0 -> <ident>.tmp_199
50 : DECLARE <ident>.tmp_200
51 : SET <ident>.tmp_199 TO <ident>.tmp_200 / <ident>somme
52 : DECLARE <ident>res
53 : SET <ident>.tmp_200 TO <ident>res
54 : ECHO <cst_str>"Moyenne (tronquée) ="
55 : ECHO <ident>res
56 : ECHO <cst_str>"\n"
57 : EXIT <cst>0
