// Non-parametric lab

//diet example

edit

//copy paste

Subject	before	after
1	177	175
2	189	187
3	169	177
4	178	174
5	166	158
6	190	190
7	178	176
8	188	176
9	188	185
10	170	166
11	192	191
12	184	188
13	177	166
14	186	179
15	192	190
16	173	181
17	188	166
18	199	195
19	187	186
20	201	200

signrank before = after

//cadmium oxide example

edit

//copy paste

hemoglob	sample
14.4	1
14.2	1
13.8	1
16.5	1
14.1	1
16.6	1
15.9	1
15.6	1
14.1	1
15.3	1
15.7	1
16.7	1
13.7	1
15.3	1
14	1
17.4	2
16.2	2
17.1	2
17.5	2
15	2
16	2
16.9	2
15	2
16.3	2
16.8	2

ranksum hemoglob, by(sample)

egen rank = rank(hemoglob) 
bysort sample : egen ranksum = sum(rank) 
by sample : egen rankmean = mean(rank) 

tabdisp sample, c(ranksum rankmean)  format(%5.1f) 

//obstetrics example

edit

//copy paste

Infant	Apgar_1	Apgar_5
1	10	10
2	3	6
3	8	9
4	9	10
5	8	9
6	9	10
7	8	9
8	8	9
9	8	9
10	8	9
11	7	9
12	8	9
13	6	9
14	8	10
15	9	10
16	9	10
17	9	10
18	9	9
19	8	10
20	9	9
21	3	3
22	9	9
23	7	10
24	10	10

spearman Apgar_1 Apgar_5, stats(rho obs p) star(0.05)


// teaching example

edit

//copy paste


score	method
90	1
94	1
87	1
74	1
85	1
96	1
80	1
82	2
85	2
80	2
63	2
74	2
81	2
91	2
89	3
68	3
71	3
80	3
69	3
65	3

kwallis score, by(method)

