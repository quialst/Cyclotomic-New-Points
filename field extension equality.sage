num=6
K.<a>=CyclotomicField(num)
j=K.absolute_degree()
zeta7 = QQbar(exp(2*pi*i/num))
a = zeta7^2-zeta7
p=a.minpoly(); p
R.<g>=NumberField(p)
l=R.absolute_degree()
print(str(j),str(l))
