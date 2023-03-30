0  : DECLARE <ident>truc
1  : SET <cst_str>"chaine1" TO <ident>truc
2  : ECHO <cst_str>"truc = "
3  : IF <ident>truc ==(str) <cst_str>"chain2" GOTO <addr>5
4  : GOTO <addr>6
5  : ECHO <cst_str>"chaine2"
6  : EXIT <cst>0
