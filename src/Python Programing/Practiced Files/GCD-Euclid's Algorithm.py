def gcd(m,n):
    if m<n: #assume M>N
        (m,n)=(n,m)
        print("m=",m,"n=",n)
    if (m%n)==0:
        
        
        print(n)
    else:
        diff=m-n
        print(gcd(max(n,diff),min(n,diff))) #recursion
gcd(8,-12)
