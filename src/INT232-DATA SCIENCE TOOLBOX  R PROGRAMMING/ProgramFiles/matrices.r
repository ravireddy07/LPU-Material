matrix(1,nrow=5,ncol=5); A<- matrix(1:9,nrow=3,ncol=3,byrow=TRUE); A

matrix(1,nrow=5,ncol=5)
A<- matrix(1:9,nrow=3,ncol=3,byrow=TRUE)
A


B<-matrix(0,3,4)
data.entry(B)

diag(2)
diag(4)
diag(3,4)

data() 

a = c(11616140,11616136,11609105)
b = c("Harry","Vinay","Das")
c = c(TRUE,FALSE,TRUE)

tab1 = data.frame(a,b,c)
tab1

mtcars
head(mtcars)
tail(mtcars)

nrow(mtcars)
ncol(mtcars)

mtcars[1,2]
mtcars["Mazda RX4", "cyl"]

mtcars[[9]]
mtcars[["am"]]
mtcars[9]
mtcars["am"]
mtcars$am
mtcars[,"am"]
mtcars[1,]
mtcars["Camaro z28",]
mtcars[c(3,24),]
mtcars[c("Datsun 710", "Camaro z28"),]
ls()

?mtcars
?Titanic
str(mtcars)




#take inbuilt as "esoph" and dsiaplay the structure along with rows and cols by using seperate function for each
esoph
nrow(esoph)
ncol(esoph)
str(esoph)

#display first three observations using head function & last 2 observatio using tail function
head(esoph[1:3,])
tail(esoph[])

#Retrive the third column without its column name
esoph[[3]]

#retrive all the even rows
esoph[seq(2,nrow(esoph),2),]

#retrive second last and fifth row by using numberical index vector
tail(esoph)

#retrive 10th-12th value of second column
esoph[c(10:12),2]


#3D Matrix
w<- array(c(1:18),dim=c(3,3,2))
w
w[1,1,1]
w[1,1,2]

