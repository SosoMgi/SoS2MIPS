0  : DECLARE_TAB <ident>mots[<cst>100]
1  : ECHO <cst_str>"Entrez le nombre de mots de la phrase : "
2  : DECLARE <ident>nombre
3  : READ IN <ident>nombre
4  : DECLARE <ident>i
5  : SET <cst_str>1 TO <ident>i
6  : IF <ident>i <= <ident>nombre GOTO <addr>8
7  : GOTO <addr>16
8  : ECHO <cst_str>"Entrez le mot numero "
9  : ECHO <ident>i
10 : ECHO <cst_str>" : "
11 : READ IN TAB <cst>0[<ident>mots]
12 : DECLARE <ident>.tmp_201
13 : SET <cst_str>1 TO <ident>.tmp_201 + <ident>i
14 : SET <ident>.tmp_201 TO <ident>i
15 : GOTO <addr>6
16 : DECLARE <ident>new_phrase
17 : SET <cst_str>"" TO <ident>new_phrase
18 : DECLARE <ident>.tmp_202
19 : SET <cst_str>0 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
20 : ECHO <ident>.tmp_202
21 : SET <cst_str>1 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
22 : ECHO <ident>.tmp_202
23 : SET <cst_str>2 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
24 : ECHO <ident>.tmp_202
25 : SET <cst_str>3 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
26 : ECHO <ident>.tmp_202
27 : SET <cst_str>4 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
28 : ECHO <ident>.tmp_202
29 : SET <cst_str>5 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
30 : ECHO <ident>.tmp_202
31 : SET <cst_str>6 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
32 : ECHO <ident>.tmp_202
33 : SET <cst_str>7 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
34 : ECHO <ident>.tmp_202
35 : SET <cst_str>8 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
36 : ECHO <ident>.tmp_202
37 : SET <cst_str>9 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
38 : ECHO <ident>.tmp_202
39 : SET <cst_str>10 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
40 : ECHO <ident>.tmp_202
41 : SET <cst_str>11 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
42 : ECHO <ident>.tmp_202
43 : SET <cst_str>12 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
44 : ECHO <ident>.tmp_202
45 : SET <cst_str>13 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
46 : ECHO <ident>.tmp_202
47 : SET <cst_str>14 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
48 : ECHO <ident>.tmp_202
49 : SET <cst_str>15 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
50 : ECHO <ident>.tmp_202
51 : SET <cst_str>16 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
52 : ECHO <ident>.tmp_202
53 : SET <cst_str>17 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
54 : ECHO <ident>.tmp_202
55 : SET <cst_str>18 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
56 : ECHO <ident>.tmp_202
57 : SET <cst_str>19 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
58 : ECHO <ident>.tmp_202
59 : SET <cst_str>20 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
60 : ECHO <ident>.tmp_202
61 : SET <cst_str>21 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
62 : ECHO <ident>.tmp_202
63 : SET <cst_str>22 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
64 : ECHO <ident>.tmp_202
65 : SET <cst_str>23 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
66 : ECHO <ident>.tmp_202
67 : SET <cst_str>24 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
68 : ECHO <ident>.tmp_202
69 : SET <cst_str>25 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
70 : ECHO <ident>.tmp_202
71 : SET <cst_str>26 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
72 : ECHO <ident>.tmp_202
73 : SET <cst_str>27 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
74 : ECHO <ident>.tmp_202
75 : SET <cst_str>28 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
76 : ECHO <ident>.tmp_202
77 : SET <cst_str>29 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
78 : ECHO <ident>.tmp_202
79 : SET <cst_str>30 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
80 : ECHO <ident>.tmp_202
81 : SET <cst_str>31 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
82 : ECHO <ident>.tmp_202
83 : SET <cst_str>32 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
84 : ECHO <ident>.tmp_202
85 : SET <cst_str>33 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
86 : ECHO <ident>.tmp_202
87 : SET <cst_str>34 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
88 : ECHO <ident>.tmp_202
89 : SET <cst_str>35 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
90 : ECHO <ident>.tmp_202
91 : SET <cst_str>36 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
92 : ECHO <ident>.tmp_202
93 : SET <cst_str>37 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
94 : ECHO <ident>.tmp_202
95 : SET <cst_str>38 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
96 : ECHO <ident>.tmp_202
97 : SET <cst_str>39 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
98 : ECHO <ident>.tmp_202
99 : SET <cst_str>40 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
100: ECHO <ident>.tmp_202
101: SET <cst_str>41 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
102: ECHO <ident>.tmp_202
103: SET <cst_str>42 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
104: ECHO <ident>.tmp_202
105: SET <cst_str>43 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
106: ECHO <ident>.tmp_202
107: SET <cst_str>44 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
108: ECHO <ident>.tmp_202
109: SET <cst_str>45 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
110: ECHO <ident>.tmp_202
111: SET <cst_str>46 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
112: ECHO <ident>.tmp_202
113: SET <cst_str>47 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
114: ECHO <ident>.tmp_202
115: SET <cst_str>48 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
116: ECHO <ident>.tmp_202
117: SET <cst_str>49 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
118: ECHO <ident>.tmp_202
119: SET <cst_str>50 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
120: ECHO <ident>.tmp_202
121: SET <cst_str>51 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
122: ECHO <ident>.tmp_202
123: SET <cst_str>52 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
124: ECHO <ident>.tmp_202
125: SET <cst_str>53 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
126: ECHO <ident>.tmp_202
127: SET <cst_str>54 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
128: ECHO <ident>.tmp_202
129: SET <cst_str>55 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
130: ECHO <ident>.tmp_202
131: SET <cst_str>56 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
132: ECHO <ident>.tmp_202
133: SET <cst_str>57 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
134: ECHO <ident>.tmp_202
135: SET <cst_str>58 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
136: ECHO <ident>.tmp_202
137: SET <cst_str>59 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
138: ECHO <ident>.tmp_202
139: SET <cst_str>60 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
140: ECHO <ident>.tmp_202
141: SET <cst_str>61 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
142: ECHO <ident>.tmp_202
143: SET <cst_str>62 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
144: ECHO <ident>.tmp_202
145: SET <cst_str>63 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
146: ECHO <ident>.tmp_202
147: SET <cst_str>64 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
148: ECHO <ident>.tmp_202
149: SET <cst_str>65 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
150: ECHO <ident>.tmp_202
151: SET <cst_str>66 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
152: ECHO <ident>.tmp_202
153: SET <cst_str>67 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
154: ECHO <ident>.tmp_202
155: SET <cst_str>68 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
156: ECHO <ident>.tmp_202
157: SET <cst_str>69 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
158: ECHO <ident>.tmp_202
159: SET <cst_str>70 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
160: ECHO <ident>.tmp_202
161: SET <cst_str>71 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
162: ECHO <ident>.tmp_202
163: SET <cst_str>72 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
164: ECHO <ident>.tmp_202
165: SET <cst_str>73 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
166: ECHO <ident>.tmp_202
167: SET <cst_str>74 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
168: ECHO <ident>.tmp_202
169: SET <cst_str>75 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
170: ECHO <ident>.tmp_202
171: SET <cst_str>76 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
172: ECHO <ident>.tmp_202
173: SET <cst_str>77 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
174: ECHO <ident>.tmp_202
175: SET <cst_str>78 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
176: ECHO <ident>.tmp_202
177: SET <cst_str>79 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
178: ECHO <ident>.tmp_202
179: SET <cst_str>80 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
180: ECHO <ident>.tmp_202
181: SET <cst_str>81 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
182: ECHO <ident>.tmp_202
183: SET <cst_str>82 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
184: ECHO <ident>.tmp_202
185: SET <cst_str>83 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
186: ECHO <ident>.tmp_202
187: SET <cst_str>84 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
188: ECHO <ident>.tmp_202
189: SET <cst_str>85 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
190: ECHO <ident>.tmp_202
191: SET <cst_str>86 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
192: ECHO <ident>.tmp_202
193: SET <cst_str>87 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
194: ECHO <ident>.tmp_202
195: SET <cst_str>88 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
196: ECHO <ident>.tmp_202
197: SET <cst_str>89 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
198: ECHO <ident>.tmp_202
199: SET <cst_str>90 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
200: ECHO <ident>.tmp_202
201: SET <cst_str>91 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
202: ECHO <ident>.tmp_202
203: SET <cst_str>92 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
204: ECHO <ident>.tmp_202
205: SET <cst_str>93 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
206: ECHO <ident>.tmp_202
207: SET <cst_str>94 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
208: ECHO <ident>.tmp_202
209: SET <cst_str>95 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
210: ECHO <ident>.tmp_202
211: SET <cst_str>96 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
212: ECHO <ident>.tmp_202
213: SET <cst_str>97 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
214: ECHO <ident>.tmp_202
215: SET <cst_str>98 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
216: ECHO <ident>.tmp_202
217: SET <cst_str>99 TO <ident>.tmp_202[<ident>mots] (GET_TAB)
218: ECHO <ident>.tmp_202
219: DECLARE <ident>mot
220: DECLARE_TAB <ident>.tmp_203_for_tab[<cst>100]
221: DECLARE <ident>.tmp_204
222: SET <cst_str>0 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
223: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>0 (SET_TAB)
224: SET <cst_str>1 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
225: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>1 (SET_TAB)
226: SET <cst_str>2 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
227: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>2 (SET_TAB)
228: SET <cst_str>3 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
229: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>3 (SET_TAB)
230: SET <cst_str>4 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
231: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>4 (SET_TAB)
232: SET <cst_str>5 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
233: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>5 (SET_TAB)
234: SET <cst_str>6 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
235: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>6 (SET_TAB)
236: SET <cst_str>7 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
237: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>7 (SET_TAB)
238: SET <cst_str>8 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
239: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>8 (SET_TAB)
240: SET <cst_str>9 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
241: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>9 (SET_TAB)
242: SET <cst_str>10 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
243: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>10 (SET_TAB)
244: SET <cst_str>11 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
245: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>11 (SET_TAB)
246: SET <cst_str>12 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
247: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>12 (SET_TAB)
248: SET <cst_str>13 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
249: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>13 (SET_TAB)
250: SET <cst_str>14 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
251: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>14 (SET_TAB)
252: SET <cst_str>15 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
253: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>15 (SET_TAB)
254: SET <cst_str>16 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
255: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>16 (SET_TAB)
256: SET <cst_str>17 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
257: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>17 (SET_TAB)
258: SET <cst_str>18 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
259: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>18 (SET_TAB)
260: SET <cst_str>19 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
261: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>19 (SET_TAB)
262: SET <cst_str>20 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
263: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>20 (SET_TAB)
264: SET <cst_str>21 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
265: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>21 (SET_TAB)
266: SET <cst_str>22 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
267: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>22 (SET_TAB)
268: SET <cst_str>23 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
269: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>23 (SET_TAB)
270: SET <cst_str>24 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
271: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>24 (SET_TAB)
272: SET <cst_str>25 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
273: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>25 (SET_TAB)
274: SET <cst_str>26 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
275: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>26 (SET_TAB)
276: SET <cst_str>27 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
277: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>27 (SET_TAB)
278: SET <cst_str>28 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
279: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>28 (SET_TAB)
280: SET <cst_str>29 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
281: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>29 (SET_TAB)
282: SET <cst_str>30 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
283: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>30 (SET_TAB)
284: SET <cst_str>31 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
285: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>31 (SET_TAB)
286: SET <cst_str>32 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
287: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>32 (SET_TAB)
288: SET <cst_str>33 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
289: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>33 (SET_TAB)
290: SET <cst_str>34 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
291: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>34 (SET_TAB)
292: SET <cst_str>35 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
293: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>35 (SET_TAB)
294: SET <cst_str>36 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
295: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>36 (SET_TAB)
296: SET <cst_str>37 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
297: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>37 (SET_TAB)
298: SET <cst_str>38 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
299: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>38 (SET_TAB)
300: SET <cst_str>39 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
301: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>39 (SET_TAB)
302: SET <cst_str>40 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
303: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>40 (SET_TAB)
304: SET <cst_str>41 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
305: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>41 (SET_TAB)
306: SET <cst_str>42 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
307: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>42 (SET_TAB)
308: SET <cst_str>43 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
309: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>43 (SET_TAB)
310: SET <cst_str>44 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
311: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>44 (SET_TAB)
312: SET <cst_str>45 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
313: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>45 (SET_TAB)
314: SET <cst_str>46 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
315: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>46 (SET_TAB)
316: SET <cst_str>47 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
317: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>47 (SET_TAB)
318: SET <cst_str>48 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
319: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>48 (SET_TAB)
320: SET <cst_str>49 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
321: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>49 (SET_TAB)
322: SET <cst_str>50 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
323: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>50 (SET_TAB)
324: SET <cst_str>51 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
325: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>51 (SET_TAB)
326: SET <cst_str>52 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
327: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>52 (SET_TAB)
328: SET <cst_str>53 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
329: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>53 (SET_TAB)
330: SET <cst_str>54 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
331: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>54 (SET_TAB)
332: SET <cst_str>55 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
333: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>55 (SET_TAB)
334: SET <cst_str>56 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
335: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>56 (SET_TAB)
336: SET <cst_str>57 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
337: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>57 (SET_TAB)
338: SET <cst_str>58 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
339: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>58 (SET_TAB)
340: SET <cst_str>59 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
341: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>59 (SET_TAB)
342: SET <cst_str>60 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
343: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>60 (SET_TAB)
344: SET <cst_str>61 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
345: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>61 (SET_TAB)
346: SET <cst_str>62 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
347: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>62 (SET_TAB)
348: SET <cst_str>63 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
349: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>63 (SET_TAB)
350: SET <cst_str>64 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
351: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>64 (SET_TAB)
352: SET <cst_str>65 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
353: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>65 (SET_TAB)
354: SET <cst_str>66 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
355: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>66 (SET_TAB)
356: SET <cst_str>67 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
357: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>67 (SET_TAB)
358: SET <cst_str>68 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
359: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>68 (SET_TAB)
360: SET <cst_str>69 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
361: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>69 (SET_TAB)
362: SET <cst_str>70 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
363: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>70 (SET_TAB)
364: SET <cst_str>71 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
365: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>71 (SET_TAB)
366: SET <cst_str>72 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
367: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>72 (SET_TAB)
368: SET <cst_str>73 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
369: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>73 (SET_TAB)
370: SET <cst_str>74 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
371: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>74 (SET_TAB)
372: SET <cst_str>75 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
373: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>75 (SET_TAB)
374: SET <cst_str>76 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
375: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>76 (SET_TAB)
376: SET <cst_str>77 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
377: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>77 (SET_TAB)
378: SET <cst_str>78 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
379: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>78 (SET_TAB)
380: SET <cst_str>79 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
381: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>79 (SET_TAB)
382: SET <cst_str>80 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
383: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>80 (SET_TAB)
384: SET <cst_str>81 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
385: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>81 (SET_TAB)
386: SET <cst_str>82 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
387: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>82 (SET_TAB)
388: SET <cst_str>83 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
389: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>83 (SET_TAB)
390: SET <cst_str>84 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
391: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>84 (SET_TAB)
392: SET <cst_str>85 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
393: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>85 (SET_TAB)
394: SET <cst_str>86 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
395: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>86 (SET_TAB)
396: SET <cst_str>87 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
397: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>87 (SET_TAB)
398: SET <cst_str>88 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
399: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>88 (SET_TAB)
400: SET <cst_str>89 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
401: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>89 (SET_TAB)
402: SET <cst_str>90 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
403: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>90 (SET_TAB)
404: SET <cst_str>91 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
405: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>91 (SET_TAB)
406: SET <cst_str>92 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
407: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>92 (SET_TAB)
408: SET <cst_str>93 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
409: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>93 (SET_TAB)
410: SET <cst_str>94 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
411: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>94 (SET_TAB)
412: SET <cst_str>95 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
413: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>95 (SET_TAB)
414: SET <cst_str>96 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
415: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>96 (SET_TAB)
416: SET <cst_str>97 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
417: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>97 (SET_TAB)
418: SET <cst_str>98 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
419: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>98 (SET_TAB)
420: SET <cst_str>99 TO <ident>.tmp_204[<ident>mots] (GET_TAB)
421: SET <ident>.tmp_204[<ident>.tmp_203_for_tab] TO <cst_str>99 (SET_TAB)
422: DECLARE <ident>.tmp_205_for_idx
423: SET <cst_str>0 TO <ident>.tmp_205_for_idx
424: IF <ident>.tmp_205_for_idx < <cst_str>100 GOTO <addr>426
425: GOTO <addr>444
426: SET <ident>.tmp_205_for_idx TO <ident>mot[<ident>.tmp_203_for_tab] (GET_TAB)
427: SET <cst_str>1 TO <ident>.tmp_205_for_idx + <ident>.tmp_205_for_idx
428: DECLARE <ident>.tmp_206
429: SET <cst_str>" " TO CONCAT(<ident>.tmp_206, <ident>new_phrase)
430: DECLARE <ident>.tmp_207
431: SET <cst_str>elle TO CONCAT(<ident>.tmp_207, <ident>.tmp_206)
432: SET <ident>.tmp_207 TO <ident>new_phrase
433: DECLARE <ident>.tmp_208
434: SET <cst_str>" " TO CONCAT(<ident>.tmp_208, <ident>new_phrase)
435: DECLARE <ident>.tmp_209
436: SET <cst_str>lui TO CONCAT(<ident>.tmp_209, <ident>.tmp_208)
437: SET <ident>.tmp_209 TO <ident>new_phrase
438: DECLARE <ident>.tmp_210
439: SET <cst_str>" " TO CONCAT(<ident>.tmp_210, <ident>new_phrase)
440: DECLARE <ident>.tmp_211
441: SET <ident>mot TO CONCAT(<ident>.tmp_211, <ident>.tmp_210)
442: SET <ident>.tmp_211 TO <ident>new_phrase
443: GOTO <addr>424
444: ECHO <cst_str>"Nouvelle phrase : "
445: ECHO <ident>new_phrase
446: EXIT <cst>0
