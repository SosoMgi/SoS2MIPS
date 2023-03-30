0  : DECLARE_TAB <ident>mots[<cst>100]
1  : ECHO <cst_str>"Entrez le nombre de mots de la phrase : "
2  : DECLARE <ident>nombre
3  : READ IN <ident>nombre
4  : DECLARE <ident>i
5  : SET <cst_str>0 TO <ident>i
6  : IF <ident>i < <ident>nombre GOTO <addr>8
7  : GOTO <addr>18
8  : DECLARE <ident>.tmp_212
9  : SET <cst_str>1 TO <ident>.tmp_212 + <ident>i
10 : ECHO <cst_str>"Entrez le mot numero "
11 : ECHO <ident>.tmp_212
12 : ECHO <cst_str>" : "
13 : READ IN TAB <cst>0[<ident>mots]
14 : DECLARE <ident>.tmp_213
15 : SET <cst_str>1 TO <ident>.tmp_213 + <ident>i
16 : SET <ident>.tmp_213 TO <ident>i
17 : GOTO <addr>6
18 : DECLARE <ident>.tmp_214
19 : SET <cst_str>0 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
20 : ECHO <ident>.tmp_214
21 : SET <cst_str>1 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
22 : ECHO <ident>.tmp_214
23 : SET <cst_str>2 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
24 : ECHO <ident>.tmp_214
25 : SET <cst_str>3 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
26 : ECHO <ident>.tmp_214
27 : SET <cst_str>4 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
28 : ECHO <ident>.tmp_214
29 : SET <cst_str>5 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
30 : ECHO <ident>.tmp_214
31 : SET <cst_str>6 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
32 : ECHO <ident>.tmp_214
33 : SET <cst_str>7 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
34 : ECHO <ident>.tmp_214
35 : SET <cst_str>8 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
36 : ECHO <ident>.tmp_214
37 : SET <cst_str>9 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
38 : ECHO <ident>.tmp_214
39 : SET <cst_str>10 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
40 : ECHO <ident>.tmp_214
41 : SET <cst_str>11 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
42 : ECHO <ident>.tmp_214
43 : SET <cst_str>12 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
44 : ECHO <ident>.tmp_214
45 : SET <cst_str>13 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
46 : ECHO <ident>.tmp_214
47 : SET <cst_str>14 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
48 : ECHO <ident>.tmp_214
49 : SET <cst_str>15 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
50 : ECHO <ident>.tmp_214
51 : SET <cst_str>16 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
52 : ECHO <ident>.tmp_214
53 : SET <cst_str>17 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
54 : ECHO <ident>.tmp_214
55 : SET <cst_str>18 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
56 : ECHO <ident>.tmp_214
57 : SET <cst_str>19 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
58 : ECHO <ident>.tmp_214
59 : SET <cst_str>20 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
60 : ECHO <ident>.tmp_214
61 : SET <cst_str>21 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
62 : ECHO <ident>.tmp_214
63 : SET <cst_str>22 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
64 : ECHO <ident>.tmp_214
65 : SET <cst_str>23 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
66 : ECHO <ident>.tmp_214
67 : SET <cst_str>24 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
68 : ECHO <ident>.tmp_214
69 : SET <cst_str>25 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
70 : ECHO <ident>.tmp_214
71 : SET <cst_str>26 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
72 : ECHO <ident>.tmp_214
73 : SET <cst_str>27 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
74 : ECHO <ident>.tmp_214
75 : SET <cst_str>28 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
76 : ECHO <ident>.tmp_214
77 : SET <cst_str>29 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
78 : ECHO <ident>.tmp_214
79 : SET <cst_str>30 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
80 : ECHO <ident>.tmp_214
81 : SET <cst_str>31 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
82 : ECHO <ident>.tmp_214
83 : SET <cst_str>32 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
84 : ECHO <ident>.tmp_214
85 : SET <cst_str>33 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
86 : ECHO <ident>.tmp_214
87 : SET <cst_str>34 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
88 : ECHO <ident>.tmp_214
89 : SET <cst_str>35 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
90 : ECHO <ident>.tmp_214
91 : SET <cst_str>36 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
92 : ECHO <ident>.tmp_214
93 : SET <cst_str>37 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
94 : ECHO <ident>.tmp_214
95 : SET <cst_str>38 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
96 : ECHO <ident>.tmp_214
97 : SET <cst_str>39 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
98 : ECHO <ident>.tmp_214
99 : SET <cst_str>40 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
100: ECHO <ident>.tmp_214
101: SET <cst_str>41 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
102: ECHO <ident>.tmp_214
103: SET <cst_str>42 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
104: ECHO <ident>.tmp_214
105: SET <cst_str>43 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
106: ECHO <ident>.tmp_214
107: SET <cst_str>44 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
108: ECHO <ident>.tmp_214
109: SET <cst_str>45 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
110: ECHO <ident>.tmp_214
111: SET <cst_str>46 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
112: ECHO <ident>.tmp_214
113: SET <cst_str>47 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
114: ECHO <ident>.tmp_214
115: SET <cst_str>48 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
116: ECHO <ident>.tmp_214
117: SET <cst_str>49 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
118: ECHO <ident>.tmp_214
119: SET <cst_str>50 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
120: ECHO <ident>.tmp_214
121: SET <cst_str>51 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
122: ECHO <ident>.tmp_214
123: SET <cst_str>52 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
124: ECHO <ident>.tmp_214
125: SET <cst_str>53 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
126: ECHO <ident>.tmp_214
127: SET <cst_str>54 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
128: ECHO <ident>.tmp_214
129: SET <cst_str>55 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
130: ECHO <ident>.tmp_214
131: SET <cst_str>56 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
132: ECHO <ident>.tmp_214
133: SET <cst_str>57 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
134: ECHO <ident>.tmp_214
135: SET <cst_str>58 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
136: ECHO <ident>.tmp_214
137: SET <cst_str>59 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
138: ECHO <ident>.tmp_214
139: SET <cst_str>60 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
140: ECHO <ident>.tmp_214
141: SET <cst_str>61 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
142: ECHO <ident>.tmp_214
143: SET <cst_str>62 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
144: ECHO <ident>.tmp_214
145: SET <cst_str>63 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
146: ECHO <ident>.tmp_214
147: SET <cst_str>64 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
148: ECHO <ident>.tmp_214
149: SET <cst_str>65 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
150: ECHO <ident>.tmp_214
151: SET <cst_str>66 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
152: ECHO <ident>.tmp_214
153: SET <cst_str>67 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
154: ECHO <ident>.tmp_214
155: SET <cst_str>68 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
156: ECHO <ident>.tmp_214
157: SET <cst_str>69 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
158: ECHO <ident>.tmp_214
159: SET <cst_str>70 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
160: ECHO <ident>.tmp_214
161: SET <cst_str>71 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
162: ECHO <ident>.tmp_214
163: SET <cst_str>72 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
164: ECHO <ident>.tmp_214
165: SET <cst_str>73 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
166: ECHO <ident>.tmp_214
167: SET <cst_str>74 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
168: ECHO <ident>.tmp_214
169: SET <cst_str>75 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
170: ECHO <ident>.tmp_214
171: SET <cst_str>76 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
172: ECHO <ident>.tmp_214
173: SET <cst_str>77 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
174: ECHO <ident>.tmp_214
175: SET <cst_str>78 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
176: ECHO <ident>.tmp_214
177: SET <cst_str>79 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
178: ECHO <ident>.tmp_214
179: SET <cst_str>80 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
180: ECHO <ident>.tmp_214
181: SET <cst_str>81 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
182: ECHO <ident>.tmp_214
183: SET <cst_str>82 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
184: ECHO <ident>.tmp_214
185: SET <cst_str>83 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
186: ECHO <ident>.tmp_214
187: SET <cst_str>84 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
188: ECHO <ident>.tmp_214
189: SET <cst_str>85 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
190: ECHO <ident>.tmp_214
191: SET <cst_str>86 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
192: ECHO <ident>.tmp_214
193: SET <cst_str>87 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
194: ECHO <ident>.tmp_214
195: SET <cst_str>88 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
196: ECHO <ident>.tmp_214
197: SET <cst_str>89 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
198: ECHO <ident>.tmp_214
199: SET <cst_str>90 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
200: ECHO <ident>.tmp_214
201: SET <cst_str>91 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
202: ECHO <ident>.tmp_214
203: SET <cst_str>92 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
204: ECHO <ident>.tmp_214
205: SET <cst_str>93 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
206: ECHO <ident>.tmp_214
207: SET <cst_str>94 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
208: ECHO <ident>.tmp_214
209: SET <cst_str>95 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
210: ECHO <ident>.tmp_214
211: SET <cst_str>96 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
212: ECHO <ident>.tmp_214
213: SET <cst_str>97 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
214: ECHO <ident>.tmp_214
215: SET <cst_str>98 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
216: ECHO <ident>.tmp_214
217: SET <cst_str>99 TO <ident>.tmp_214[<ident>mots] (GET_TAB)
218: ECHO <ident>.tmp_214
219: ECHO <cst_str>"\n"
220: DECLARE <ident>new_phrase
221: SET <cst_str>"" TO <ident>new_phrase
222: DECLARE <ident>mot
223: DECLARE_TAB <ident>.tmp_215_for_tab[<cst>100]
224: DECLARE <ident>.tmp_216
225: SET <cst_str>0 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
226: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>0 (SET_TAB)
227: SET <cst_str>1 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
228: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>1 (SET_TAB)
229: SET <cst_str>2 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
230: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>2 (SET_TAB)
231: SET <cst_str>3 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
232: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>3 (SET_TAB)
233: SET <cst_str>4 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
234: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>4 (SET_TAB)
235: SET <cst_str>5 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
236: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>5 (SET_TAB)
237: SET <cst_str>6 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
238: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>6 (SET_TAB)
239: SET <cst_str>7 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
240: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>7 (SET_TAB)
241: SET <cst_str>8 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
242: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>8 (SET_TAB)
243: SET <cst_str>9 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
244: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>9 (SET_TAB)
245: SET <cst_str>10 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
246: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>10 (SET_TAB)
247: SET <cst_str>11 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
248: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>11 (SET_TAB)
249: SET <cst_str>12 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
250: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>12 (SET_TAB)
251: SET <cst_str>13 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
252: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>13 (SET_TAB)
253: SET <cst_str>14 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
254: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>14 (SET_TAB)
255: SET <cst_str>15 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
256: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>15 (SET_TAB)
257: SET <cst_str>16 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
258: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>16 (SET_TAB)
259: SET <cst_str>17 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
260: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>17 (SET_TAB)
261: SET <cst_str>18 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
262: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>18 (SET_TAB)
263: SET <cst_str>19 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
264: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>19 (SET_TAB)
265: SET <cst_str>20 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
266: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>20 (SET_TAB)
267: SET <cst_str>21 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
268: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>21 (SET_TAB)
269: SET <cst_str>22 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
270: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>22 (SET_TAB)
271: SET <cst_str>23 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
272: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>23 (SET_TAB)
273: SET <cst_str>24 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
274: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>24 (SET_TAB)
275: SET <cst_str>25 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
276: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>25 (SET_TAB)
277: SET <cst_str>26 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
278: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>26 (SET_TAB)
279: SET <cst_str>27 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
280: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>27 (SET_TAB)
281: SET <cst_str>28 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
282: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>28 (SET_TAB)
283: SET <cst_str>29 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
284: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>29 (SET_TAB)
285: SET <cst_str>30 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
286: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>30 (SET_TAB)
287: SET <cst_str>31 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
288: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>31 (SET_TAB)
289: SET <cst_str>32 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
290: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>32 (SET_TAB)
291: SET <cst_str>33 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
292: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>33 (SET_TAB)
293: SET <cst_str>34 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
294: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>34 (SET_TAB)
295: SET <cst_str>35 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
296: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>35 (SET_TAB)
297: SET <cst_str>36 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
298: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>36 (SET_TAB)
299: SET <cst_str>37 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
300: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>37 (SET_TAB)
301: SET <cst_str>38 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
302: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>38 (SET_TAB)
303: SET <cst_str>39 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
304: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>39 (SET_TAB)
305: SET <cst_str>40 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
306: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>40 (SET_TAB)
307: SET <cst_str>41 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
308: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>41 (SET_TAB)
309: SET <cst_str>42 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
310: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>42 (SET_TAB)
311: SET <cst_str>43 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
312: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>43 (SET_TAB)
313: SET <cst_str>44 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
314: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>44 (SET_TAB)
315: SET <cst_str>45 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
316: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>45 (SET_TAB)
317: SET <cst_str>46 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
318: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>46 (SET_TAB)
319: SET <cst_str>47 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
320: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>47 (SET_TAB)
321: SET <cst_str>48 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
322: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>48 (SET_TAB)
323: SET <cst_str>49 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
324: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>49 (SET_TAB)
325: SET <cst_str>50 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
326: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>50 (SET_TAB)
327: SET <cst_str>51 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
328: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>51 (SET_TAB)
329: SET <cst_str>52 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
330: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>52 (SET_TAB)
331: SET <cst_str>53 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
332: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>53 (SET_TAB)
333: SET <cst_str>54 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
334: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>54 (SET_TAB)
335: SET <cst_str>55 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
336: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>55 (SET_TAB)
337: SET <cst_str>56 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
338: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>56 (SET_TAB)
339: SET <cst_str>57 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
340: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>57 (SET_TAB)
341: SET <cst_str>58 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
342: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>58 (SET_TAB)
343: SET <cst_str>59 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
344: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>59 (SET_TAB)
345: SET <cst_str>60 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
346: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>60 (SET_TAB)
347: SET <cst_str>61 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
348: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>61 (SET_TAB)
349: SET <cst_str>62 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
350: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>62 (SET_TAB)
351: SET <cst_str>63 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
352: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>63 (SET_TAB)
353: SET <cst_str>64 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
354: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>64 (SET_TAB)
355: SET <cst_str>65 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
356: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>65 (SET_TAB)
357: SET <cst_str>66 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
358: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>66 (SET_TAB)
359: SET <cst_str>67 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
360: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>67 (SET_TAB)
361: SET <cst_str>68 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
362: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>68 (SET_TAB)
363: SET <cst_str>69 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
364: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>69 (SET_TAB)
365: SET <cst_str>70 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
366: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>70 (SET_TAB)
367: SET <cst_str>71 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
368: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>71 (SET_TAB)
369: SET <cst_str>72 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
370: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>72 (SET_TAB)
371: SET <cst_str>73 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
372: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>73 (SET_TAB)
373: SET <cst_str>74 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
374: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>74 (SET_TAB)
375: SET <cst_str>75 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
376: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>75 (SET_TAB)
377: SET <cst_str>76 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
378: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>76 (SET_TAB)
379: SET <cst_str>77 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
380: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>77 (SET_TAB)
381: SET <cst_str>78 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
382: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>78 (SET_TAB)
383: SET <cst_str>79 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
384: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>79 (SET_TAB)
385: SET <cst_str>80 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
386: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>80 (SET_TAB)
387: SET <cst_str>81 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
388: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>81 (SET_TAB)
389: SET <cst_str>82 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
390: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>82 (SET_TAB)
391: SET <cst_str>83 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
392: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>83 (SET_TAB)
393: SET <cst_str>84 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
394: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>84 (SET_TAB)
395: SET <cst_str>85 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
396: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>85 (SET_TAB)
397: SET <cst_str>86 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
398: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>86 (SET_TAB)
399: SET <cst_str>87 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
400: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>87 (SET_TAB)
401: SET <cst_str>88 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
402: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>88 (SET_TAB)
403: SET <cst_str>89 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
404: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>89 (SET_TAB)
405: SET <cst_str>90 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
406: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>90 (SET_TAB)
407: SET <cst_str>91 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
408: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>91 (SET_TAB)
409: SET <cst_str>92 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
410: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>92 (SET_TAB)
411: SET <cst_str>93 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
412: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>93 (SET_TAB)
413: SET <cst_str>94 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
414: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>94 (SET_TAB)
415: SET <cst_str>95 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
416: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>95 (SET_TAB)
417: SET <cst_str>96 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
418: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>96 (SET_TAB)
419: SET <cst_str>97 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
420: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>97 (SET_TAB)
421: SET <cst_str>98 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
422: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>98 (SET_TAB)
423: SET <cst_str>99 TO <ident>.tmp_216[<ident>mots] (GET_TAB)
424: SET <ident>.tmp_216[<ident>.tmp_215_for_tab] TO <cst_str>99 (SET_TAB)
425: DECLARE <ident>.tmp_217_for_idx
426: SET <cst_str>0 TO <ident>.tmp_217_for_idx
427: IF <ident>.tmp_217_for_idx < <cst_str>100 GOTO <addr>429
428: GOTO <addr>465
429: SET <ident>.tmp_217_for_idx TO <ident>mot[<ident>.tmp_215_for_tab] (GET_TAB)
430: SET <cst_str>1 TO <ident>.tmp_217_for_idx + <ident>.tmp_217_for_idx
431: IF <ident>mot ==(str) <cst_str>Anne GOTO <addr>439
432: GOTO <addr>433
433: IF <ident>mot ==(str) <cst_str>Corinne GOTO <addr>439
434: GOTO <addr>435
435: IF <ident>mot ==(str) <cst_str>Sabine GOTO <addr>439
436: GOTO <addr>437
437: IF <ident>mot ==(str) <cst_str>Emilie GOTO <addr>439
438: GOTO <addr>445
439: DECLARE <ident>.tmp_218
440: SET <cst_str>" " TO CONCAT(<ident>.tmp_218, <ident>new_phrase)
441: DECLARE <ident>.tmp_219
442: SET <cst_str>elle TO CONCAT(<ident>.tmp_219, <ident>.tmp_218)
443: SET <ident>.tmp_219 TO <ident>new_phrase
444: GOTO <addr>427
445: IF <ident>mot ==(str) <cst_str>Pierre GOTO <addr>453
446: GOTO <addr>447
447: IF <ident>mot ==(str) <cst_str>Paul GOTO <addr>453
448: GOTO <addr>449
449: IF <ident>mot ==(str) <cst_str>Jacques GOTO <addr>453
450: GOTO <addr>451
451: IF <ident>mot ==(str) <cst_str>Albert GOTO <addr>453
452: GOTO <addr>459
453: DECLARE <ident>.tmp_220
454: SET <cst_str>" " TO CONCAT(<ident>.tmp_220, <ident>new_phrase)
455: DECLARE <ident>.tmp_221
456: SET <cst_str>lui TO CONCAT(<ident>.tmp_221, <ident>.tmp_220)
457: SET <ident>.tmp_221 TO <ident>new_phrase
458: GOTO <addr>427
459: DECLARE <ident>.tmp_222
460: SET <cst_str>" " TO CONCAT(<ident>.tmp_222, <ident>new_phrase)
461: DECLARE <ident>.tmp_223
462: SET <ident>mot TO CONCAT(<ident>.tmp_223, <ident>.tmp_222)
463: SET <ident>.tmp_223 TO <ident>new_phrase
464: GOTO <addr>427
465: ECHO <cst_str>"Nouvelle phrase :"
466: ECHO <ident>new_phrase
467: ECHO <cst_str>"\n"
468: EXIT <cst>0
