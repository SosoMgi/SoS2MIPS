0  : ECHO <cst_str>"début\n"
1  : IF <cst_str>"UN" ==(str) <cst_str>aaa GOTO <addr>3
2  : GOTO <addr>5
3  : ECHO <cst_str>"UN"
4  : GOTO <addr>18
5  : IF <cst_str>"DEUX" ==(str) <cst_str>bbb GOTO <addr>7
6  : GOTO <addr>9
7  : ECHO <cst_str>"DEUX"
8  : GOTO <addr>18
9  : IF <cst_str>"TROIS" ==(str) <cst_str>ccc GOTO <addr>11
10 : GOTO <addr>13
11 : ECHO <cst_str>"TROIS"
12 : GOTO <addr>18
13 : IF <cst_str>"QUATRE" ==(str) <cst_str>ddd GOTO <addr>15
14 : GOTO <addr>17
15 : ECHO <cst_str>"QUATRE"
16 : GOTO <addr>18
17 : ECHO <cst_str>"SOLEIL"
18 : ECHO <cst_str>"\nfin\n"
19 : EXIT <cst>0
