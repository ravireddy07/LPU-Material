# CALLING LIBRARIES
install.packages("naivebayes")
install.packages("missForest")
install.packages("psych")
library(naivebayes)
library(missForest)
library(psych)

# GETTING DATA
DATA=read.csv(file.choose(),sep=",",header=TRUE)


# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])


# DATA CLEANING AND PREPARATION
str(DATA)
DATA$admit[DATA$admit == 0] <- 'No'
DATA$admit[DATA$admit == 1] <- 'Yes'
DATA$admit <- factor(DATA$admit)
DATA$rank<- factor(DATA$rank)
DATACLEANED=DATA
summary(DATACLEANED)


# REMOVING NA
if (nrow(DATACLEANED[!complete.cases(DATACLEANED),])==0)
{
  DATANONA=DATACLEANED
}else{
  DATAMISSFOREST <- missForest(DATACLEANED)
  DATANONA=as.data.frame(datamissforest[[1]])
}

summary(DATANONA)

# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
DATANORM=as.data.frame(lapply(DATANONA[2:3],Normalize))
DATANORM=cbind(DATANONA[,c(1,4)],DATANORM)
summary(DATANORM)

# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind <- sample(2, nrow(DATANORM), replace = T, prob = c(0.7, 0.3))
TRAINING<- DATANORM[ind == 1,]
TESTING<- DATANORM[ind == 2,]


# CREATING NAIVE BAYES MODEL

MODEL=naive_bayes(admit~.,data=TRAINING)
plot(MODEL)
PREDICTIONPROB=predict(MODEL,TESTING,type="prob")
head(cbind(PREDICTIONPROB,TESTING))

# PREDICTION
PREDICTION=predict(MODEL,TESTING)

# CROSS VALIDATION
(VALIDATION=table(TEST=TESTING$admit,PREDICTED=PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)

# FUTURE PREDICTION
NEW=data.frame(rank=4,gre=0.2,gpa=0.95)
NEW$rank=factor(NEW$rank,levels=1:4)
summary(NEW)
check=predict(MODEL,NEW)
check


pairs.panels(DATANORM[-1])


