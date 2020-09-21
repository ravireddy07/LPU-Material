previous={0:0,1:1}
def fibo(n):
    if n in previous.keys():
        return previous[n]
    else:
        newValue=fibo(n-1)+fibo(n-2)
        previous[n]=newValue
        return newValue
print(fibo(5))
print(previous)
