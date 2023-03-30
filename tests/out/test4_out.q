0  : ECHO <cst_str>"début test 4\n"
1  : DECLARE <ident>a
2  : SET <cst_str>a TO <ident>a
3  : DECLARE <ident>b
4  : SET <cst_str>b TO <ident>b
5  : DECLARE <ident>c
6  : SET <cst_str>c TO <ident>c
7  : DECLARE <ident>.tmp_85
8  : SET <ident>b TO CONCAT(<ident>.tmp_85, <ident>a)
9  : DECLARE <ident>.tmp_86
10 : SET <ident>c TO CONCAT(<ident>.tmp_86, <ident>.tmp_85)
11 : DECLARE <ident>.tmp_87
12 : SET <ident>b TO CONCAT(<ident>.tmp_87, <ident>.tmp_86)
13 : DECLARE <ident>.tmp_88
14 : SET <ident>a TO CONCAT(<ident>.tmp_88, <ident>.tmp_87)
15 : DECLARE <ident>d
16 : SET <ident>.tmp_88 TO <ident>d
17 : IF <ident>a ==(str) <ident>b GOTO <addr>19
18 : GOTO <addr>26
19 : ECHO <ident>a
20 : ECHO <cst_str>est
21 : ECHO <cst_str>égal
22 : ECHO <cst_str>à
23 : ECHO <ident>b
24 : ECHO <cst_str>"(1)"
25 : GOTO <addr>54
26 : IF <ident>a ==(str) <ident>c GOTO <addr>28
27 : GOTO <addr>35
28 : ECHO <ident>a
29 : ECHO <cst_str>est
30 : ECHO <cst_str>égal
31 : ECHO <cst_str>à
32 : ECHO <ident>c
33 : ECHO <cst_str>"(2)"
34 : GOTO <addr>54
35 : IF <ident>a ==(str) <ident>d GOTO <addr>37
36 : GOTO <addr>44
37 : ECHO <ident>a
38 : ECHO <cst_str>est
39 : ECHO <cst_str>égal
40 : ECHO <cst_str>à
41 : ECHO <ident>d
42 : ECHO <cst_str>"(3)"
43 : GOTO <addr>54
44 : ECHO <ident>a
45 : ECHO <cst_str>est
46 : ECHO <cst_str>différent
47 : ECHO <cst_str>de
48 : ECHO <ident>b
49 : ECHO <cst_str>et
50 : ECHO <ident>c
51 : ECHO <cst_str>et
52 : ECHO <ident>d
53 : ECHO <cst_str>"(4)"
54 : ECHO <cst_str>"\nfin\n"
55 : EXIT <cst>0
