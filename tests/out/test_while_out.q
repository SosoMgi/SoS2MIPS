0  : ECHO <cst_str>"début"
1  : IF <cst_str>a ==(str) <cst_str>b GOTO <addr>3
2  : GOTO <addr>13
3  : ECHO <cst_str>"intérieur while"
4  : IF <cst_str>c ==(str) <cst_str>d GOTO <addr>6
5  : GOTO <addr>1
6  : ECHO <cst_str>"while dans while"
7  : IF <cst_str>e !=(str) <cst_str>f GOTO <addr>9
8  : GOTO <addr>4
9  : ECHO <cst_str>"if dans while dans while"
10 : ECHO <cst_str>"2e instr"
11 : GOTO <addr>4
12 : GOTO <addr>1
13 : ECHO <cst_str>"fin"
14 : EXIT <cst>0
