// Non-parametric Hwk

// 13.3.2

edit

instructed	notinstructed
1.5	2
2	2
3.5	4
3	2.5
3.5	4
2.5	3
2	3.5
1.5	3
1.5	2.5
2	2.5
3	2.5
2	2.5

signrank instructed = notinstructed

// 13.6.1

edit

weight	grp
252	1
240	1
205	1
200	1
170	1
170	1
320	1
148	1
214	1
270	1
265	1
203	1
215	1
190	1
270	1
159	1
204	1
215	1
254	1
164	1
288	1
138	1
240	1
217	1
240	1
302	1
312	1
126	1
268	1
215	1
183	1
287	1
210	1
225	1
258	1
221	1
185	2
310	2
212	2
238	2
184	2
136	2
200	2
270	2
200	2
212	2
182	2
225	2
195	2
210	2
190	2
172	2
190	2
140	2
280	2
264	2
270	2
210	2
192	2
126	2
220	2
295	2
202	2
268	2
220	2
311	2
164	2
206	2
170	2
190	2

ranksum weight, by(grp)

egen rank = rank(weight) 
bysort grp : egen ranksum = sum(rank) 
by grp : egen rankmean = mean(rank) 

tabdisp grp, c(ranksum rankmean)  format(%5.1f) 

// 13.10.6

edit

x	y
500	525
475	130
390	325
325	190
325	90
205	295
200	180
75	74
230	420
50	60
175	105
130	148
76	75
200	250
174	102
201	151
125	130

spearman x y
