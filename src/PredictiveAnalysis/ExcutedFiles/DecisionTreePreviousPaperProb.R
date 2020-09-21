k=c(1:6)
Acc =c(20,20,30,30,30,25)

KnnAcc = data.frame(k,Acc)

MaxK = subset(KnnAcc, Acc == max(Acc), select=k)

print(MaxK)

if(length(MaxK)>0) {
  for(i in 1:length(MaxK$k)) {
    if((MaxK[i]%%2) == 1) {
      k = MaxK[i]
      break
    }
    else {
      k = MaxK[1]
    }
  }
} else {
  k = MaxK
}

install.packages('ggplot2')
library(ggplot2)

KnnAcc$k = factor(KnnAcc$k)

p = ggplot(KnnAcc, aes(k,Acc))

p+geom_bar(stat="identity", aes(fill=Acc))




#---------------------------------------------
#Divide the IRIS dataset into two parts as 80% and 20%
Data =iris
set.seed(1234)

div = sample(2,nrow(Data), replace = 1, prob = c(0.8,0.2))
train <- iris[div == 1,]
test <- iris[div == 2,]

#proof that rows present in testing are not in training

intersect(train,test)

#---------------------------------------------
library(MASS)
painters

install.packages('corrplot')