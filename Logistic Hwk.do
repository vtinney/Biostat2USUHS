//Logistic Hwk

//11.4.1 victim data

logit violence gender
logistic violence gender
estat gof
estat class
fitstat

//dengue problem set


//recode dengue
replace dengue = 0 if dengue == 2

//recode mosnet

replace mosnet = 0 if mosnet == 2

//generate dummy variables for sector

tabulate sector, generate(sector)

//logistic regression

logit dengue age mosnet sector1 sector2 sector3 sector4
logistic dengue age mosnet sector1 sector2 sector3 sector4

//postestimation

estat gof
estat class
fitstat
