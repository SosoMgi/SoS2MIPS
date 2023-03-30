0  : ECHO <cst_str>"debut test_tab_3\n"
1  : DECLARE_TAB <ident>tab[<cst>5]
2  : DECLARE <ident>i
3  : SET <cst_str>0 TO <ident>i
4  : IF <ident>i < <cst_str>4 GOTO <addr>6
5  : GOTO <addr>13
6  : ECHO <ident>i
7  : ECHO <cst_str>"\n"
8  : SET <ident>i[<ident>tab] TO <ident>i (SET_TAB)
9  : DECLARE <ident>.tmp_177
10 : SET <cst_str>1 TO <ident>.tmp_177 + <ident>i
11 : SET <ident>.tmp_177 TO <ident>i
12 : GOTO <addr>4
13 : SET <cst_str>0[<ident>tab] TO <cst_str>4 (SET_TAB)
14 : DECLARE <ident>.tmp_178
15 : SET <cst_str>0 TO <ident>.tmp_178[<ident>tab] (GET_TAB)
16 : ECHO <ident>.tmp_178
17 : SET <cst_str>1 TO <ident>.tmp_178[<ident>tab] (GET_TAB)
18 : ECHO <ident>.tmp_178
19 : SET <cst_str>2 TO <ident>.tmp_178[<ident>tab] (GET_TAB)
20 : ECHO <ident>.tmp_178
21 : SET <cst_str>3 TO <ident>.tmp_178[<ident>tab] (GET_TAB)
22 : ECHO <ident>.tmp_178
23 : SET <cst_str>4 TO <ident>.tmp_178[<ident>tab] (GET_TAB)
24 : ECHO <ident>.tmp_178
25 : ECHO <cst_str>"\n"
26 : ECHO <cst_str>"fin\n"
27 : EXIT <cst>0
