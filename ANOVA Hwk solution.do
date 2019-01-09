//anova hwk solution

//8.2.5

//oneway anova
oneway force age


//error bar chart
predict meanforce
predict SEforce, stdp
serrbar meanforce SEforce age, scale(2)

//pairwise comparison
pwmean force, over(age) mcompare(tukey) effects

//8.2.6

//oneway anova
oneway plaque group

//error bar chart
anova plaque group
predict meanplaque
predict SEplaque, stdp
serrbar meanplaque SEplaque group, scale(2)

//pairwise comparison
pwmean plaque, over(group) mcompare(tukey) effects

//8.3.3

anova score method level

//8.3.5

anova decrease method subject
