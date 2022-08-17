load('definitions.sage')
P.<x>=PolynomialRing(QQ)

f1=randompoly(6,10)
galestimate(randomparametrize(f1,2,2,10),confidence=45)
randomparametrize(f1,4,4,5)
