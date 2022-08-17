check=[] #list in form (g^2,h^2,f)
r=0

theta=cyclotomic_polynomial(35)
hfactors=[]
ffactors=[]

try:
    i=theta.degree()/2
    h2f=x^i-theta
    for j in list(h2f.factor()):
        if j[1]%2==0:
            if j[0].is_cyclotomic():
                hfactors.append((j[0],j[1],True))
            else:
                hfactors.append((j[0],j[1],False))
        else:
            if j[0].is_cyclotomic():
                ffactors.append((j[0],j[1],True))
            else:
                ffactors.append((j[0],j[1],False))
    print('hfactors ',hfactors)
    print('ffactors ',ffactors)
except KeyboardInterrupt:
    pass
