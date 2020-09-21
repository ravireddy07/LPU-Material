mtdata = mtcars

str(mtdata)
summary(mtdata)
is.na(mtdata)
(mtdata[!complete.cases(mtdata),])
View(mtdata)

ncol(mtdata)
View(head(mtdata))
summary(mtdata)

CleanMtdata = mtdata

mtdata$am[mtdata$am == '0'] <- "Automatic"
mtdata$am[mtdata$am == '1'] <- "Manual"
View(mtdata)

temp = mtdata
mtdata = mtdata[-9]
OUTLIERS=NULL

for(i in 1:ncol(CleanMtdata)) {
  if(class(CleanMtdata[,i])=='numeric'||class(CleanMtdata[,i])=='integer') {
    if(length((boxplot(CleanMtdata[,i])$out))==0) {
      print('NO OUTLIERS')
    } else{
      print('OUTLIERS')
      OUTLIERS = boxplot(CleanMtdata[,i], plot=FALSE)$out
      CleanMtdata[which(CleanMtdata[,i] %in% OUTLIERS),i]=NA
      OUTLIERS=NULL
    }
  } else {
    print ("NOT NUMERIC")
  }
}

summary(CleanMtdata)

Outliermtdata=CleanMtdata  
 
if(nrow(CleanMtdata[!complete.cases(CleanMtdata),])==0) {
  DataNoNa=CleanMtdata
} else{
  DataMISSFOREST <- missForest(CleanMtdata)
  DataNoNa=as.data.frame(DataMISSFOREST[[1]])
}

summary(DataNoNa)

Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}

DataNorm = as.data.frame(lapply(DataNoNa,Normalize))

summary(DataNorm)

DataNorm = cbind(temp[9], DataNorm)

set.seed(1234)
Index <- sample(2, nrow(DataNorm), replace = T, prob = c(0.7, 0.3))
TRAINING<- DataNorm[Index == 1,]
TESTING<- DataNorm[Index == 2,]

#Naive Bayes
NaiveModel=naive_bayes(am~.,data=TRAINING)
plot(NaiveModel)

PREDICTIONPROB=predict(NaiveModel,TESTING,type="class")
PredictNaive = predict(NaiveModel,TESTING)


(VALIDATION = table(TEST=TESTING$am,PREDICTED=PredictNaive))


NaiveAcc = (ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)
NaiveAcc

#Decision Model
DeciModel = rpart(am~.,data = TRAINING, method = 'class')
plot(DeciModel)

rpart.plot(DeciModel)
rpart.plot(DeciModel,type=4, extra=101)

PredictDeci = predict(DeciModel,TESTING,type="class")


(VALIDATION = table(TEST=TESTING$am,PREDICTED=PredictDeci))


DeciAcc = (ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)
DeciAcc

plot(NaiveAcc, DeciAcc)
