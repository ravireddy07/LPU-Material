def fib(n):
    fibtable[0] =0
    fibtable[1] = 1
    for i in range (2,n+1):
        fibtable[i] = fibtable[i-1]+fibtable[i-2]
    return(fibtable[n])

fibtable={} #creating Empty Dict 

fib(7)#function Calling

print(fibtable.values()); #Showing the Values

