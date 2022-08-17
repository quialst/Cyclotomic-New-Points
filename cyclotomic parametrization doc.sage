import sympy

R.<x>=QQ['x']
S.<t,y>=QQ['t','y']


f=-x^10 + x^9 - 2*x^8 + 2*x^7 - 3*x^6 + 3*x^5 - 3*x^4 + 2*x^3 - 2*x^2 + x - 1
h2f=-x^12 - x^11 - x^10 - x^9 - x^8 - x^7 - x^5 - x^4 - x^3 - x^2 - x - 1
print('f:',h2f.quo_rem((x+1)^2))
theta=(x^3)^2-f*(x+1)^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(13))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^10 + t^9 - 2*t^8 + 2*t^7 - 3*t^6 + 3*t^5 - 3*t^4 + 2*t^3 - 2*t^2 + t - 1-y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^14 + x^13 - 2*x^12 + 2*x^11 - 3*x^10 + 3*x^9 - 4*x^8 + 4*x^7 - 4*x^6 + 3*x^5 - 3*x^4 + 2*x^3 - 2*x^2 + x - 1
h2f=-x^16 - x^15 - x^14 - x^13 - x^12 - x^11 - x^10 - x^9 - x^7 - x^6 - x^5 - x^4 - x^3 - x^2 - x - 1
print('f:',h2f.quo_rem((x+1)^2))
theta=(x^4)^2-f*(x+1)^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(17))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^14 + t^13 - 2*t^12 + 2*t^11 - 3*t^10 + 3*t^9 - 4*t^8 + 4*t^7 - 4*t^6 + 3*t^5 - 3*t^4 + 2*t^3 - 2*t^2 + t - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^10 + x^5 - 1
h2f=-x^20 - x^15 - x^5 - 1
print('f:',h2f.quo_rem(((x + 1)*(x^4 - x^3 + x^2 - x + 1))^2))
theta=(x^5)^2-f*((x + 1)*(x^4 - x^3 + x^2 - x + 1))^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(25))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^10 + t^5 - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^10 - x^9 - 2*x^8 - 2*x^7 - 3*x^6 - 3*x^5 - 3*x^4 - 2*x^3 - 2*x^2 - x - 1
h2f=-x^12 + x^11 - x^10 + x^9 - x^8 + x^7 + x^5 - x^4 + x^3 - x^2 + x - 1
print('f:',h2f.quo_rem((x - 1)^2))
theta=(x^3)^2-f*(x - 1)^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(26))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^10 - t^9 - 2*t^8 - 2*t^7 - 3*t^6 - 3*t^5 - 3*t^4 - 2*t^3 - 2*t^2 - t - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^14 - x^13 - 2*x^12 - 2*x^11 - 3*x^10 - 3*x^9 - 4*x^8 - 4*x^7 - 4*x^6 - 3*x^5 - 3*x^4 - 2*x^3 - 2*x^2 - x - 1
h2f=-x^16 + x^15 - x^14 + x^13 - x^12 + x^11 - x^10 + x^9 + x^7 - x^6 + x^5 - x^4 + x^3 - x^2 + x - 1
print('f:',h2f.quo_rem((x - 1)^2))
theta=(x^4)^2-f*(x - 1)^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(34))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^14 - t^13 - 2*t^12 - 2*t^11 - 3*t^10 - 3*t^9 - 4*t^8 - 4*t^7 - 4*t^6 - 3*t^5 - 3*t^4 - 2*t^3 - 2*t^2 - t - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^26 + x^25 - 2*x^24 + 2*x^23 - 3*x^22 + 3*x^21 - 4*x^20 + 4*x^19 - 5*x^18 + 5*x^17 - 6*x^16 + 6*x^15 - 7*x^14 + 7*x^13 - 7*x^12 + 6*x^11 - 6*x^10 + 5*x^9 - 5*x^8 + 4*x^7 - 4*x^6 + 3*x^5 - 3*x^4 + 2*x^3 - 2*x^2 + x - 1
h2f=-x^28 - x^27 - x^26 - x^25 - x^24 - x^23 - x^22 - x^21 - x^20 - x^19 - x^18 - x^17 - x^16 - x^15 - x^13 - x^12 - x^11 - x^10 - x^9 - x^8 - x^7 - x^6 - x^5 - x^4 - x^3 - x^2 - x - 1
print('f:',h2f.quo_rem((x + 1)^2))
theta=(x^7)^2-f*(x + 1)^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(29))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^26 + t^25 - 2*t^24 + 2*t^23 - 3*t^22 + 3*t^21 - 4*t^20 + 4*t^19 - 5*t^18 + 5*t^17 - 6*t^16 + 6*t^15 - 7*t^14 + 7*t^13 - 7*t^12 + 6*t^11 - 6*t^10 + 5*t^9 - 5*t^8 + 4*t^7 - 4*t^6 + 3*t^5 - 3*t^4 + 2*t^3 - 2*t^2 + t - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))

f=-x^20 + x^19 - 2*x^18 + 2*x^17 - 3*x^16 + 2*x^15 - 3*x^14 + x^13 - 2*x^12 - 2*x^10 - 2*x^8 + x^7 - 3*x^6 + 2*x^5 - 3*x^4 + 2*x^3 - 2*x^2 + x - 1
h2f=-x^24 + x^23 - x^19 + x^18 - x^17 + x^16 - x^14 + x^13 + x^11 - x^10 + x^8 - x^7 + x^6 - x^5 + x - 1
print('f:',h2f.quo_rem(((x-1)*(x+1))^2))
theta=(x^6)^2-f*((x-1)*(x+1))^2
print('theta:',theta)
print('Cyclotomic:',cyclotomic_polynomial(35))
print('discriminant:',f.discriminant())
print('discriminant prime factorization:',sympy.factorint(f.discriminant()))
G=-t^20 + t^19 - 2*t^18 + 2*t^17 - 3*t^16 + 2*t^15 - 3*t^14 + t^13 - 2*t^12 - 2*t^10 - 2*t^8 + t^7 - 3*t^6 + 2*t^5 - 3*t^4 + 2*t^3 - 2*t^2 + t - 1 -y^2
J=S.ideal(G.derivative(t)==0,G.derivative(y)==0,G==0)
print('ideal dimension:',J.dimension())
print('y derivative of f:',G.derivative(y))
print('f:',G)
print('t derivative of f:',G.derivative(t))
print('gcd of f(t,0) and t derivative:',G(t,0).gcd(G.derivative(t)))
