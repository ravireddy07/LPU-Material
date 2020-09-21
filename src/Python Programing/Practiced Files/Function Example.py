def fibo(n):
    a=0
    b=1
    for x in range(n):
        a=b
        b=a+b
        print(a,"\n")
   # return b
num=int(input("Enter the value of N="))
print(fibo(num))
