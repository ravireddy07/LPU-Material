library(missForest)
library(class)
library(MASS)

titan = read.csv(file.choose(),header=T,sep=',')

str(titan)
summary(titan)
ncol(titan)
is.na(titan)
(DATA[!complete.cases(titan),])


OUTLIERS=NULL
for (i in 1:ncol(titan))
{
  if(class(titan[,i])=='numeric'||class(titan[,i])=='integer')
  {
    if (length((boxplot(titan[,i])$out))==0)
    {
      print ('NO OUTLIERS')
    }else {
      print ('OUTLIERS')
      OUTLIERS=boxplot(titan[,i], plot=FALSE)$out
      titan[which(titan[,i] %in% OUTLIERS),i]=NA
      OUTLIERS=NULL
    }
  }else{
    print ("NOT NUMERIC")
  }
}
summary(titan)



# HANDLING NA
if(nrow(titan[!complete.cases(titan),])==0)
{
  DATANONA=titan
}else{
  DATANONA=missForest(titan)
  DATANONA=as.data.frame(DATANONA[[1]])
}

summary(DATANONA)



# NORMALIZE DATASET
normalization=function(x){
  return ((x-min(x))/(max(x)-min(x)))
}
DATANORM=as.data.frame(lapply(DATANONA[1:4], normalization))
DATANORM=cbind(DATANORM,DATANONA[5])
summary(DATANORM)

titan=DATANONA


#DATA SUBSETTING AND PREPARATION
ind=sample(2,nrow(titan),replace=T,prob=c(0.7,0.3))

TRAINING=titan[ind==1,]
TESTING=titan[ind==2,]

TRAINING_LABEL=TRAINING[,5]
TESTING_LABEL=TESTING[,5]

TRAINING=TRAINING[,-5]
TESTING=TESTING[,-5]


# CREATING KNN MODEL
NEARESTNEIGHBOUR=round(sqrt(nrow(titan)))
print(NEARESTNEIGHBOUR)
df=NULL

for (i in 1:NEARESTNEIGHBOUR)
{
  set.seed(1234)
  PREDICTION=knn(train=TRAINING,test=TESTING,cl=TRAINING_LABEL,k=i)
  VALIDATION=table(TESTING_LABEL,PREDICTION)
  (ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)
  print(paste("When Nearest neighbour= ",i,"Then Accuracy = ",ACCURACY))
  df=rbind(df,data.frame(K=i,Acc=ACCURACY))
}


# SELECTING BEST VALUE OF K
MAXK=subset(df,Acc==max(Acc),select=K)
MAXK

if (length(MAXK$K)>1)
{
  for (i in 1:length(MAXK$K))
  {
    if(MAXK[i,] %% 2==1){
      K=MAXK[i,]
      break
    }else{
      K=MAXK[1,]
    }
  }
}else{
  K=MAXK
}
print(K)


# FIXED MODEL
set.seed(1234)
PREDICTION=knn(train=TRAINING,test=TESTING,cl=TRAINING_LABEL,k=K)


# CROSS VALIDATION
(VALIDATION=table(TESTING_LABEL,PREDICTION))


# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)



