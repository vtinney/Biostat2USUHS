//MLR Lab

regress wgt hgt age
predict resid
predict si, rsta

summarize resid
summarize si

histogram si, bin(5) frequency normal

pnorm si
scatter si resid
scatter si hgt
scatter si age
