emptyh=[]
emptyf=[]
firsth=[]
secondh=[]
bothinh=[]
noncycfactor=[]

for k in range(1,150):
    hfactors=[]
    ffactors=[]
    theta=cyclotomic_polynomial(k)
    if (theta.degree()/2).is_integer():
        h2f=x^(theta.degree()/2)-theta
    else:
        continue
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
                noncycfactor.append((k,j[0]))
    if not hfactors:
        emptyh.append(k)
    if not ffactors:
        emptyf.append(k)
    if cyclotomic_polynomial(1) in [i[0] for i in hfactors]:
        firsth.append(k)
    if cyclotomic_polynomial(2) in [i[0] for i in hfactors]:
        secondh.append(k)
    if cyclotomic_polynomial(1) in [i[0] for i in hfactors] and cyclotomic_polynomial(2) in [i[0] for i in hfactors]:
        bothinh.append(k)
    #print(str(k))
    #print('hfactors ',hfactors)
    #print('ffactors ',ffactors)
print()
print('emptyh ',emptyh)
print('emptyf ',emptyf)
print('firsth ',firsth)
print('secondh ',secondh)
print('bothinh ',bothinh)
print('noncycfactor ',noncycfactor)
