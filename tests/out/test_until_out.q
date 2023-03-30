0  : ECHO <cst_str>"début"
1  : IF <cst_str>a ==(str) <cst_str>b GOTO <addr>14
2  : GOTO <addr>3
3  : ECHO <cst_str>"intérieur until"
4  : IF <cst_str>c ==(str) <cst_str>d GOTO <addr>1
5  : GOTO <addr>6
6  : ECHO <cst_str>"until dans until"
7  : IF <cst_str>e ==(str) <cst_str>f GOTO <addr>9
8  : GOTO <addr>11
9  : ECHO <cst_str>"if dans until dans until"
10 : ECHO <cst_str>"2e instr"
11 : ECHO <cst_str>"fin until dans until"
12 : GOTO <addr>4
13 : GOTO <addr>1
14 : ECHO <cst_str>"fin"
15 : EXIT <cst>0
