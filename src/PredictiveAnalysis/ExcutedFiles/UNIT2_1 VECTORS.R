#CREATING VECTORS AND ASSIGNING VALUES TO VECTORS#

Vector1=c('Hello',"Today","India")
Vector2=c('Hello',"Today",12,TRUE)
Vector1
Vector2
Vector3=c(5.2,82)
Vector4=(1:5)
Vector5=c("JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC")
Vector6=Vector5[Vector4]
Vector6

#NAMED VECTOR#
names(Vector3)=c("HEIGHT","WEIGHT")
names(Vector3)=("HEIGHT")
print(Vector3)


#COMBINING VECTOR#
(Vector7=c(Vector4,Vector6))

#CALCULATION ON VECTOR#
(Vector8=Vector3*3)
Vector8*Vector3
Vector8+Vector3
Vector8-Vector3
Vector8/Vector3

Vector9=c(100:300)
Vector4
Vector9+Vector4

Vector9

Vector4

#ACCESSING VALUES FROM VECTOR#

Vector1[]
Vector1[1:2]
Vector1[-1]
Vector1[5]
Vector1[c(1,3)]

Vector10=c(T,F,T,F)
Vector1[Vector10]
Vector5[Vector10]
Vector3['HEIGHT']

Vector5[c(-4,-5,-10)]
Vector10

#Changing Values in Vector#

Vector3[1]=6.2
Vector3[3]=6.8
Vector3

names(Vector3)=c('HEIGHT','WEIGHT','CHANGED HEIGHT')

names(Vector3)[4]=('ChangedHEIGHT1')
Vector3
(Vector4[4]=0)

Vector4


#Removing Values from Vector
Vector4[Vector4>=3]=NA
Vector4=NULL
Vector4
rm(Vector4)

Vector3[2]=NA
Vector3=Vector3[1]
Vector3=Vector3[-2]

#Function

length(Vector1)
class(Vector3)
typeof(Vector1)
levels(Vector1)
is.numeric(Vector1)
is.character(Vector1)
as.numeric(Vector1)
as.character(Vector3)

