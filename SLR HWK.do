// SLR Homework

//9.3.3

edit
//copy past below
var1	var2
1000	600
550	625
97	560
90	585
85	590
126	500
300	700
110	570
65	540
650	785
600	765
660	611
270	600
680	625
540	650
600	635
330	522

rename var1 methadone // independent

rename var2 QTc // dependent

regress QTc methadone

predict yhat

predict e, resid

// Part A - scatter diagram 
scatter QTc methadone

graph twoway lfit QTc methadone || scatter QTc methadone

// Part B - regression equation = 559.9028 + 0.1398(methadone)

//9.4.1

/* use computing from above regression
(a) Compute the coefficient of determination.
	 R-squared       =    0.2639
(b) Prepare an ANOVA table and use the F statistic to test the null hypothesis that b1 = 0. Let alpha = .05.
	 Prob > F        =    0.0349
(c) Use the t statistic to test the null hypothesis that b1 = 0 at the .05 level of significance.
	 t = 0.035
(d) Determine the p value for each hypothesis test.
	p value for both is 0.035
(e) State your conclusions in terms of the problem.
	Reject the null
(f) Construct the 95 percent confidence interval for b1.
	.0112989    .2684738
*/

// 9.3.7

edit

//copy paste below

18	0.213
21	0.265
21	0.446
23	0.203
27	0.369
27	0.568
30	0.382
32	0.383
32	0.274
32	0.424
36	0.308
37	0.498
41	0.398
88	0.667
42	0.485
42	0.427
43	0.562
43	0.463
48	0.549
48	0.538
51	0.571
55	0.546
58	0.402
60	0.592
62	0.541
67	0.568
68	0.8

rename var1 DTPA

rename var2 C

regress DTPA C

regress C DTPA

predict yhat

predict e, resid

// Part a - scatter plot

scatter C DTPA

graph twoway lfit C DTPA || scatter C DTPA

// Part b - formula for the line

// yhat = 0.1928 + 0.0063(DTPA)


/* 9.4.5 -no computing needed, use above regression output
(a) Compute the coefficient of determination.
	 R-squared       =    0.5846
(b) Prepare an ANOVA table and use the F statistic to test the null hypothesis that b1 = 0. Let alpha = .05.
	Prob > F        =    0.0000
(c) Use the t statistic to test the null hypothesis that b1 = 0 at the .05 level of significance.
	t = 0.000
(d) Determine the p value for each hypothesis test.
	Both p values = 0.000
(e) State your conclusions in terms of the problem.
	reject the null
(f) Construct the 95 percent confidence interval for b1.
*/

// 9.7.1

edit

//copy paste below

age	bilirubin
78	7.5
72	12.9
81	14.3
59	8
64	14.1
48	10.9
46	12.3
42	1
58	5.2
52	5.1
44	7
42	1.8
45	0.8
78	3.8
47	3.5
50	5.1
57	16.5
52	3.5
58	5.6
45	1.9

regress bilirubin age

// (a) Prepare a scatter diagram.

scatter bilirubin age
graph twoway lfit bilirubin age || scatter bilirubin age

//(b) Compute the sample correlation coefficient.
	
pwcorr bilirubin age, sig star(0.05) obs

//(c) Test H0 : p = 0 at the .05 level of significance and state your conclusions.
//	0.038
//(d) Determine the p value for the test.
//	0.038
//(e) Construct the 95 percent confidence interval for r.
//	.0106126    .3480346


#9.7.5 

edit
//copy paste below

paco2	pao2
40	101
47	69
34	132
42	65
54	72
48	76
53.6	67.2
56.9	70.9
58	73
45	66
54.5	80
54	72
43	105
44.3	113
53.9	69.2
41.8	66.7
33	67
43.1	77.5
52.4	65.1
37.9	71
34.5	86.5
40.1	74.7
33	94
59.9	60.4
62.6	52.5
54.1	76.9
45.7	65.3
40.6	80.3
56.6	53.2
59	71.9


regress pao2 paco2

//(a) Prepare a scatter diagram.

scatter pao2 paco2
graph twoway lfit pao2 paco2 || scatter pao2 paco2

//(b) Compute the sample correlation coefficient.

pwcorr pao2 paco2, sig star(0.05) obs

//	.53075418

//(c) Test H0 : p = 0 at the .05 level of significance and state your conclusions.
//	0.003, reject the null
//(d) Determine the p value for the test.
//	0.003
//(e) Construct the 95 percent confidence interval for r.
//	-1.696131   -.4003163
