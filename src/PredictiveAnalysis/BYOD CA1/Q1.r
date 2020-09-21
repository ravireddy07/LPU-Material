library(missForest)
handOutData=read.csv(file.choose(),sep=',',header=T)

str(handOutData)
summary(handOutData)
nrow(handOutData[!complete.cases(handOutData),])

{
  count=0
  for(i in 1:ncol(handOutData))
  {
    if((class(handOutData[,i])=='numeric') || (class(handOutData[,i])=='integer'))
    {
      if((min(handOutData[,i], na.rm=TRUE)) == quantile(handOutData[,i], 0.25, na.rm=TRUE) || quantile(handOutData[,i], 0.25, na.rm=TRUE) == quantile(handOutData[,i], 0.5, na.rm=TRUE) || quantile(handOutData[,i], 0.5, na.rm=TRUE) == quantile(handOutData[,i], 0.75, na.rm=TRUE) || quantile(handOutData[,i], 0.75, na.rm=TRUE) == quantile(handOutData[,i], 1, na.rm=TRUE))
      {
        handOutData[,i]=factor(handOutData[,i])
        print(paste(names(handOutData[i]),": Converted to Factor"))
        count=count+1
      }else{
        handOutData[,i]=handOutData[,i]
      }
    }else if((class(handOutData[,i])=='factor')){
      print("already in factor")
    }else{
      print("Neither numeric nor integer")
    }
  }
  print(paste("No. of columns converted to Factor: ",count))
}


outliers=NULL
for (i in 1:ncol(handOutData))
{
  if(class(handOutData[,i])=='numeric'||class(handOutData[,i])=='integer')
  {
    if (length((boxplot(handOutData[,i])$out))==0)
    {
      print("no outliers found")
    }else {
      print("outliers found")
      outliers=boxplot(handOutData[,i], plot=FALSE)$out
      handOutData[which(handOutData[,i] %in% outliers),i]=NA #replacing/assigning NA
      outliers=NULL
    }
  }else{
    print ("neither numeric nor integer.")
  }
}
summary(handOutData)


# Removing NA's
if(nrow(handOutData[!complete.cases(handOutData),]) == 0)
{
  NewhandOutData=handOutData
} else{
  missforestdata <- missForest(handOutData)
  NewhandOutData=as.data.frame(missforestdata[[1]])
}

summary(NewhandOutData)
View(NewhandOutData)