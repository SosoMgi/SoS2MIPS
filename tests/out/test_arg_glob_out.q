0  : ECHO <cst_str>"debut test_arg_glob\n"
1  : DECLARE <ident>.tmp_151
2  : ARG n°<cst>2 -> <ident>.tmp_151
3  : DECLARE <ident>a
4  : SET <ident>.tmp_151 TO <ident>a
5  : DECLARE <ident>.tmp_152
6  : ARG n°<cst>0 -> <ident>.tmp_152
7  : DECLARE <ident>.tmp_153
8  : ARG n°<cst>1 -> <ident>.tmp_153
9  : DECLARE <ident>.tmp_154
10 : ARG n°<cst>2 -> <ident>.tmp_154
11 : ECHO <cst_str>"arg séparés :"
12 : ECHO <ident>.tmp_152
13 : ECHO <ident>.tmp_153
14 : ECHO <ident>.tmp_154
15 : ECHO <ident>a
16 : ECHO <cst_str>"\n"
17 : SET <cst_str>ppppppp TO <ident>a
18 : DECLARE <ident>.tmp_155
19 : ARG n°<cst>0 -> <ident>.tmp_155
20 : DECLARE <ident>.tmp_156
21 : ARG n°<cst>1 -> <ident>.tmp_156
22 : DECLARE <ident>.tmp_157
23 : ARG n°<cst>2 -> <ident>.tmp_157
24 : ECHO <cst_str>"arg après modif :"
25 : ECHO <ident>.tmp_155
26 : ECHO <ident>.tmp_156
27 : ECHO <ident>.tmp_157
28 : ECHO <ident>a
29 : ECHO <cst_str>"\n"
30 : ECHO <cst_str>"tout les args :"
31 : ECHO <ident>.arg_concat
32 : ECHO <cst_str>"\n"
33 : DECLARE <ident>.tmp_158
34 : ARG n°<cst>0 -> <ident>.tmp_158
35 : DECLARE <ident>.tmp_159
36 : SET <cst_str>11 TO <ident>.tmp_159 + <ident>.tmp_158
37 : DECLARE <ident>.tmp_160
38 : ARG n°<cst>1 -> <ident>.tmp_160
39 : DECLARE <ident>.tmp_161
40 : SET <ident>.tmp_160 TO <ident>.tmp_161 / <ident>.tmp_159
41 : ECHO <ident>.tmp_161
42 : ECHO <cst_str>"\n"
43 : ECHO <cst_str>"fin\n"
44 : EXIT <cst>0
