import random
import math
from math import sqrt
import itertools
import numpy as np


def galestimate(poly,confidence=None,count=False):
    d=poly.discriminant(); d
    if confidence==None:
        confidence=math.ceil(abs(d/2))
    cycles=[]
    primes=Primes()
    p=primes.first()
    num=0
    while p<confidence:#reduces modulo primes and checks cycle types
        num=num+1
        if d%p!=0:
            S=GF(p)
            g=poly.change_ring(S)
            for i in list(g.factor()):
                cycles.append(i[0].degree())
            if (2 in cycles) and (poly.degree() in cycles):#follows from a subgroup of S_n containing an n-cycle and a transposition (2-cycle) must be S_n
                #print('Symmetric Group '+str(poly.degree()))
                break
        p=primes.next(p)
    if count:
        return num
    return cycles

def randompoly(n,coeffrange): #generates random irreducible polynomial of degree n with integer coefficients in the range. Requires polynomial ring over QQ['x'] or ZZ['x'] defined in env
    assert((parent(x)==QQ['x']) or (parent(x)==ZZ['x'])), "Randompoly requires polynomial ring over QQ['x'] or ZZ['x'] defined"
    reducible=True
    while reducible:#checks reducibility
        f=0
        for i in range(n):
            f=f+random.randint(-coeffrange,coeffrange)*x^i
        lead=random.randint(-coeffrange,coeffrange)
        while lead==0:#make sure the leading coefficient isn't 0
                lead=random.randint(-coeffrange,coeffrange)
        f=f+lead*x^n
        reducible=not f.is_irreducible()
    return f

def randomparametrize(f1,gdeg,hdeg,coeff): #find a random parametrization of a hyperelliptic curve f1
    g=randompoly(gdeg,coeff)
    h=randompoly(hdeg,coeff)
    F=0
    while not F.is_irreducible() or (F==0):
        while (f1.gcd(h).degree()!=0) or (f1.gcd(h)==0):
            h=randompoly(hdeg,coeff)
        F=(g)^2-(h)^2*f1
    return (g,h,F)

def flatreverseparamtrize(theta):
    c=theta.list()
    terms=[c[i]*x^i for i in range(len(c))] #separate polynomial into a list of terms
    terms=[i for i in terms if i != 0] #remove 0 from list
    params=[] #list in form (g^2,h^2,f)
    for w in range(3,len(terms)):
        for i in itertools.combinations(terms,w): #take all combinations of 3 terms
            g2=0
            for j in i:
                g2=g2+j
            gsquare=True #check if g is a perfect square
            for j in list(g2.factor()):
                if j[1]%2!=0:
                    gsquare=False
            if gsquare:
                h2f=g2-theta
                if not h2f.is_irreducible() and 6<=h2f.degree():
                    t=[n[0]^n[1] for n in list(h2f.factor()) if n[1]%2==0] #factors of h2
                    if len(t)<=len(list(h2f.factor())) and 0<len(t):
                        h=1
                        for d in t:
                            h=h*d
                        if theta.gcd(h).degree().is_constant() and (theta.gcd(h)!=0):
                            if 3<=h2f.quo_rem(h)[0].degree():
                                params.append((g,h,h2f.quo_rem(h)[0]))
    return params

def subsquare(theta):
    d=[abs(i) for i in theta.list()]
    signs=[int(math.copysign(1,i)) for i in theta.list()]
    space=[]
    space.append([j for j in range(d[0]) if sqrt(j).is_integer()])
    for i in d[1:-1]: #creating the cartesian product
        space.append([j for j in range(i+1)])
    space.append([j for j in range(d[-1]+1) if sqrt(j).is_integer()])
    marker=1
    for i in itertools.product(*space):
        marker=marker+1
        try:
            if sqrt(i[np.max(np.nonzero(i))]).is_integer() and np.max(np.nonzero(i))%2==0 and sqrt(i[np.min(np.nonzero(i))]).is_integer() and np.min(np.nonzero(i))%2==0: #if the first and last terms are of the form a^2*x^{2n}
                g2=0
                for j in range(np.max(np.nonzero(i))+1): #build the polynomial
                    g2=g2+signs[j]*i[j]*x^j
                if not g2.is_irreducible():
                    gsquare=True
                    for j in list(g2.factor()):
                        if j[1]%2!=0:
                            gsquare=False
                    if gsquare:
                        #print(str(marker))
                        yield g2,marker
        except ValueError:
            pass
