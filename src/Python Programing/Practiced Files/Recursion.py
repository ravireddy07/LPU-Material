def pf(n,d):
    if (n==1):
        return
    else:
        while(n%d==0):
            print(d,end=" ,")
            n=n//d
        else:
            pf(n,d+1)
    return
pf(24,2)
