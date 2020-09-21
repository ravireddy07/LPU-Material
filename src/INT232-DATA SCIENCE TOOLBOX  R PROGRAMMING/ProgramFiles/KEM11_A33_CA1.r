#yashima.18757@lpu.co.in

#1 Create a vector from 100-200and display all even numbers.
even_vec <- seq(100,200,2)
print(even_vec)


#2
r1= c("row_1","row_2","row_3","row_4","row_5")
c1= c("col_1","col_2","col_3","col_4","col_5","col_6")

list1 = matrix(c(1:30),nrow=5,byrow=FALSE,dimnames = list(r1,c1))
print(list1)

list2 <- list(bran="cse",value=51.2)
print(list2)
class(list2)

#2.a
list2[1]
list2[2]

#2.b
list2$bran
list2$value

#2.c
list2[3]<-TRUE
print(list2)

#2.d
print(list2)

#2.e
up_vec <- unlist(list2)

#3.a

rep(c("m","w","w"),5)

#3.b
rep(seq(1,4,1),3)

#3.c
rep(seq(10,7,-1),1)

#3.d
rep(c(10,9,8,7),c(1:4),10)

#3.e
x <- seq(2,10,by = 1)
y=0.1

rep((0.0+y) ^ x,10)
