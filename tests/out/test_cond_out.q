0  : ECHO <cst_str>"début test_cond\n"
1  : DECLARE <ident>a
2  : SET <cst_str>a TO <ident>a
3  : DECLARE <ident>b
4  : SET <cst_str>a TO <ident>b
5  : DECLARE <ident>c
6  : SET <cst_str>c TO <ident>c
7  : DECLARE <ident>d
8  : SET <cst_str>d TO <ident>d
9  : DECLARE <ident>e
10 : SET <cst_str>e TO <ident>e
11 : DECLARE <ident>f
12 : SET <cst_str>e TO <ident>f
13 : DECLARE <ident>g
14 : SET <cst_str>h TO <ident>g
15 : DECLARE <ident>h
16 : SET <cst_str>h TO <ident>h
17 : DECLARE <ident>i
18 : SET <cst_str>i TO <ident>i
19 : DECLARE <ident>j
20 : SET <cst_str>j TO <ident>j
21 : IF <ident>a ==(str) <ident>b GOTO <addr>23
22 : GOTO <addr>28
23 : IF <ident>c ==(str) <ident>d GOTO <addr>25
24 : GOTO <addr>28
25 : ECHO <cst_str>"wow un and insane "
26 : ECHO <cst_str>"enfin bon\n"
27 : GOTO <addr>35
28 : IF <ident>g ==(str) <ident>h GOTO <addr>32
29 : GOTO <addr>30
30 : IF <ident>i ==(str) <ident>j GOTO <addr>34
31 : GOTO <addr>32
32 : ECHO <cst_str>"un elif avec un or ??\n"
33 : GOTO <addr>35
34 : ECHO <cst_str>"pff juste le else\n"
35 : ECHO <cst_str>"\n-----------------\n"
36 : IF <ident>a !=(str) <ident>b GOTO <addr>38
37 : GOTO <addr>40
38 : IF <ident>c ==(str) <ident>d GOTO <addr>42
39 : GOTO <addr>40
40 : IF <ident>e ==(str) <ident>f GOTO <addr>42
41 : GOTO <addr>46
42 : IF <cst_str>0 ==(str) <cst_str>1 GOTO <addr>44
43 : GOTO <addr>46
44 : ECHO <cst_str>"cond complexe 1\n"
45 : GOTO <addr>55
46 : IF <ident>a ==(str) <ident>b GOTO <addr>48
47 : GOTO <addr>55
48 : IF <ident>c ==(str) <ident>d GOTO <addr>54
49 : GOTO <addr>50
50 : IF <ident>e ==(str) <ident>f GOTO <addr>52
51 : GOTO <addr>55
52 : IF <ident>g ==(str) <ident>h GOTO <addr>54
53 : GOTO <addr>55
54 : ECHO <cst_str>"cond complexe 2\n"
55 : ECHO <cst_str>"\nfin\n"
56 : EXIT <cst>0
