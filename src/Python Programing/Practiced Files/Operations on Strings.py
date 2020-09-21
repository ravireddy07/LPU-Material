'''string1='Ravi'
string2="Reddy77"
string3=string1+string2
string4="R,a,v,i"
print(string3)
print('\n')
                          #Concatination
print(string1+string2)
print('\n')
                          #Repetation
print(string3*3)
print(string1*3)
print('\n')
                          #Slicing
print(string1[2:3])
print(string2[2:4])
print(string3[4:7])
print(string3[:7])
print(string3[3:9:2])
print(string3[5])
print('\n')
                          #Indexing
print(string3[-6])
print(string3[1:-4])
print(string3[-5:-1])
print('\n')

                   #Type Specific Methods

str1='Ravi'
str2="Reddi"
str3="""Karunakar
        Reddy """
print(str1.find('a'))
print(str2.replace('i','y'))
print(str3.replace(' ','-'))
print(string4.split(','))
print(string3.count('d',1,8))
print('\n')
print(string3.upper())
print(max(string3))
print(min(string1))                  #  ''' **************************** '''
print(string2.isalpha())
print(string1.isalpha())

'''

str1="aaaaaabbbbbccccaaaaddddddeeee"
str2=""
for char in str1:
    if char not in str2:
        str2=str2+char
        k=str1.count(char)
        print(char,"Counting is :",k)
    else:
        pass
