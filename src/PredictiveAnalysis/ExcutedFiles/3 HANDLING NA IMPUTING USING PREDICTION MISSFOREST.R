library(missForest)
summary(iris)
nrow(iris)

D1 <- prodNA(iris, noNA = 0.1)
summary(D1)
nrow(D1)

# HANDLING NA USING PREDICTION

if(nrow(D1[!complete.cases(D1),])==0)
{
  D1=D1
}else{
  temp=missForest(D1)
  D1=as.data.frame(temp[[1]])
}


summary(D1)
D1prediction=D1

summary(iris)
summary(D1omit)
summary(D1stats)
summary(D1prediction)

