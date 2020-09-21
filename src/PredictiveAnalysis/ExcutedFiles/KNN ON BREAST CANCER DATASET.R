# CALLING LIBRARIES
library(class)
library(missForest)

# GETTING DATA
DATA=read.csv(file.choose(),sep=',',header=T, stringsAsFactors = F)

# DATA VIEWING
str(DATA)
summary(DATA)
ncol(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])

# DATA CLEANING AND PREPARATION
DATA=DATA[-1]
ncol(DATA)
DATA=DATA[-32]
View(head(DATA))
summary(DATA)
DATA$diagnosis=factor(DATA$diagnosis,labels=c('MALIGNANT-CANCER','BENIGN-NOT-CANCER'))
DATACLEANED=DATA
table(DATACLEANED$diagnosis)
prop.table(table(DATACLEANED$diagnosis))*100

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
DATANORM=as.data.frame(lapply(DATANONA[2:31],Normalize))
ncol(DATANORM)
summary(DATANORM)
DATANORM=cbind(DATACLEANED[1],DATANORM)
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

ncol(TRAINING)
ncol(TESTING)

#CREATING KNN MODEL
NEARESTNEIGHBOUR=round(sqrt(nrow(DATANORM)))
print(NEARESTNEIGHBOUR)
df=NULL
for (i in 1:NEARESTNEIGHBOUR)
{
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
PREDICTION=knn(train=TRAINING,test=TESTING,cl=TRAINING_LABEL,k=MAXK)

# CROSS VALIDATION
(VALIDATION=table(TESTING_LABEL,PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)




# PREDICTION
NEW=data.frame()
NEW=TRAINING[5,]
CHECK=knn(train=TRAINING,test=NEW,cl=TRAINING_LABEL,k=MAXK)
CHECK

