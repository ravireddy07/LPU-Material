'''
#Fibbanocic-1
a=int(input("Enter 1st Number"));
b=int(input("Enter 2nd Number"));
n=int(input("Enter The Fibo Series"));

print(a,b);
for i in range(1,n):
     c=a+b;
     a=b;
     b=c;
     print(c,"");


#Fibbanocic-2

n=5;
a,b=1,1;
for i in range(1,n+3):
     a,b=b,a+b;
     print(a);

#palindrome

n=int(input("Enter a Number"));
temp=n;
rev=0;
while(n>0):
     k=n%10;
     rev=rev*10+k;
     n=n//10;
if(temp==rev):
     print("This is Palindrome");
else:
     print("This is  not a Palindrome");
     

#Armstrong Number

n=int(input("Enter a Number"));
sum1=0;

temp=n;

while(temp>0):
     n=temp%10;
     sum1=n**3;
     temp//=10;
if(n==sum1):
    print("This is Armstrong number");
else:
    print("This is Not Armstrong number");



#Even or Odd

a=int(input("Enter a Number"));
if(a%2):
    print("The Number is Even");
else
    print("The Number is Odd");

#Area of Triangle

a=float(input("Enter a Value"));
b=float(input("Enter b Value"));
c=float(input("Enter c Value"));

s=(a+b+c)/2;

 area=(s*(s-a)*(s-b)*(s-c))**0.5

print(area);

#Quadratic Equction

import cmath;

a=float(input("Enter a Value"));
b=float(input("Enter b Value"));
c=float(input("Enter c Value"));

d=(b**2)-(4*a*c);

sol1=(-b-cmath.sqrt(d))/(2*a);
sol2=(-b+cmath.sqrt(d))/(2*a);

print(sol1);
print(sol2);


#Swapping

x,y=2,3;
(x,y)=(y,x);
print(x,y);


#Entered Value is +ve or -ve


num=float(input("Enter a Value"));
if(num>=0):
  print("Entered value is Positive");
else:
  print("Entered value is Negitive");

  
#Leap Year

year=int(input("Enter a Year"));

if(year % 4)==0:
    if(year % 100)==0:
        if(year % 400)==0:
            print("Leap Year");
else:
    print("Not a Leap Year");




#Prime Number


num=int(input("Enter a Value"));

if num>1:
    for i in range (2,num):
        if (num%i)==0:
            print(num,"Is not a Prime Number");
        else:
            print(i,"times",num//i,"Is",num);
            break;
else:
    print(num,"Is not a Prime Number");


#Factioral of A Number

num=int(input("Enter a Value"));
fact=1;
while(num >0):
    fact*=num;
    num-=1;

print("Factioral of the given number is:",fact);



#Multiplication Table


num=int(input("Which table do you Want"));
for i in range(1,11):
    print(num,"*",1,"=",num*i);



#Decimal,octal,hex to Binary Conversion

dec=int(input("Enter a Value"));
print(bin(dec));
print(oct(dec));
print(hex(dec));

'''

