#Operators

a<-c(2,5.5,6)
b=c(8,3,4)

#Reminder
print(a%%b)
rem1=7
rem2=2
print(rem1%%rem2)

#Quotient
print(a%/%b)
print(rem1%/%rem2)


print(a%*%b)
print(rem1%*%rem2)

#Example
aa=c(10,20,30)
bb<-c(5,15,25)
aa%*%bb  #1*10+2*20+3*30
bb%/%aa
aa%%bb

print(a>b)
print(a<b)
print(a==b)

a1<-c(-3,1,TRUE,2+3i) #0=FALSE, others=TRUE(including negative numbers)
a2<-c(4,1,FALSE,2+3i)

#AND
a1&a2
#OR
a1|a2
#NOT
!a2

a1&&a2
a1||a2

a3<-1
a4<-2
a5<- 1:10
a3 %in% a4
a5 %in% a3

mat<- matrix(1:4)
mat2<-matrix(4:1)
mat%*%t(mat2)


cc<-30   #Numeric
cc1<-30L #Integer
cc2="30"

if(is.integer(cc1)){
  print("It's an Integer...!")
} else {
  print("It's not an Integer...!!")
}

if(cc%%2==0){
  print("Even")
} else{
  print("odd")
}

an<- switch(
  cc2,
  "10"="Ten",
  "20"="Twenty",
  "30"="Thirty"
  )
print(an)


nam1<-readline(prompt="Enter Name: ")  #Bydefault character
if(nam1 =="Harry"){
  print("Welcome....Harry")
} else {
  print("you're not Harry")
}
class(nam1)
num<-as.integer(readline(prompt="Enter Only Number: "))  #Only Integer
class(num)
 