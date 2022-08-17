load('definitions.sage')
R.<x>=QQ['x']

lengths=[]
#checking how many primes it took to confirm S_n galois group and creates a histogram
for i in range(10000):
    lengths.append(galestimate(randompoly(7,20),count=True))
print('sample size=',len(lengths))
H=histogram(lengths,bins=max(lengths))
