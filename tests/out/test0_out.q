0  : ECHO <cst_str>"avant le if"
1  : ECHO <cst_str>"abauzoids"
2  : IF <cst_str>unmot ==(str) <cst_str>abc GOTO <addr>4
3  : GOTO <addr>11
4  : ECHO <cst_str>"un truc je suppose"
5  : IF <cst_str>wow !=(str) <cst_str>dinguerie GOTO <addr>7
6  : GOTO <addr>8
7  : ECHO <cst_str>"double if insane le truc"
8  : IF <cst_str>quoi ==(str) <cst_str>feur GOTO <addr>10
9  : GOTO <addr>11
10 : ECHO <cst_str>"plus d'idées oskour"
11 : ECHO <cst_str>'après le if'
12 : ECHO <cst_str>"encore après"
13 : EXIT <cst>0
