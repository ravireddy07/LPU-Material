def gcd(m,n):
    fm=[]
    for i in range(1,m+1):
        if (m%i)==0:
            fm.append(i)
    fn=[]
    for i in range(1,n+1):
        if (n%i)==0:
            fn.append(i)

    cf=[]
    for f in fm:
        if f in fn:
            cf.append(f)
    print(cf[-1])

gcd(63,14)
