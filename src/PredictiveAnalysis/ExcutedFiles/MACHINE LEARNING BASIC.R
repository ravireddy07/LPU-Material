iris
nrow(iris)
ncol(iris)
str(iris)
class(iris$Species)
range(iris$Sepal.Length)
summary(iris)

# NORMALIZING THE DATASET

Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
Normiris=as.data.frame(lapply(iris[1:4],Normalize))
Normiris=cbind(Normiris,Species=iris$Species)

summary(Normiris)

# Make Samples (Train and Test) from dataset

str(Normiris)
class(Normiris$Species)
nlevels(Normiris$Species)
levels(Normiris$Species)

nrow(subset(Normiris,Normiris$Species=="setosa"))
nrow(subset(Normiris,Normiris$Species=="versicolor"))
nrow(subset(Normiris,Normiris$Species=="virginica"))

table(Normiris$Species)

# Divide iris dataset in 2 Samples of 75 rows each and name them as iris1 and iris2

iris1=Normiris[1:75,]
iris2=Normiris[76:150,]

# Check the number of Species in each Sample 

nlevels(iris1$Species)
levels(iris1$Species)
table(iris1$Species)
iris1[,5]
nlevels(iris2$Species)
levels(iris2$Species)
table(iris2$Species)
iris2[,5]


# Divide the iris dataset in 2 Samples with random values and name them as Train and Test

ind=sample(2,nrow(Normiris),replace=T,prob=c(0.8,0.2))
ind
Train=Normiris[ind==1,]
Test=Normiris[ind==2,]

table(Train$Species)
table(Test$Species)



# Divide the iris dataset in 2 Samples with random values but random func should be same and name them as Train and Test
set.seed(1234)
ind=sample(2,nrow(Normiris),replace=T,prob=c(0.8,0.2))
ind
Train=Normiris[ind==1,]
Test=Normiris[ind==2,]

table(Train$Species)
table(Test$Species)


# Finding Validation and Accuracy

Checktest=data.frame(learn=c("CLASS1","CLASS2","CLASS1","CLASS1","CLASS2"))
as.factor(Checktest$learn)
levels(Checktest$learn)


Checkmodel=data.frame(learn=c("CLASS2","CLASS2","CLASS1","CLASS1","CLASS2"))
as.factor(Checkmodel$learn)
levels(Checkmodel$learn)

tab=table(TEST=Checktest$learn,MODEL=Checkmodel$learn)
tab
Accuracy=sum(diag(tab))/sum(tab)
Accuracypercent=Accuracy*100
Misclassification= 1-Accuracy
Mispercent=Misclassification*100

