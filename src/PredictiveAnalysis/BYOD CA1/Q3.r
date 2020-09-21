library(missForest)
lungCapdata=read.csv(file.choose(),sep=',',header=T)

str(lungCapdata)
summary(lungCapdata)
nrow(lungCapdata[!complete.cases(lungCapdata),])

{
  count=0
  for(i in 1:ncol(lungCapdata))
  {
    if((class(lungCapdata[,i])=='numeric') || (class(lungCapdata[,i])=='integer'))
    {
      if((min(lungCapdata[,i], na.rm=TRUE)) == quantile(lungCapdata[,i], 0.25, na.rm=TRUE) || quantile(lungCapdata[,i], 0.25, na.rm=TRUE) == quantile(lungCapdata[,i], 0.5, na.rm=TRUE) || quantile(lungCapdata[,i], 0.5, na.rm=TRUE) == quantile(lungCapdata[,i], 0.75, na.rm=TRUE) || quantile(lungCapdata[,i], 0.75, na.rm=TRUE) == quantile(lungCapdata[,i], 1, na.rm=TRUE))
      {
        lungCapdata[,i]=factor(lungCapdata[,i])
        print(paste(names(lungCapdata[i]),": Converted to Factor"))
        count=count+1
      }else{
        lungCapdata[,i]=lungCapdata[,i]
      }
    }else if((class(lungCapdata[,i])=='factor')){
      print("already in factor")
    }else{
      print("Neither numeric nor integer")
    }
  }
  print(paste("No. of columns converted to Factor: ",count))
}


outliers=NULL
for (i in 1:ncol(lungCapdata))
{
  if(class(lungCapdata[,i])=='numeric'||class(lungCapdata[,i])=='integer')
  {
    if (length((boxplot(lungCapdata[,i])$out))==0)
    {
      print("no outliers found")
    }else {
      print("outliers found")
      outliers=boxplot(lungCapdata[,i], plot=FALSE)$out
      lungCapdata[which(lungCapdata[,i] %in% outliers),i]=NA #replacing/assigning NA
      outliers=NULL
    }
  }else{
    print ("neither numeric nor integer.")
  }
}
summary(lungCapdata)


# Removing NA's
if(nrow(lungCapdata[!complete.cases(lungCapdata),]) == 0)
{
  NewlungCapdata=lungCapdata
} else{
  missforestdata <- missForest(lungCapdata)
  NewlungCapdata=as.data.frame(missforestdata[[1]])
}

summary(NewlungCapdata)
View(NewlungCapdata)


Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
summary(NewlungCapdata)

NewData=as.data.frame(lapply(NewlungCapdata[c(1:3)],Normalize))
ncol(NewData)
summary(NewData)
NewData=cbind(NewlungCapdata[c(4:6)],NewData)
View(head(NewData))
summary(newData)