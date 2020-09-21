# CALLING LIBRARIES
library(naivebayes)
library(missForest)

# GETTING DATA
DATA=iris

# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])

# DATA CLEANING AND PREPARATION
str(DATA)
DATACLEANED=DATA
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



DATANORM=DATANONA
# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
DATANORM=as.data.frame(lapply(DATANONA[1:4],Normalize))
DATANORM=cbind(DATANONA[5],DATANORM)
summary(DATANORM)



# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind <- sample(2, nrow(DATANORM), replace = T, prob = c(0.7, 0.3))
TRAINING<- DATANORM[ind == 1,]
TESTING<- DATANORM[ind == 2,]


# CREATING DECISION TREE MODEL

MODEL=naive_bayes(Species~.,data=TRAINING)
plot(MODEL)
PREDICTIONPROB=predict(MODEL,TESTING,type="prob")
head(cbind(PREDICTIONPROB,TESTING))

# PREDICTION
PREDICTION=predict(MODEL,TESTING)

# CROSS VALIDATION
(VALIDATION=table(TEST=TESTING$Species,PREDICTED=PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)

