//copy paste data into editor

//label values

label define var1 1 "DOC" 2 "WKY" 3 "DOC-Ca" 4 "WKY-Ca"
label values condition var1 

//one-way anova

oneway weight condition

// two-way anova table example
anova time method age
oneway time method


//standard error bar charts

//predict variables to chart
predict weightmean
predict Seweight, stdp

//error bar chart
serrbar weightmean SEweight condition, scale(2)

//post estimation pairwise means comparison

pwmean weight, over(condition) mcompare(tukey) cieffects pveffects effects cimeans groups
