library(missForest)

summary(iris)
D1= prodNA(iris, noNA = 0.1)
summary(D1)



for (i in 1:length(D1)) 
{
  if(nrow(D1[!complete.cases(D1[,i]),])>0)
  {
  if(class(D1[,i])=='integer'|class(D1[,i])=='numeric') 
    {
    
    NNA=round(mean(D1[,i], na.rm = TRUE))
    D1[is.na(D1[,i]),i]=NNA
    print(paste(names(D1[i]),"have NA Values and is imputed by Mean value:",NNA))
    
    }else if(class(D1[,i])=='factor') 
    {
      
    FNA=subset(data.frame(table(D1[i])),Freq==max(Freq))
    D1[is.na(D1[,i]),i]=FNA[,1]
    print(paste(names(D1[i]),"have NA Values and is imputed by Max Frequent value:",FNA[,1]))
      
    }else
    {
      
    print("USE OMIT OR REDUCE VALUE FROM DATASET")
    
    }
  }else{
    print(paste(names(D1[i]),"doesnot have NA values"))
  }
}

summary(D1)
nrow(D1)
D1stats=D1
