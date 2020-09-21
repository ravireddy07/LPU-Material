
{
data=read.csv(file.choose(),sep=',',header=T)
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
}}




