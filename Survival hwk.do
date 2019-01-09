//Survival Hwk
// 14.3.1
stset t, failure(delta==1)
sts list
sts generate survfunc = s
sts graph, addplot((scatter survfunc t if delta==0, sort mcolor(navy) msize(medium) msymbol(plus)))

//14.3.3

stset t, failure(delta==1)
sts list
sts generate survfunc1 = s if group==0
sts generate survfunc2 = s if group==1
sts test group, logrank

sts graph, by(group) addplot((scatter survfunc1 t if delta==0, sort mcolor(navy) msize(medium) msymbol(plus)) (scatter survfunc2 t if delta==0, mcolor(red) msize(medium) msymbol(plus)))
