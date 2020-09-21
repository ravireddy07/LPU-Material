tit = read.csv(file.choose(),header=T,sep=',')
summary(tit)
View(tit)

data=tit
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
tit=data
summary(tit)

tit=tit[c(-1,-4,-9,-11,-12)]
tit$Survived=factor(tit$Survived,labels=c('no','yes'))
tit$Sex=factor(tit$Sex,labels=c(0,1),levels = c('female','male'))
table(tit$Sex)
prop.table(table(tit$Sex))*100

table(tit$Survived)
prop.table(table(tit$Survived))*100
summary(tit)





struct = read.csv(file.choose(),header=T,sep=',')
struct=struct[-1]
struct=struct[-32]
View(struct)
summary(struct)
struct$diagnosis=factor(struct$diagnosis,labels=c('MALIGNANT-CANCER','BENIGN-NOT-CANCER'))
table(struct$diagnosis)
prop.table(table(struct$diagnosis))*100

temp = women
summary(temp)

ind=sample(2,nrow(temp),replace=T,prob=c(0.7,0.3))

TRAINING=temp[ind==1,]
TESTING=temp[ind==2,]

Model = lm(weight~height, TRAINING)
plot(temp$height,temp$weight)
abline(Model,col='blue')

PredResult = predict(Model, TESTING)
diff = abs(TESTING[,2] - PredResult)
error = diff/TESTING[,2]*100
Accuracy = 100 - error
cbind(Actual_Data=TESTING[,2], Predicted_Result=PredResult, Error=diff, error, Accuracy)
Accuracy = mean(Accuracy)
Accuracy


new_entry = data.frame(height=84)
predicited_Value = predict(Model, new_entry)
predicited_Value
