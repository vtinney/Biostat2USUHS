//Frequencies homework solutions
// tabi a b \ c d, chi2 exact expected

//D 12.4.5
tabi 31 91 \ 19 359, chi2 expected

// D 12.5.1
tabi 28 19 41 53 \ 35 38 44 60, chi2 expected

//D 12.7.5

edit
//copy paste data
employed	garden	case	count
0	0	0	33
0	0	1	15
0	1	0	38
0	1	1	75
1	0	0	38
1	0	1	13
1	1	0	37
1	1	1	40

cc case garden[fweight = count], by(employed)

