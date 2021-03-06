

# CALLING LIBRARIES
library(missForest)

# GETTING DATA
{
  YEAR=1959:1970
  POPULATION=c(4835,4970,5085,5160,5310,5260,5235,5255,5235,5210,5175,5163.15)
  DATA=data.frame(YEAR,POPULATION)
  DATA$YEARRANGE=DATA$YEAR-1964
}


# DATA VIEWING
str(DATA)
summary(DATA)
is.na(DATA)
(DATA[!complete.cases(DATA),])
cor(DATA)


# CONVERTING TO FACTORS
{
  data=DATA
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
  DATA=data
}


# DIMENSIONALITY REDUCTION
{
  summary(DATA)
  DATACLEANED=DATA
}


# IMPUTING OUTLIERS AND FEEDING NAs TO THEM
{
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
}


# REMOVING NA
{
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
}


# NORMALIZE DATASET
{
  DATANORM=DATANONA
  summary(DATANORM)
}


# DATA SUBSETTING AND PREPARATION
set.seed(1235)
ind=sample(2,nrow(DATANORM),replace=T,prob=c(0.6,0.4))
TRAINING=DATANORM[ind==1,]
TESTING=DATANORM[ind==2,]
str(TRAINING)
summary(TRAINING)
str(TESTING)
summary(TESTING)

# MAKING PLANE FOR PLOTTING
par(mfrow=c(1,3))




# CREATING MULTIPLE LINEAR REGRESSION MODEL
{
  MODEL=lm(POPULATION~.,data=TRAINING)
  summary(MODEL)
  plot(DATA$YEAR,DATA$POPULATION,main='MODEL FOR POPULATION',type="b")
  points(TRAINING$YEAR,predict(MODEL),type="l",col="red",lwd=2)
}


# PLOTTING MODEL ON BEHALF OF SIGNIFICANT COLUMN YEAR 
{
  MODEL1=lm(POPULATION~YEAR,data=TRAINING)
  plot(DATA$YEAR,DATA$POPULATION,main='MODEL FOR SIGNIFICANT COLUMN',type="b")
  points(TRAINING$YEAR,predict(MODEL1),type="l",col="red",lwd=2)
}

# PLOTTING MODEL USING POLYNOMIAL REGRESSION DEGREE 2
{
  MODEL2=lm(POPULATION~YEAR+I(YEAR^2),data=TRAINING)
  plot(DATA$YEAR,DATA$POPULATION,main='MODEL FOR SIGNIFICANT COLUMN',type="b")
  points(TRAINING$YEAR,predict(MODEL1),type="l",col="red",lwd=2)
  points(TRAINING$YEAR,predict(MODEL2),type="l",col="green",lwd=2)
}

# PLOTTING MODEL USING POLYNOMIAL REGRESSION DEGREE 23
{
  MODEL3=lm(POPULATION~YEAR+I(YEAR^2)+I(YEAR^3),data=TRAINING)
  points(TRAINING$YEAR,predict(MODEL3),type="l",col="blue",lwd=2)
}


# PREDICTION AND ACCURACY ON BEHALF OF ALL COLUMNS
{
  PREDICTION=(predict(MODEL,TESTING))
  DIFFERENCE=abs(TESTING[,2]-PREDICTION)
  ERROR_PERCENTAGE=DIFFERENCE/TESTING[,2]*100
  ACCURACY_PERCENTAGE=100-ERROR_PERCENTAGE
  (cbind(ACTUAL=TESTING[,2],PREDICTED=PREDICTION,ERROR=DIFFERENCE,ERROR_PERCENTAGE,ACCURACY_PERCENTAGE))
  (FINAL_ACCURACY=mean(ACCURACY_PERCENTAGE))
}


# PREDICTION AND ACCURACY ON BEHALF OF SIGNIFICANT COLUMN (YEAR)
{
  PREDICTION1=(predict(MODEL1,TESTING))
  DIFFERENCE1=abs(TESTING[,2]-PREDICTION1)
  ERROR_PERCENTAGE1=DIFFERENCE1/TESTING[,2]*100
  ACCURACY_PERCENTAGE1=100-ERROR_PERCENTAGE1
  (cbind(ACTUAL=TESTING[,2],PREDICTED=PREDICTION1,ERROR=DIFFERENCE1,ERROR_PERCENTAGE1,ACCURACY_PERCENTAGE1))
  (FINAL_ACCURACY1=mean(ACCURACY_PERCENTAGE1))
}


# PREDICTION AND ACCURACY ON BEHALF OF POLYNOMIAL REGRESSION DEGREE2
{
  PREDICTION2=(predict(MODEL2,TESTING))
  DIFFERENCE2=abs(TESTING[,2]-PREDICTION2)
  ERROR_PERCENTAGE2=DIFFERENCE2/TESTING[,2]*100
  ACCURACY_PERCENTAGE2=100-ERROR_PERCENTAGE2
  (cbind(ACTUAL=TESTING[,2],PREDICTED=PREDICTION2,ERROR=DIFFERENCE2,ERROR_PERCENTAGE2,ACCURACY_PERCENTAGE2))
  (FINAL_ACCURACY2=mean(ACCURACY_PERCENTAGE2))
}

# PREDICTION AND ACCURACY ON BEHALF OF POLYNOMIAL REGRESSION DEGREE3
{
  PREDICTION3=(predict(MODEL3,TESTING))
  DIFFERENCE3=abs(TESTING[,2]-PREDICTION2)
  ERROR_PERCENTAGE3=DIFFERENCE3/TESTING[,2]*100
  ACCURACY_PERCENTAGE3=100-ERROR_PERCENTAGE2
  (cbind(ACTUAL=TESTING[,2],PREDICTED=PREDICTION3,ERROR=DIFFERENCE3,ERROR_PERCENTAGE3,ACCURACY_PERCENTAGE3))
  (FINAL_ACCURACY3=mean(ACCURACY_PERCENTAGE3))
}


ACCURACIES=c(FINAL_ACCURACY,FINAL_ACCURACY1,FINAL_ACCURACY2,FINAL_ACCURACY3)
NAMES_MODEL=c('MODEL','MODEL1','MODEL2','MODEL3')
COLUMNS_MODEL=c('ALL ATTRIBUTES','YEAR','POLY DEGREE 2','POLY DEGREE 3')
(ACCURACIES_COLUMNS=data.frame(NAMES_MODEL,COLUMNS_MODEL,ACCURACIES=round(ACCURACIES)))


# PREDICTING THE VALUE
{
  CHECK=data.frame(YEAR=1970)
  (PREDICTED_VALUE=predict(MODEL2,CHECK))
}

paste("If YEAR:",CHECK$YEAR, "then we have",round(FINAL_ACCURACY2),"% chances of getting PREDICTED POPULATION as:",round(PREDICTED_VALUE))

