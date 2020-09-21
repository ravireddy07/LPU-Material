# CALLING LIBRARIES


# GETTING DATA
DATA=trees


# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])


# DATA CLEANING AND PREPARATION
{
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
}
summary(DATA)

# DIMENSIONALITY REDUCTION

DATACLEANED=DATA

# IMPUTING OUTLIERS AND FEEDING NAs TO THEM
{
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
}
summary(DATACLEANED)
DATANOOUTLIER=DATACLEANED

# REMOVING NA
{
if (nrow(DATACLEANED[!complete.cases(DATACLEANED),])==0)
{
  DATANONA=DATACLEANED
}else{
  DATAMISSFOREST <- missForest(DATACLEANED)
  DATANONA=as.data.frame(DATAMISSFOREST[[1]])
}
}
summary(DATANONA)


# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
DATANORM=as.data.frame(lapply(DATANONA[1:3],Normalize))
summary(DATANORM)
DATANORM
summary(DATANORM)
DATANONA=DATANORM


# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind=sample(2,nrow(trees),replace=T,prob=c(0.6,0.4))
TRAINING=trees[ind==1,]
TESTING=trees[ind==2,]

# CREATING LINEAR REGRESSION MODEL
MODEL=lm(Volume~Girth,data=TRAINING)
summary(MODEL)

# PLOTTING MODEL
p=plot(trees$Girth,trees$Volume)
abline(MODEL,col='red')

# PREDICTION
summary(trees)
PREDICTION=round(predict(MODEL,TESTING))
DIFFERENCE=TESTING[,3]-PREDICTION
ERROR_PERCENTAGE=DIFFERENCE/TESTING[,3]*100
ACCURACY_PERCENTAGE=100-ERROR_PERCENTAGE
(cbind(ACTUAL=TESTING[,3],PREDICTED=PREDICTION,ERROR=DIFFERENCE,ERROR_PERCENTAGE,ACCURACY_PERCENTAGE))

mean(ACCURACY_PERCENTAGE)
# CROSS VALIDATION
table(PREDICTION,TESTING[,2])
# CHECKING ACCURACY PERCENTAGE
(ACCURACY=PREDICTION/TESTING[3]*100) 
mean(ACCURACY[,1])
(mean(TESTING[,3])-mean(PREDICTION))/mean(TESTING[,3])*100
