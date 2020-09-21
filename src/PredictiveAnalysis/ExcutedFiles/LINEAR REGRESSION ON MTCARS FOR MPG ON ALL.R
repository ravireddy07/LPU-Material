# CALLING LIBRARIES
install.packages('missForest')
library(missForest)

# GETTING DATA
DATA=mtcars


# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])
cor(DATA)

# CONVERTING TO FACTORS

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
DATA$cyl=factor(DATA$cyl,ordered = T)
DATA$gear=factor(DATA$gear,ordered = T)
DATA$carb=factor(DATA$carb,ordered = T)

# DIMENSIONALITY REDUCTION

pairs.panels(DATA)
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

DATANORM=DATANONA
summary(DATANORM)

# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind=sample(2,nrow(DATANORM),replace=T,prob=c(0.7,0.3))
TRAINING=DATANORM[ind==1,]
TESTING=DATANORM[ind==2,]
str(TRAINING)
summary(TRAINING)
str(TESTING)
summary(TESTING)

# CREATING MULTIPLE LINEAR REGRESSION MODEL
MODEL1=lm(mpg~.,data=TRAINING[,c(1,3:7)])
summary(MODEL1)

# PLOTTING MODEL
p=plot(mtcars$disp,mtcars$mpg)
abline(MODEL1,col='red')

# CREATING MODEL FOR SIGNIFICANT COLUMN
#MODEL1=lm(mpg~wt,data=TRAINING[,c(1,3:7)])
MODEL1=lm(mpg~wt,data=TRAINING)
#or
#MODEL1=lm(mpg~.,data=TRAINING[1,5])
summary(MODEL1)

# PLOTTING MODEL
p=plot(mtcars$wt,mtcars$mpg)
abline(MODEL1,col='green')



# PREDICTION

PREDICTION=(predict(MODEL1,TESTING[c(4,6)]))
table(PREDICTION,TESTING[,1])  # CROSS VALIDATION

DIFFERENCE=abs(TESTING[,1]-PREDICTION)
ERROR_PERCENTAGE=DIFFERENCE/TESTING[,1]*100
ACCURACY_PERCENTAGE=100-ERROR_PERCENTAGE
(cbind(ACTUAL=TESTING[,1],PREDICTED=PREDICTION,ERROR=DIFFERENCE,ERROR_PERCENTAGE,ACCURACY_PERCENTAGE))
(FINAL_ACCURACY=mean(ACCURACY_PERCENTAGE))

