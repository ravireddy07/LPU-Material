fact={0:1,1:1}

def factorial(n):
    if n in fact.keys():
        return fact[n]
    else:
        newValue=n*factorial(n-1)
        fact[n]=newValue
        return newValue
print(factorial(5))
