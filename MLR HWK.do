//MLR hwk

//10.3.1

regress mmo ml ra
predict resid
predict si, rsta
hist si, frequency bin(20) normal
pnorm si
scatter si resid
scatter si ml
scatter si ra

//10.3.3

regress y x1 x2
predict resid
predict si, rsta
hist si, frequency bin(10) normal
pnorm si
scatter si resid
scatter si x1
scatter si x2

//11.2.1

regress y x1 x2
predict resid
predict si, rsta
hist si, frequency normal
pnorm si
scatter si resid
scatter si x1
scatter si x2
