#1)
color_vec <- c("Red","Green","Blue")
find <- "Black"

if(find %in% color_vec){
  print("True")
}else{
  print("False")
}



#2)
range_num <-c(11:21)
even_num <-c()


for(i in range_num){
  if(i%%2 == 0){
    even_num <- append(even_num,i)
  }
}
print(even_num)

len = length(even_num)
print(len)

count =1
factorial = 1


for(count in even_num) {
  if(even_num[count]<0){
    print("Factorial doesn't Exists")
    } else if(even_num[count] == 0) {
      print("The factorial of 0 is 1")
      } else {
        for(i in 1:even_num[count]) {
          factorial = factorial * i
        }
        print(paste("The factorial of", even_num[count] ,"is",factorial))
        count = count +1
      }
}

nn=12
  if(nn<0){
    print("Factorial doesn't Exists")
  } else if(nn == 0) {
    print("The factorial of 0 is 1")
  } else {
    for(i in 1:nn) {
      factorial = factorial * i
    }
    print(paste("The factorial of", nn ,"is",factorial))
  }


repeat {
  n = even_num[count]
  if(n<0){
    print("Factorial doesn't Exists")
  } else if(n == 0) {
    print("The factorial of 0 is 1")
  } else {
    for(i in 1:n) {
      factorial = factorial * i
    }
    print(paste("The factorial of", n ,"is",factorial))
    if(count == len){
      break
    } else{
      count = count +1
    }
    
  }
}





#3)
tri_diag <- 1
off_diag <- 4

Mat_rix <- bandSparse(off_diag,off_diag, 
                (-1):1, 
                list(rep(tri_diag, off_diag-1), 
                     rep(1+tri_diag^2, off_diag), 
                     rep(tri_diag, off_diag-1)))

as.matrix(Mat_rix)
#4)

#4)a)

nrow(subset(s,s$PClass=="1st"))
nrow(subset(s,s$PClass=="2nd"))
nrow(subset(s,s$PClass=="3rd"))

#4)c)

subset(f,f$Age<30)

#4)d
e=subset(s,s$Sex=="female")
is.data.frame(e)
f=subset(s,s$Sex=="male")
is.data.frame(f)

#4)e
se=subset(s,s$PClass=="1st")
subset(se,se$Age>=60)

  