//Frequencies lab Do file

//HIV HPV example
//label variables
codebook
recast int HIV
recast int HPV
label define hiv 1 "sero symptom" 2 "Sero asymptote" 3 "sero"
label values HIV hiv
label define hpv 1 "positive" 2 "negative"
label values HPV hpv

//chi square
tabulate HPV HIV [fweight = count], chi2 clrchi2 expected

// cell example -homogeneity
tabulate age cell [fweight = count], chi2 clrchi2 expected

// M-H cancer example
by smoker, sort : tabulate p_smoker case [fweight = count]
cc case p_smoker [fweight = count], by(smoker) bd tarone

//two sample proportions chi2 and fisher's exact
//format is tabi a b \ c d, chi2 exact lrchi2 

tabi 60 40 \ 48 72, chi2 exact lrchi2 
tabi 2 23 \ 5 30, chi2 exact lrchi2 



