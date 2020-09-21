# CALLING LIBRARIES
library(class)
library(missForest)


# GETTING DATA
DATA=read.csv(file.choose(),sep=',',header=T)


# DATA VIEWING
str(DATA)
summary(DATA)
ncol(DATA)
is.na(DATA)
nrow(DATA[!complete.cases(DATA),])

data = DATA
# DATA CLEANING AND PREPARATION

                            # CONVERTING COLUMNS TO FACTOR#

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
DATA=DATA[-3]
DATA$Survived=factor(DATA$Survived,labels=c('NO','YES'))
DATA$Sex=factor(DATA$Sex,labels=c(0,1),levels = c('female','male'))
DATACLEANED=DATA
table(DATACLEANED$Sex)
prop.table(table(DATACLEANED$Sex))*100

table(DATACLEANED$Survived)
prop.table(table(DATACLEANED$Survived))*100


# REMOVING NA
if (nrow(DATACLEANED[!complete.cases(DATACLEANED),])==0)
{
  DATANONA=DATACLEANED
}else{
  DATAMISSFOREST <- missForest(DATACLEANED)
  DATANONA=as.data.frame(DATAMISSFOREST[[1]])
}
summary(DATANONA)
View(DATANONA)


# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

DATANORM=as.data.frame(lapply(DATANONA[c(4,7)],Normalize))
ncol(DATANORM)
summary(DATANORM)
DATANORM=cbind(DATACLEANED[c(1:3,5:6)],DATANORM)
View(head(DATANORM))


#DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind <- sample(2, nrow(DATANORM), replace = T, prob = c(0.7, 0.3))
TRAINING= DATANORM[ind==1,]
TESTING=  DATANORM[ind==2,]

TRAINING_LABEL=TRAINING[,1]
TESTING_LABEL=TESTING[,1]

TRAINING=TRAINING[,-1]
TESTING=TESTING[,-1]

summary(TRAINING)
ncol(TESTING)
summary(TRAINING_LABEL)


#CREATING KNN MODEL
NEARESTNEIGHBOUR=round(sqrt(nrow(DATANORM)))
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
PREDICTION=knn(train=TRAINING,test=TESTING,cl=TRAINING_LABEL,k=MAXK)

# CROSS VALIDATION
(VALIDATION=table(TESTING_LABEL,PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)


# PREDICTION
NEW=data.frame()
NEW=TRAINING[150,]
NEW
NEW$Age=0.25
NEW$Pclass=3
NEW$Sex=0
CHECK=knn(train=TRAINING,test=NEW,cl=TRAINING_LABEL,k=MAXK)
CHECK
