0  : ECHO <cst_str>"début test_tab\n"
1  : DECLARE_TAB <ident>tableau[<cst>5]
2  : DECLARE <ident>taille_tab
3  : SET <cst_str>5 TO <ident>taille_tab
4  : DECLARE <ident>.tmp_141
5  : SET <cst_str>1 TO <ident>.tmp_141 - <ident>taille_tab
6  : DECLARE <ident>i
7  : SET <ident>.tmp_141 TO <ident>i
8  : IF <ident>i >= <cst_str>0 GOTO <addr>10
9  : GOTO <addr>23
10 : DECLARE <ident>.tmp_142
11 : SET <cst_str>1 TO <ident>.tmp_142 - <ident>taille_tab
12 : DECLARE <ident>.tmp_143
13 : SET <ident>i TO <ident>.tmp_143 - <ident>.tmp_142
14 : DECLARE <ident>a
15 : SET <ident>.tmp_143 TO <ident>a
16 : DECLARE <ident>.tmp_144
17 : SET <ident>i TO <ident>.tmp_144 * <cst_str>2
18 : SET <ident>.tmp_144[<ident>tableau] TO <ident>a (SET_TAB)
19 : DECLARE <ident>.tmp_145
20 : SET <cst_str>1 TO <ident>.tmp_145 - <ident>i
21 : SET <ident>.tmp_145 TO <ident>i
22 : GOTO <addr>8
23 : ECHO <cst_str>"tableau : \n"
24 : SET <cst_str>0 TO <ident>i
25 : IF <ident>i < <ident>taille_tab GOTO <addr>27
26 : GOTO <addr>37
27 : DECLARE <ident>.tmp_146
28 : SET <ident>i TO <ident>.tmp_146[<ident>tableau] (GET_TAB)
29 : ECHO <ident>i
30 : ECHO <cst_str>" : "
31 : ECHO <ident>.tmp_146
32 : ECHO <cst_str>"\n"
33 : DECLARE <ident>.tmp_147
34 : SET <cst_str>1 TO <ident>.tmp_147 + <ident>i
35 : SET <ident>.tmp_147 TO <ident>i
36 : GOTO <addr>25
37 : ECHO <cst_str>"-----------\n"
38 : ECHO <cst_str>"et en une ligne : "
39 : DECLARE <ident>.tmp_148
40 : SET <cst_str>0 TO <ident>.tmp_148[<ident>tableau] (GET_TAB)
41 : ECHO <ident>.tmp_148
42 : SET <cst_str>1 TO <ident>.tmp_148[<ident>tableau] (GET_TAB)
43 : ECHO <ident>.tmp_148
44 : SET <cst_str>2 TO <ident>.tmp_148[<ident>tableau] (GET_TAB)
45 : ECHO <ident>.tmp_148
46 : SET <cst_str>3 TO <ident>.tmp_148[<ident>tableau] (GET_TAB)
47 : ECHO <ident>.tmp_148
48 : SET <cst_str>4 TO <ident>.tmp_148[<ident>tableau] (GET_TAB)
49 : ECHO <ident>.tmp_148
50 : ECHO <cst_str>"\n"
51 : ECHO <cst_str>"------------\n"
52 : DECLARE <ident>.tmp_149
53 : SET <cst_str>2 TO <ident>.tmp_149 / <ident>taille_tab
54 : DECLARE <ident>.tmp_150
55 : SET <ident>.tmp_149 TO <ident>.tmp_150[<ident>tableau] (GET_TAB)
56 : ECHO <cst_str>"element du milieu : "
57 : ECHO <ident>.tmp_150
58 : ECHO <cst_str>"\n"
59 : ECHO <cst_str>"\nfin\n"
60 : EXIT <cst>0
