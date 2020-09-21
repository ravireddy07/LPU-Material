from random import *

print(random()) #by default 0-1
print(random())

print(end="\n")

print(randint(1,100))
print(randint(1,100))
print(randint(1,100))
print(randint(1,100))

print(end="\n")

print(uniform(1,100))
print(uniform(1,100))
print(uniform(1,100))
print(uniform(1,100))

print(end="\n")

items=[1,2,3,4,5,6,7,8,9,10]

shuffle(items) #The items is updated.
print(items);

print(end="\n")
print(sample(items,1))#picks one random items from the list
print(sample(items,3))#picks three random items from the list
print(sample(items,1))
print(sample(items,2))
     
