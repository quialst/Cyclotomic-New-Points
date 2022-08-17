load('definitions.sage')
R.<x>=QQ['x']

check=[] #list in form (g^2,h^2,f)
n=43

theta=cyclotomic_polynomial(n)
try:
    for i in subsquare(theta):
        h2f=i[0]-theta
        if not all([(j[1]%2==1) for j in list(h2f.factor())]):
            h2=1
            for k in [j[0]^j[1] for j in list(h2f.factor()) if j[1]%2==0]:
                h2=h2*k
            print(str(True))
            print('theta=',theta)
            print('g2=',i[0])
            print('h2=',h2)
            print('f=',h2f.quo_rem(h2))
            print('h2f=',h2f)
        else:
            #pass
            print(str(False),i[0],list(h2f.factor()))
        r=r+1
        check.append((r,i[0]))
except KeyboardInterrupt:
    pass
    #show(points(check))
#show(points(check))
