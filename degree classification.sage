R.<x,y>=PolynomialRing(QQ)
S.<t>=QQ['t']

c1=x^4+y^4+1
c2=x^3*y+x*y+y^2+1
c3=y^4+y+1-x^3-2*x+3
c4=x^2*y-y^3+x*y
h3=[(i,j,c4.subs(x=t^i,y=t^j).degree()) for j in range(30) for i in range(30)]
n3=[i for i in h3 if i[0]+i[1]>= i[2]]; n3
show(points(h3))
show(points(n3))
