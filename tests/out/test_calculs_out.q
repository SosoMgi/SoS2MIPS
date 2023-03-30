0  : ECHO <cst_str>"début test_calculs\n"
1  : DECLARE <ident>a
2  : SET <cst_str>7 TO <ident>a
3  : ECHO <cst_str>"a ="
4  : ECHO <ident>a
5  : ECHO <cst_str>"\n"
6  : DECLARE <ident>.tmp_89
7  : SET <ident>a TO (-1) * <ident>.tmp_89
8  : ECHO <cst_str>"-a ="
9  : ECHO <ident>.tmp_89
10 : ECHO <cst_str>"\n"
11 : DECLARE <ident>.tmp_90
12 : SET <cst_str>2 TO <ident>.tmp_90 + <ident>a
13 : ECHO <cst_str>"a + 2 ="
14 : ECHO <ident>.tmp_90
15 : ECHO <cst_str>"\n"
16 : DECLARE <ident>.tmp_91
17 : SET <cst_str>2 TO <ident>.tmp_91 - <ident>a
18 : ECHO <cst_str>"a - 2 ="
19 : ECHO <ident>.tmp_91
20 : ECHO <cst_str>"\n"
21 : DECLARE <ident>.tmp_92
22 : SET <ident>a TO <ident>.tmp_92 * <cst_str>3
23 : ECHO <cst_str>"3 * a ="
24 : ECHO <ident>.tmp_92
25 : ECHO <cst_str>"\n"
26 : DECLARE <ident>.tmp_93
27 : SET <cst_str>3 TO <ident>.tmp_93 / <ident>a
28 : ECHO <cst_str>"a / 3 ="
29 : ECHO <ident>.tmp_93
30 : ECHO <cst_str>"\n"
31 : DECLARE <ident>.tmp_94
32 : SET <cst_str>3 TO <ident>.tmp_94 % <ident>a
33 : ECHO <cst_str>"a % 3 ="
34 : ECHO <ident>.tmp_94
35 : ECHO <cst_str>"\n"
36 : ECHO <cst_str>"--------------\n"
37 : DECLARE <ident>.tmp_95
38 : SET <cst_str>2 TO (-1) * <ident>.tmp_95
39 : DECLARE <ident>.tmp_96
40 : SET <ident>.tmp_95 TO <ident>.tmp_96 + <ident>a
41 : DECLARE <ident>.tmp_97
42 : SET <ident>a TO (-1) * <ident>.tmp_97
43 : DECLARE <ident>.tmp_98
44 : SET <ident>.tmp_97 TO <ident>.tmp_98 * <ident>.tmp_96
45 : ECHO <cst_str>"(a + -2) * -a ="
46 : ECHO <ident>.tmp_98
47 : ECHO <cst_str>"\n"
48 : ECHO <cst_str>"--------------\n"
49 : DECLARE <ident>.tmp_99
50 : SET <cst_str>2 TO <ident>.tmp_99 + <cst_str>3
51 : DECLARE <ident>.tmp_100
52 : SET <cst_str>2 TO <ident>.tmp_100 / <cst_str>4
53 : DECLARE <ident>.tmp_101
54 : SET <cst_str>5 TO (-1) * <ident>.tmp_101
55 : DECLARE <ident>.tmp_102
56 : SET <ident>.tmp_101 TO <ident>.tmp_102 * <ident>.tmp_100
57 : DECLARE <ident>.tmp_103
58 : SET <ident>.tmp_102 TO <ident>.tmp_103 * <ident>.tmp_99
59 : DECLARE <ident>.tmp_104
60 : SET <cst_str>15 TO <ident>.tmp_104 % <ident>.tmp_103
61 : DECLARE <ident>b
62 : SET <ident>.tmp_104 TO <ident>b
63 : ECHO <cst_str>"(3+2)*((4/2)*(-5)) % 15 ="
64 : ECHO <ident>b
65 : ECHO <cst_str>"\n"
66 : ECHO <cst_str>"fin\n"
67 : EXIT <cst>0
