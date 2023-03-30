0  : ECHO <cst_str>"début test_tab_2 (simple)\n"
1  : DECLARE_TAB <ident>tab[<cst>3]
2  : SET <cst_str>"0"[<ident>tab] TO <cst_str>0 (SET_TAB)
3  : SET <cst_str>"1"[<ident>tab] TO <cst_str>1 (SET_TAB)
4  : DECLARE <ident>.tmp_163
5  : SET <cst_str>0 TO <ident>.tmp_163[<ident>tab] (GET_TAB)
6  : DECLARE <ident>.tmp_164
7  : SET <cst_str>1 TO <ident>.tmp_164[<ident>tab] (GET_TAB)
8  : DECLARE <ident>.tmp_165
9  : SET <cst_str>2 TO <ident>.tmp_165[<ident>tab] (GET_TAB)
10 : ECHO <ident>.tmp_163
11 : ECHO <cst_str>"|"
12 : ECHO <ident>.tmp_164
13 : ECHO <cst_str>"|"
14 : ECHO <ident>.tmp_165
15 : ECHO <cst_str>"\n"
16 : DECLARE <ident>.tmp_166
17 : SET <cst_str>0 TO <ident>.tmp_166[<ident>tab] (GET_TAB)
18 : ECHO <ident>.tmp_166
19 : SET <cst_str>1 TO <ident>.tmp_166[<ident>tab] (GET_TAB)
20 : ECHO <ident>.tmp_166
21 : SET <cst_str>2 TO <ident>.tmp_166[<ident>tab] (GET_TAB)
22 : ECHO <ident>.tmp_166
23 : ECHO <cst_str>"\n"
24 : DECLARE <ident>.tmp_167
25 : SET <cst_str>0 TO <ident>.tmp_167[<ident>tab] (GET_TAB)
26 : DECLARE <ident>tmp
27 : SET <ident>.tmp_167 TO <ident>tmp
28 : DECLARE <ident>.tmp_168
29 : SET <cst_str>1 TO <ident>.tmp_168[<ident>tab] (GET_TAB)
30 : SET <ident>.tmp_168[<ident>tab] TO <cst_str>0 (SET_TAB)
31 : SET <ident>tmp[<ident>tab] TO <cst_str>1 (SET_TAB)
32 : DECLARE <ident>.tmp_169
33 : SET <cst_str>0 TO <ident>.tmp_169[<ident>tab] (GET_TAB)
34 : ECHO <ident>.tmp_169
35 : SET <cst_str>1 TO <ident>.tmp_169[<ident>tab] (GET_TAB)
36 : ECHO <ident>.tmp_169
37 : SET <cst_str>2 TO <ident>.tmp_169[<ident>tab] (GET_TAB)
38 : ECHO <ident>.tmp_169
39 : ECHO <cst_str>"\n"
40 : ECHO <cst_str>"--------------\n"
41 : DECLARE <ident>.tmp_170
42 : SET <cst_str>0 TO <ident>.tmp_170[<ident>tab] (GET_TAB)
43 : DECLARE <ident>.tmp_171
44 : SET <ident>.tmp_170 TO <ident>.tmp_171[<ident>tab] (GET_TAB)
45 : SET <ident>.tmp_171 TO <ident>tmp
46 : DECLARE <ident>.tmp_172
47 : SET <cst_str>1 TO <ident>.tmp_172[<ident>tab] (GET_TAB)
48 : DECLARE <ident>.tmp_173
49 : SET <ident>.tmp_172 TO <ident>.tmp_173[<ident>tab] (GET_TAB)
50 : DECLARE <ident>tmp2
51 : SET <ident>.tmp_173 TO <ident>tmp2
52 : SET <ident>tmp[<ident>tab] TO <cst_str>0 (SET_TAB)
53 : SET <ident>tmp2[<ident>tab] TO <cst_str>1 (SET_TAB)
54 : DECLARE <ident>.tmp_174
55 : SET <cst_str>0 TO <ident>.tmp_174[<ident>tab] (GET_TAB)
56 : ECHO <ident>.tmp_174
57 : SET <cst_str>1 TO <ident>.tmp_174[<ident>tab] (GET_TAB)
58 : ECHO <ident>.tmp_174
59 : SET <cst_str>2 TO <ident>.tmp_174[<ident>tab] (GET_TAB)
60 : ECHO <ident>.tmp_174
61 : ECHO <cst_str>"\n"
62 : DECLARE <ident>a
63 : SET <cst_str>1 TO <ident>a
64 : DECLARE <ident>.tmp_175
65 : SET <cst_str>5 TO <ident>.tmp_175 * <ident>a
66 : SET <ident>.tmp_175[<ident>tab] TO <ident>a (SET_TAB)
67 : DECLARE <ident>.tmp_176
68 : SET <cst_str>0 TO <ident>.tmp_176[<ident>tab] (GET_TAB)
69 : ECHO <ident>.tmp_176
70 : SET <cst_str>1 TO <ident>.tmp_176[<ident>tab] (GET_TAB)
71 : ECHO <ident>.tmp_176
72 : SET <cst_str>2 TO <ident>.tmp_176[<ident>tab] (GET_TAB)
73 : ECHO <ident>.tmp_176
74 : ECHO <cst_str>"\n"
75 : ECHO <cst_str>"fin\n"
76 : EXIT <cst>0
