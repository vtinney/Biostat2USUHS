// Logistic Lab

//pelvic ungrouped data example

logistic y x
estat class
estat gof
fitstat // install fitstat.pkg if not installed  
//ssc install fitstat.pkg

// pelvic grouped data example

logistic y x [fweight = count]

// change variables for disease example

rename disease y
rename age x1

tabulate socio, generate(socio)
rename socio2 x2
rename socio3 x3

tabulate sector, generate(sector)
rename sector2 x4

//logistic regression disease data

logit y x1 x2 x3 x4
logistic y x1 x2 x3 x4

estat gof
estat class
fitstat
