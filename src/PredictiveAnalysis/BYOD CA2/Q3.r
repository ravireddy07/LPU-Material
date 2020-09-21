Q3_DATA = mtcars

str(Q3_DATA)
summary(Q3_DATA)
View(Q3_DATA)

Q3_DATA$am [Q3_DATA$am == '0'] <- "Automatic_Transmission"
Q3_DATA$am [Q3_DATA$am == '1'] <- "Manual_Transmission"

count=0
for(i in 1:ncol(Q3_DATA))
{
  if((class(Q3_DATA[,i])=='numeric')||(class(Q3_DATA[,i])=='integer'))
  {
    if((min(Q3_DATA[,i],na.rm=T))==quantile(Q3_DATA[,i],0.25,na.rm=T)||quantile(Q3_DATA[,i],0.25,na.rm=T)==quantile(Q3_DATA[,i],0.5,na.rm=T)||quantile(Q3_DATA[,i],0.5,na.rm=T)==quantile(Q3_DATA[,i],0.75,na.rm=T)||quantile(Q3_DATA[,i],0.75,na.rm=T)==quantile(Q3_DATA[,i],1,na.rm=T))
    {
      Q3_DATA[,i]=factor(Q3_DATA[,i])
      print(paste(names(Q3_DATA[i]),": CHANGED TO FACTOR"))
      count=count+1
    }else{
      Q3_DATA[,i]=Q3_DATA[,i]
      print(paste(names(Q3_DATA[i]),": IS REAL NUMBER"))
    }
  }else if((class(Q3_DATA[,i])=='factor')){
    print("ALREADY IN FACTOR")
  }else{
    print("NOT NUMERIC")
  }
}

outlierCount=NULL
for(i in 1:ncol(Q3_DATA)) {
  if(class(Q3_DATA[,i])=='numeric'||class(Q3_DATA[,i])=='integer') {
    if(length((boxplot(Q3_DATA[,i])$out))==0) {
      print('NO OUTLIERS')
    } else{
      print('OUTLIERS')
      outlierCount = boxplot(Q3_DATA[,i], plot=FALSE)$out
      Q3_DATA[which(Q3_DATA[,i] %in% outlierCount),i]=NA
      outlierCount=NULL
    }
  } else {
    print ("NOT NUMERIC")
  }
}
summary(Q3_DATA)


if(nrow(Q3_DATA[!complete.cases(Q3_DATA),])==0) {
  DataNoNa=Q3_DATA
} else{
  DataMISSFOREST <- missForest(Q3_DATA)
  DataNoNa=as.data.frame(DataMISSFOREST[[1]])
}
summary(DataNoNa)

Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

DataNorm = as.data.frame(lapply(DataNoNa,Normalize))
summary(DataNorm)
DataNorm = cbind(Q3_DATA[9], DataNorm)
Q3_DATA = DataNorm

set.seed(1234)
index <- sample(2, nrow(Q3_DATA), replace = T, prob = c(0.7, 0.3))
Train_Data<- Q3_DATA[index == 1,]
Test_Data<- Q3_DATA[index == 2,]



#Naive Baye's
Q3_naive = naive_bayes(am~., Train_Data)
plot(Q3_naive)

naivePrediction = predict(Q3_naive,Test_Data)
naivePrediction

NaiveValidation = table(Test_Data$am, naivePrediction)
NaiveValidation

NaiveAccuracy = sum(diag(NaiveValidation))/sum(NaiveValidation)*100
NaiveAccuracy



#Decision Model
Q3_decision = rpart(am~., Train_Data, method = 'class')
plot(Q3_decision)

decisionPrediction = predict(Q3_decision, Test_Data, type="class")

decisionValidation = table(Test_Data$am, decisionPrediction)
decisionValidation

DecisionAccuracy = sum(diag(decisionValidation))/sum(decisionValidation)*100
DecisionAccuracy
