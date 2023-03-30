0  : ECHO <cst_str>"début test_for\n"
1  : DECLARE <ident>v
2  : DECLARE_TAB <ident>.tmp_107_for_tab[<cst>5]
3  : SET <cst_str>a[<ident>.tmp_107_for_tab] TO <cst_str>0 (SET_TAB)
4  : SET <cst_str>b[<ident>.tmp_107_for_tab] TO <cst_str>1 (SET_TAB)
5  : SET <cst_str>c[<ident>.tmp_107_for_tab] TO <cst_str>2 (SET_TAB)
6  : SET <cst_str>d[<ident>.tmp_107_for_tab] TO <cst_str>3 (SET_TAB)
7  : SET <cst_str>e[<ident>.tmp_107_for_tab] TO <cst_str>4 (SET_TAB)
8  : DECLARE <ident>.tmp_108_for_idx
9  : SET <cst_str>0 TO <ident>.tmp_108_for_idx
10 : IF <ident>.tmp_108_for_idx < <cst_str>5 GOTO <addr>12
11 : GOTO <addr>18
12 : SET <ident>.tmp_108_for_idx TO <ident>v[<ident>.tmp_107_for_tab] (GET_TAB)
13 : SET <cst_str>1 TO <ident>.tmp_108_for_idx + <ident>.tmp_108_for_idx
14 : ECHO <cst_str>"> "
15 : ECHO <ident>v
16 : ECHO <cst_str>"\n"
17 : GOTO <addr>10
18 : ECHO <cst_str>"----------\n"
19 : DECLARE_TAB <ident>.tmp_109_for_tab[<cst>5]
20 : SET <cst_str>a[<ident>.tmp_109_for_tab] TO <cst_str>0 (SET_TAB)
21 : SET <cst_str>b[<ident>.tmp_109_for_tab] TO <cst_str>1 (SET_TAB)
22 : SET <cst_str>c[<ident>.tmp_109_for_tab] TO <cst_str>2 (SET_TAB)
23 : SET <cst_str>d[<ident>.tmp_109_for_tab] TO <cst_str>3 (SET_TAB)
24 : SET <cst_str>e[<ident>.tmp_109_for_tab] TO <cst_str>4 (SET_TAB)
25 : DECLARE <ident>.tmp_110_for_idx
26 : SET <cst_str>0 TO <ident>.tmp_110_for_idx
27 : IF <ident>.tmp_110_for_idx < <cst_str>5 GOTO <addr>29
28 : GOTO <addr>47
29 : SET <ident>.tmp_110_for_idx TO <ident>v[<ident>.tmp_109_for_tab] (GET_TAB)
30 : SET <cst_str>1 TO <ident>.tmp_110_for_idx + <ident>.tmp_110_for_idx
31 : DECLARE <ident>v2
32 : DECLARE_TAB <ident>.tmp_111_for_tab[<cst>3]
33 : SET <cst_str>1[<ident>.tmp_111_for_tab] TO <cst_str>0 (SET_TAB)
34 : SET <cst_str>2[<ident>.tmp_111_for_tab] TO <cst_str>1 (SET_TAB)
35 : SET <cst_str>3[<ident>.tmp_111_for_tab] TO <cst_str>2 (SET_TAB)
36 : DECLARE <ident>.tmp_112_for_idx
37 : SET <cst_str>0 TO <ident>.tmp_112_for_idx
38 : IF <ident>.tmp_112_for_idx < <cst_str>3 GOTO <addr>40
39 : GOTO <addr>46
40 : SET <ident>.tmp_112_for_idx TO <ident>v2[<ident>.tmp_111_for_tab] (GET_TAB)
41 : SET <cst_str>1 TO <ident>.tmp_112_for_idx + <ident>.tmp_112_for_idx
42 : ECHO <ident>v
43 : ECHO <ident>v2
44 : ECHO <cst_str>"\n"
45 : GOTO <addr>38
46 : GOTO <addr>27
47 : ECHO <cst_str>"-----------\n"
48 : DECLARE_TAB <ident>.tmp_113_for_tab[<cst>3]
49 : SET <cst_str>a[<ident>.tmp_113_for_tab] TO <cst_str>0 (SET_TAB)
50 : SET <cst_str>b[<ident>.tmp_113_for_tab] TO <cst_str>1 (SET_TAB)
51 : SET <cst_str>c[<ident>.tmp_113_for_tab] TO <cst_str>2 (SET_TAB)
52 : DECLARE <ident>.tmp_114_for_idx
53 : SET <cst_str>0 TO <ident>.tmp_114_for_idx
54 : IF <ident>.tmp_114_for_idx < <cst_str>3 GOTO <addr>56
55 : GOTO <addr>90
56 : SET <ident>.tmp_114_for_idx TO <ident>v[<ident>.tmp_113_for_tab] (GET_TAB)
57 : SET <cst_str>1 TO <ident>.tmp_114_for_idx + <ident>.tmp_114_for_idx
58 : DECLARE_TAB <ident>.tmp_115_for_tab[<cst>3]
59 : SET <cst_str>1[<ident>.tmp_115_for_tab] TO <cst_str>0 (SET_TAB)
60 : SET <cst_str>2[<ident>.tmp_115_for_tab] TO <cst_str>1 (SET_TAB)
61 : SET <cst_str>3[<ident>.tmp_115_for_tab] TO <cst_str>2 (SET_TAB)
62 : DECLARE <ident>.tmp_116_for_idx
63 : SET <cst_str>0 TO <ident>.tmp_116_for_idx
64 : IF <ident>.tmp_116_for_idx < <cst_str>3 GOTO <addr>66
65 : GOTO <addr>89
66 : SET <ident>.tmp_116_for_idx TO <ident>v2[<ident>.tmp_115_for_tab] (GET_TAB)
67 : SET <cst_str>1 TO <ident>.tmp_116_for_idx + <ident>.tmp_116_for_idx
68 : DECLARE <ident>v3
69 : DECLARE_TAB <ident>.tmp_117_for_tab[<cst>3]
70 : SET <cst_str>"+"[<ident>.tmp_117_for_tab] TO <cst_str>0 (SET_TAB)
71 : SET <cst_str>"-"[<ident>.tmp_117_for_tab] TO <cst_str>1 (SET_TAB)
72 : SET <cst_str>"*"[<ident>.tmp_117_for_tab] TO <cst_str>2 (SET_TAB)
73 : DECLARE <ident>.tmp_118_for_idx
74 : SET <cst_str>0 TO <ident>.tmp_118_for_idx
75 : IF <ident>.tmp_118_for_idx < <cst_str>3 GOTO <addr>77
76 : GOTO <addr>88
77 : SET <ident>.tmp_118_for_idx TO <ident>v3[<ident>.tmp_117_for_tab] (GET_TAB)
78 : SET <cst_str>1 TO <ident>.tmp_118_for_idx + <ident>.tmp_118_for_idx
79 : DECLARE <ident>.tmp_119
80 : SET <ident>v2 TO CONCAT(<ident>.tmp_119, <ident>v)
81 : DECLARE <ident>.tmp_120
82 : SET <ident>v3 TO CONCAT(<ident>.tmp_120, <ident>.tmp_119)
83 : DECLARE <ident>a
84 : SET <ident>.tmp_120 TO <ident>a
85 : ECHO <ident>a
86 : ECHO <cst_str>"\n"
87 : GOTO <addr>75
88 : GOTO <addr>64
89 : GOTO <addr>54
90 : ECHO <cst_str>"-------------\n"
91 : DECLARE <ident>sum
92 : SET <cst_str>0 TO <ident>sum
93 : IF <ident>sum < <cst_str>100 GOTO <addr>95
94 : GOTO <addr>129
95 : DECLARE_TAB <ident>.tmp_121_for_tab[<cst>3]
96 : SET <cst_str>1[<ident>.tmp_121_for_tab] TO <cst_str>0 (SET_TAB)
97 : SET <cst_str>2[<ident>.tmp_121_for_tab] TO <cst_str>1 (SET_TAB)
98 : SET <cst_str>3[<ident>.tmp_121_for_tab] TO <cst_str>2 (SET_TAB)
99 : DECLARE <ident>.tmp_122_for_idx
100: SET <cst_str>0 TO <ident>.tmp_122_for_idx
101: IF <ident>.tmp_122_for_idx < <cst_str>3 GOTO <addr>103
102: GOTO <addr>125
103: SET <ident>.tmp_122_for_idx TO <ident>v[<ident>.tmp_121_for_tab] (GET_TAB)
104: SET <cst_str>1 TO <ident>.tmp_122_for_idx + <ident>.tmp_122_for_idx
105: DECLARE <ident>.tmp_123
106: SET <ident>v TO <ident>.tmp_123 + <ident>sum
107: SET <ident>.tmp_123 TO <ident>sum
108: DECLARE_TAB <ident>.tmp_124_for_tab[<cst>2]
109: SET <cst_str>10[<ident>.tmp_124_for_tab] TO <cst_str>0 (SET_TAB)
110: SET <cst_str>15[<ident>.tmp_124_for_tab] TO <cst_str>1 (SET_TAB)
111: DECLARE <ident>.tmp_125_for_idx
112: SET <cst_str>0 TO <ident>.tmp_125_for_idx
113: IF <ident>.tmp_125_for_idx < <cst_str>2 GOTO <addr>115
114: GOTO <addr>124
115: SET <ident>.tmp_125_for_idx TO <ident>v2[<ident>.tmp_124_for_tab] (GET_TAB)
116: SET <cst_str>1 TO <ident>.tmp_125_for_idx + <ident>.tmp_125_for_idx
117: DECLARE <ident>.tmp_126
118: SET <ident>v2 TO <ident>.tmp_126 + <ident>sum
119: SET <ident>.tmp_126 TO <ident>sum
120: ECHO <cst_str>"sum ="
121: ECHO <ident>sum
122: ECHO <cst_str>"\n"
123: GOTO <addr>113
124: GOTO <addr>101
125: ECHO <cst_str>"sum ="
126: ECHO <ident>sum
127: ECHO <cst_str>"\n"
128: GOTO <addr>93
129: ECHO <cst_str>"final sum ="
130: ECHO <ident>sum
131: ECHO <cst_str>"\n"
132: ECHO <cst_str>"----------\n"
133: DECLARE_TAB <ident>.tmp_127_for_tab[<cst>3]
134: SET <cst_str>mot1[<ident>.tmp_127_for_tab] TO <cst_str>0 (SET_TAB)
135: SET <cst_str>mot2[<ident>.tmp_127_for_tab] TO <cst_str>1 (SET_TAB)
136: SET <cst_str>mot3[<ident>.tmp_127_for_tab] TO <cst_str>2 (SET_TAB)
137: DECLARE <ident>.tmp_128_for_idx
138: SET <cst_str>0 TO <ident>.tmp_128_for_idx
139: IF <ident>.tmp_128_for_idx < <cst_str>3 GOTO <addr>141
140: GOTO <addr>147
141: SET <ident>.tmp_128_for_idx TO <ident>v[<ident>.tmp_127_for_tab] (GET_TAB)
142: SET <cst_str>1 TO <ident>.tmp_128_for_idx + <ident>.tmp_128_for_idx
143: ECHO <cst_str>"> "
144: ECHO <ident>v
145: ECHO <cst_str>"\n"
146: GOTO <addr>139
147: ECHO <cst_str>"-------\n"
148: SET <cst_str>2 TO <ident>a
149: DECLARE_TAB <ident>b[<cst>3]
150: DECLARE <ident>.tmp_129
151: SET <cst_str>2 TO <ident>.tmp_129 + <ident>a
152: DECLARE <ident>.tmp_130
153: SET <cst_str>1 TO <ident>.tmp_130 - <ident>.tmp_129
154: DECLARE <ident>.tmp_131
155: SET <ident>a TO <ident>.tmp_131[<ident>b] (GET_TAB)
156: DECLARE_TAB <ident>.tmp_132_for_tab[<cst>4]
157: SET <cst_str>mot1[<ident>.tmp_132_for_tab] TO <cst_str>0 (SET_TAB)
158: SET <ident>a[<ident>.tmp_132_for_tab] TO <cst_str>1 (SET_TAB)
159: SET <ident>.tmp_130[<ident>.tmp_132_for_tab] TO <cst_str>2 (SET_TAB)
160: SET <ident>.tmp_131[<ident>.tmp_132_for_tab] TO <cst_str>3 (SET_TAB)
161: DECLARE <ident>.tmp_133_for_idx
162: SET <cst_str>0 TO <ident>.tmp_133_for_idx
163: IF <ident>.tmp_133_for_idx < <cst_str>4 GOTO <addr>165
164: GOTO <addr>171
165: SET <ident>.tmp_133_for_idx TO <ident>v[<ident>.tmp_132_for_tab] (GET_TAB)
166: SET <cst_str>1 TO <ident>.tmp_133_for_idx + <ident>.tmp_133_for_idx
167: ECHO <cst_str>">"
168: ECHO <ident>v
169: ECHO <cst_str>"\n"
170: GOTO <addr>163
171: ECHO <cst_str>"----------\n"
172: DECLARE_TAB <ident>tab[<cst>5]
173: DECLARE <ident>i
174: DECLARE_TAB <ident>.tmp_134_for_tab[<cst>5]
175: SET <cst_str>0[<ident>.tmp_134_for_tab] TO <cst_str>0 (SET_TAB)
176: SET <cst_str>1[<ident>.tmp_134_for_tab] TO <cst_str>1 (SET_TAB)
177: SET <cst_str>2[<ident>.tmp_134_for_tab] TO <cst_str>2 (SET_TAB)
178: SET <cst_str>3[<ident>.tmp_134_for_tab] TO <cst_str>3 (SET_TAB)
179: SET <cst_str>4[<ident>.tmp_134_for_tab] TO <cst_str>4 (SET_TAB)
180: DECLARE <ident>.tmp_135_for_idx
181: SET <cst_str>0 TO <ident>.tmp_135_for_idx
182: IF <ident>.tmp_135_for_idx < <cst_str>5 GOTO <addr>184
183: GOTO <addr>195
184: SET <ident>.tmp_135_for_idx TO <ident>i[<ident>.tmp_134_for_tab] (GET_TAB)
185: SET <cst_str>1 TO <ident>.tmp_135_for_idx + <ident>.tmp_135_for_idx
186: DECLARE <ident>.tmp_136
187: SET <ident>i TO CONCAT(<ident>.tmp_136, <cst_str>"a")
188: SET <ident>.tmp_136[<ident>tab] TO <ident>i (SET_TAB)
189: DECLARE <ident>.tmp_137
190: SET <ident>i TO <ident>.tmp_137[<ident>tab] (GET_TAB)
191: ECHO <cst_str>"set> "
192: ECHO <ident>.tmp_137
193: ECHO <cst_str>"\n"
194: GOTO <addr>182
195: DECLARE_TAB <ident>.tmp_138_for_tab[<cst>5]
196: DECLARE <ident>.tmp_139
197: SET <cst_str>0 TO <ident>.tmp_139[<ident>tab] (GET_TAB)
198: SET <ident>.tmp_139[<ident>.tmp_138_for_tab] TO <cst_str>0 (SET_TAB)
199: SET <cst_str>1 TO <ident>.tmp_139[<ident>tab] (GET_TAB)
200: SET <ident>.tmp_139[<ident>.tmp_138_for_tab] TO <cst_str>1 (SET_TAB)
201: SET <cst_str>2 TO <ident>.tmp_139[<ident>tab] (GET_TAB)
202: SET <ident>.tmp_139[<ident>.tmp_138_for_tab] TO <cst_str>2 (SET_TAB)
203: SET <cst_str>3 TO <ident>.tmp_139[<ident>tab] (GET_TAB)
204: SET <ident>.tmp_139[<ident>.tmp_138_for_tab] TO <cst_str>3 (SET_TAB)
205: SET <cst_str>4 TO <ident>.tmp_139[<ident>tab] (GET_TAB)
206: SET <ident>.tmp_139[<ident>.tmp_138_for_tab] TO <cst_str>4 (SET_TAB)
207: DECLARE <ident>.tmp_140_for_idx
208: SET <cst_str>0 TO <ident>.tmp_140_for_idx
209: IF <ident>.tmp_140_for_idx < <cst_str>5 GOTO <addr>211
210: GOTO <addr>217
211: SET <ident>.tmp_140_for_idx TO <ident>v[<ident>.tmp_138_for_tab] (GET_TAB)
212: SET <cst_str>1 TO <ident>.tmp_140_for_idx + <ident>.tmp_140_for_idx
213: ECHO <cst_str>"get> "
214: ECHO <ident>v
215: ECHO <cst_str>"\n"
216: GOTO <addr>209
217: ECHO <cst_str>"fin\n"
218: EXIT <cst>0
