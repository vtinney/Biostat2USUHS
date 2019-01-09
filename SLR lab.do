// SLR Lab - use Age_SBP.dta

scatter sbp age

regress sbp age

predict yhat

twoway (scatter sbp age)(lfit sbp age)

pwcorr sbp age, sig star(0.05) obs
