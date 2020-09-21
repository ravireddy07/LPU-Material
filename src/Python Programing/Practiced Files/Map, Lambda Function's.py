def fun(x):
    return(x*x)

number=(1,2,3,4,5)

# Map() Function
result=map(fun,number);
print(result)
ans=set(result)
print(ans)

# Lambda Function


result1 = map(lambda x: x*x, numbers)

print(result1)
ans1=set(result1)

print(ans1)
# Lambda Function, Passing Multiple Iterator

num1 = [4, 5, 6]
num2 = [5, 6, 7]

result = map(lambda n1, n2: n1+n2, num1, num2)

print(list(result))
