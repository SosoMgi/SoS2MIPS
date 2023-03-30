0  : ECHO <cst_str>"début test_arithm_cond\n"
1  : DECLARE <ident>a
2  : SET <cst_str>15 TO <ident>a
3  : DECLARE <ident>b
4  : SET <cst_str>"abc" TO <ident>b
5  : SET <cst_str>"-14" TO <ident>a
6  : SET <cst_str>14 TO <ident>b
7  : ECHO <ident>a
8  : ECHO <cst_str>"et"
9  : ECHO <ident>b
10 : ECHO <cst_str>" : "
11 : IF <ident>a == <ident>b GOTO <addr>13
12 : GOTO <addr>14
13 : ECHO <cst_str>"eq "
14 : IF <ident>a != <ident>b GOTO <addr>16
15 : GOTO <addr>17
16 : ECHO <cst_str>"ne "
17 : IF <ident>a > <ident>b GOTO <addr>19
18 : GOTO <addr>20
19 : ECHO <cst_str>"gt "
20 : IF <ident>a >= <ident>b GOTO <addr>22
21 : GOTO <addr>23
22 : ECHO <cst_str>"ge "
23 : IF <ident>a < <ident>b GOTO <addr>25
24 : GOTO <addr>26
25 : ECHO <cst_str>"lt "
26 : IF <ident>a <= <ident>b GOTO <addr>28
27 : GOTO <addr>29
28 : ECHO <cst_str>"le "
29 : ECHO <cst_str>"\n----------------\n"
30 : IF <cst_str>0 <= <ident>a GOTO <addr>32
31 : GOTO <addr>36
32 : IF <ident>a <= <cst_str>10 GOTO <addr>34
33 : GOTO <addr>36
34 : ECHO <cst_str>"0 <= a <= 10"
35 : GOTO <addr>37
36 : ECHO <cst_str>"a pas entre 0 et 10"
37 : ECHO <cst_str>"\nfin\n"
38 : EXIT <cst>0
