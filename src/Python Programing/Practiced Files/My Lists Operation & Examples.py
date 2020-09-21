mylist=['Ravi','Reddy','Gojur','is','Handsome']
mylist2=['muithan','karunakar','Charan','PK Reddy','PC Reddy','Pundru']

#Concatination
print(mylist+mylist2)
print(mylist2[1]+mylist[1]+mylist2[5])
print('\n')
#Repetation
print(mylist*2)
print('\n')

#Slicing
print(mylist[1:-1])
print(mylist2[-1:-6])
print(mylist2[2:9])
print(mylist[0:3])
print('\n')

#Indexing

print(mylist[--1])
print(mylist[-5])
print('\n')

#Type Specific Method

mylist.append('RKR')
print(mylist)

mylist.extend(['Mittu','Cherri'])
print(mylist)

mylist.insert(1,'Mittu') 
print(mylist)

mylist.pop()
print(mylist)

print('\n')
