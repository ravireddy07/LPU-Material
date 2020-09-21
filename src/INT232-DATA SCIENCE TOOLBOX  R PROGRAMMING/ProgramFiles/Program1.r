#-5,-4,-3,-2,-1,0,1,2,3,4,5
a=c(-5:5)
a
#5,4,3,2,1,0,-1,-2,-3,-4,-5
print(c(5:-5))

#2,4,6,8,10
seq(from=2, to=10, by=2)
seq(2,10,2)

#10,12,14,16,18,20,22,24,26,28,30
s=seq(from=10, to=30, by=2)
print(s)
seq(10,30,2)

#1,2,3,4,5,6,7,8,9
seq(1,9,1)
seq(1,9)

#1,2,3,4,1,2,3,4,1,2,3,4
rep(1:4,3)

#"m","w""m","w""m","w""m","w""m","w"
rep(c("m","w"),5)


#1 22 333 4444 55555
rep(c(1:5),times=c(1:5))

for (two in c(1:5)){
  print(rep(two,two))
}

#1  1  3  3  5  5  7  7  9  9 11 11
rep(seq(1,11,2),each=2)

#444 333 222 111
kj =rep(c(4:1),each=3)

#display value of first and third of a vector
kj[0]
kj[1]
kj[3]


#31-01-19

print((2^7)/(2^7-1))
print((2**7)/(2**7-1))

print(1+0.2)

print(1+0.2+(0.2)^2/2)

print((1-(1/2^7))^-1)

print(12-(4/2^3))

print((12-4)/2^3)



#Matrix

#  --data
#  --nrow
#  --ncol
#  --byrow(TRUE,FALSE(default))
#  --dimnames

#create a matrix by having 4 rows and 
rowvar = c("row1","row2","")
colvar = c("col1","col2")
matrix(c(1:6),nrow=3, byrow=FALSE, dimnames = list(rowvar,colvar))


#Create a matrix of 3-14 and a arrange sequentially by column wise in 4 rows. Provide names r1,r2,r3,r4 & c1,c2...
rl = c("r1","r2","r3","r4")
cl = c("c1","c2","c3")
m1 = matrix(c(3:14), nrow=4, byrow=FALSE, dimnames = list(rl,cl))

#access the elements at 3rd column & first row.
m1[1,3]
#access only second row
m1[,2]

#create another matrix by having values from 10-22. arrange seq by row wise.
m2 = matrix(c(10:21), nrow=4, byrow=TRUE)

#display addition,sub,multi,div between this two matricies.
print(m1+m2)
print(m1-m2)
print(m1*m2)
print(m1%%m2)

#change the column name as ABC
dimnames(m1)<-list(rl,c("A","B","C","D"))
print(m1)

list_data <- list(c("Jan","Feb","Mar"), matrix(c(3,9,5,1,-2,8), nrow=3),list("green",12.3))
print(list_data)
class(list_data)

names(list_data) <- c("1st", "Matrix", "Inner List")
print(list_data)

list_data[4] <- "New Element"
print(list_data[4])
print(list_data)

list_data <- NULL
print(list_data[4])
print(list_data)

list_data[3] <- "Updated Element"
print(list_data[3])
print(list_data)


# 1/2/19

#create a matrix of seq from 1-9 & display class along with attributes and dimensions.
mmm = matrix(c(1:9),nrow=3)
print(mmm)
mmm1 = cbind(c(1,2,3),c(4,5,6),c(7,8,9))
print(mmm1)
mmm2 = rbind(c(1,2,3),c(4,5,6))
print(mmm2)

attributes(mmm)
dim(mmm)
class(mmm)
#take a vector of values from 6-11, And create a matrix from this vector without using matrix data structure.
vec <- matrix(c(6:11),nrow=2)
print(vec)
#Display row-1 and row-2 along with columns second & third.
along <- matrix(c(vec[1,2],vec[1,3],vec[2,2],vec[2,3]),nrow=2)
print(along)
#display first row & it's class should be matrix.Not Integer.
mname <- matrix((mmm[1,]))
print(class(mname))

aa<-"Hello"
bb<-"Ravi"
cc<-"Harry"
paste(aa,bb)
paste(aa,bb,cc)

dd<-c(bb,cc)
paste(aa,dd)
paste(aa,c("Ravi","Harry"))
paste(aa,bb, sep="-")

#create alist which consists of matrix having elements as all even numbers 1-20
listt <- matrix(seq(from=2, to=20, by=2))
print(listt)

n<-nchar(aa)
print(n)
toupper(aa)
tolower(aa)

substr(aa,2,4)
