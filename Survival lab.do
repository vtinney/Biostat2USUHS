//Survival Lab

// Dr Kao example slide 22
stset t, failure(delta==1)
sts list
sts generate survfunc = s
sts graph, addplot((scatter survfunc t if delta==0, sort mcolor(navy) msize(medium) msymbol(plus)))

//Sternum log-rank test

stset t, failure(delta==1)
sts list
sts generate survfunc1 = s if grade==0
sts generate survfunc2 = s if grade==1
sts test grade, logrank

sts graph, by(grade) addplot((scatter survfunc1 time if delta==0, sort mcolor(navy) msize(medium) msymbol(plus)) (scatter survfunc2 time if delta==0, mcolor(red) msize(medium) msymbol(plus)))
