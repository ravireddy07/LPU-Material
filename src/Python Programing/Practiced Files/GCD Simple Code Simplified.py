def gcd(m,n):
    cf=[]
    for i in range (1,min(m,n)+1): #min(m,n)+1 means The gcd f m,n is shoud be less than either m or n
                                   # min(m,n) gives the minimum value Among them.
        if(m%i)==0 and (n%i)==0:
             cf.append(i)
             return(2+3)
