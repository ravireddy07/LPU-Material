item=["a","b","c","d","e"]
weight=[10,15,20,50,40]
price=[100,500,200,150,1000]
ratio=[]
for i in range(len(item)):
    ratio.append((price[i])/(weight[i]))
print("1. minimum weight\n2. maximum value\n3. maximum ratio\n")
choice= int(input("enter your choice"))
capacity=80
c=capacity
w=0
totalsum=0
n=len(item)
for i in range(n):
    if choice==1:
        mweight=min(weight)
        pos=weight.index(mweight)
    elif choice==2:
        mprice=max(price)
        pos=price.index(mprice)
        mweight=weight[pos]
    else:
        mratio=max(ratio)
        pos=ratio.index(mratio)
        mweight=weight[pos]
    if mweight<=capacity:
        print(item[pos],"inserted into bag")
        totalsum=totalsum+price[pos]
        w=w+mweight
        capacity=capacity-mweight
    del item[pos]
    del weight[pos]
    del price[pos]
    del ratio[pos]
    if c==w:
        break
print("totAL price",totalsum)
print("total weight",w)
        
    
        
        

