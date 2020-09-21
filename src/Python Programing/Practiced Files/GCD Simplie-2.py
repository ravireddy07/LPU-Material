def gcd(m,n):
    cf=[]
    for i in range (1,min(m,n)+1): #min(m,n)+1 means The gcd f m,n is shoud be less than either m or n
           if(m%i)==0 and (n%i)==0:# min(m,n) gives the minimum value Among them.
                cf.append(i)
    return(cf[-1])

gcd(63,-14)
