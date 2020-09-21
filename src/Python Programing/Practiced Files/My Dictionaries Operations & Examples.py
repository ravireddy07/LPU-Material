mydict={}
mydict1={1:'Ravi',2:'Reddy'}
mydict2={'Gojur':'Ravi','Pundra':'Mittu'}

print(mydict1)
print(mydict2)
print('\n')

#Methods

print(mydict1[2])
print(mydict2['Pundra'])
print('\n')

print(len(mydict1))
print(len(mydict2))
print('\n')

print(mydict1.keys())
print(mydict2.keys())
print('\n')

print(mydict1.values())
print(mydict2.values())
print('\n')

print(mydict1.items())
print(mydict2.items())
print('\n')

print(mydict1.get(2))
print(mydict2.get('Pundra'))
print('\n')

mydict1.update({3:'Gojur'})
print(mydict1)
mydict2.update({'Gojur':'Ravi Reddy'})
print(mydict2)
print('\n')

print(mydict1.pop(1))
print(mydict1)
print(mydict1.pop(2))
print(mydict1)
print(mydict2.pop('Pundra'))
print(mydict2)
print('\n')
