# CALLING LIBRARIES
library(rpart)
library(missForest)

# GETTING DATA
DATA=read.csv(file.choose(),header=T,sep=',')


# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])


# DATA CLEANING AND PREPARATION

data=DATA
{
  count=0
  for(i in 1:ncol(data))
  {
    if((class(data[,i])=='numeric')||(class(data[,i])=='integer'))
    {
      if((min(data[,i],na.rm=T))==quantile(data[,i],0.25,na.rm=T)||quantile(data[,i],0.25,na.rm=T)==quantile(data[,i],0.5,na.rm=T)||quantile(data[,i],0.5,na.rm=T)==quantile(data[,i],0.75,na.rm=T)||quantile(data[,i],0.75,na.rm=T)==quantile(data[,i],1,na.rm=T))
      {
        data[,i]=factor(data[,i])
        print(paste(names(data[i]),": CHANGED TO FACTOR"))
        count=count+1
      }else{
        data[,i]=data[,i]
        print(paste(names(data[i]),": IS REAL NUMBER"))
      }
    }else if((class(data[,i])=='factor')){
      print("ALREADY IN FACTOR")
    }else{
      print("NOT NUMERIC")
    }
  }
  print(paste("**** NO. OF ATTRIBUTES ARE COVERTED TO FACTOR:",count ,"****"))
}
DATA=data
summary(DATA)

# DIMENSIONALITY REDUCTION
DATA=DATA[c(-1,-4,-9,-11,-12)]
DATA$Survived=factor(DATA$Survived,labels=c('NO','YES'))
DATA$Sex=factor(DATA$Sex,labels=c(0,1),levels = c('female','male'))
DATACLEANED=DATA
table(DATACLEANED$Sex)
prop.table(table(DATACLEANED$Sex))*100

table(DATACLEANED$Survived)
prop.table(table(DATACLEANED$Survived))*100
summary(DATACLEANED)


# IMPUTING OUTLIERS AND FEEDING NAs TO THEM
OUTLIERS=NULL
for (i in 1:ncol(DATACLEANED))
{
  if(class(DATACLEANED[,i])=='numeric'||class(DATACLEANED[,i])=='integer')
  {
    if (length((boxplot(DATACLEANED[,i])$out))==0)
    {
      print ('NO OUTLIERS')
    }else {
      print ('OUTLIERS')
      OUTLIERS=boxplot(DATACLEANED[,i], plot=FALSE)$out
      DATACLEANED[which(DATACLEANED[,i] %in% OUTLIERS),i]=NA
      OUTLIERS=NULL
    }
  }else{
    print ("NOT NUMERIC")
  }
}
summary(DATACLEANED)
DATANOOUTLIER=DATACLEANED


# REMOVING NA
if (nrow(DATACLEANED[!complete.cases(DATACLEANED),])==0)
{
  DATANONA=DATACLEANED
}else{
  DATAMISSFOREST <- missForest(DATACLEANED)
  DATANONA=as.data.frame(DATAMISSFOREST[[1]])
}
summary(DATANONA)


# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
DATANORM=as.data.frame(lapply(DATANONA[c(4,7)],Normalize))
DATANORM=cbind(DATANONA[c(1:3,5:6)],DATANORM)
summary(DATANORM)



# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind <- sample(2, nrow(DATANORM), replace = T, prob = c(0.7, 0.3))
TRAINING<- DATANORM[ind == 1,]
TESTING<- DATANORM[ind == 2,]


TRAINING_LABEL=TRAINING[,1]
TESTING_LABEL=TESTING[,1]

TRAINING_KNN=TRAINING[-1]
TESTING_KNN=TESTING[-1]


# CREATING DECISION TREE MODEL
MODEL=rpart(Survived~.,data=TRAINING,method = "class")
plot(MODEL)
text(MODEL)
rpart.plot(MODEL)
rpart.plot(MODEL,type=4, extra=101)
PREDICTIONPROB=predict(MODEL,TESTING,type="class")
head(cbind(PREDICTIONPROB,TESTING))
tail(cbind(PREDICTIONPROB,TESTING))


# PREDICTION
PREDICTION=predict(MODEL,TESTING,type="class")

# CROSS VALIDATION
(VALIDATION=table(TEST=TESTING$Survived,PREDICTED=PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY_DTREE=sum(diag(VALIDATION))/sum(VALIDATION)*100)




# COMPARISON

# MERGING ACCURACY OF ALGORITHMS 
MERGE_ACCURACY=data.frame(KNN=ACCURACY_KNN,NAIVEBAYES=ACCURACY_NAIVE,DECISIONTREE=ACCURACY_DTREE)
row.names(MERGE_ACCURACY)='TITANIC'


print(MERGE_ACCURACY)
MERGE_ACCURACY=as.matrix.data.frame(MERGE_ACCURACY)
barplot(MERGE_ACCURACY,xlab = 'ALGORITHMS',ylab = 'ACCURACY',ylim=c(0,100),main='ACCURACIES OF ALGOS ON STUDENT ENTRANCE')

