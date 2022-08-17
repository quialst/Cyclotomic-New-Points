import random
load('definitions.sage')

R.<x>=QQ['x']

#generating the p-adic newton polygon for a polynomial
#defined as the lower convex hull of the p-adic valuations of the coefficients as a function of term degree
def taylorpoly(n):
    f=0
    for i in range(n+1):
        f=f+(1/math.factorial(i))*x^i
    return f

prime=2
fn=randompoly(9, 10); fn
degval=[(i,fn.list()[i].valuation(prime)) for i in range(len(fn.list()))]; degval
show(points(degval))
np=[]
np.append(degval[0])
coord=0
i=0
while i<len(degval):
    mini=max([i[1] for i in degval])
    newmin=False
    for j in range(coord+1,len(degval)):
        if degval[j][1]<mini:
            newmin=True
            mini=degval[j][1]
            coord=degval[j][0]
    if not newmin:
        for j in reversed(range(coord+1,len(degval))):
            if degval[j][1]==degval[coord][1]:
                coord=degval[j][0]
    np.append(degval[coord])
    i=coord+1
np
line(np)
