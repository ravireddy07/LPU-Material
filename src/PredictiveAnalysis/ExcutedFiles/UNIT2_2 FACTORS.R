# CREATING FACTOR FOR UNIQUE ELEMENTS
F1=factor(c(1,2,3,5:9))
print(F1)
# SIGNIFICANCE OF FACTOR DOESNOT REQUIRED FOR UNIQUE ELEMENTS
levels(F1)

# CREATING FACTOR FOR REPEATED ELEMENTS
F2=factor(c(1,1,1,2,3))
print(F2)
# SIGNIFICANCE OF FACTOR DOESNOT REQUIRED FOR UNIQUE ELEMENTS
levels(F2)

# CREATING FACTOR FOR CHARACTER ELEMENTS
F3=factor(c('M','F','F','F','M'))
print(F3)

# CREATING FACTOR FOR BOOLEAN ELEMENTS
F4=factor(c(T,F,F,F,F,T,T))
print(F4)

# USAGE OF LEVELS AND LABELS IN FACTOR
F5=factor(c('M','F','F','F','M'),levels=c('MALE','FEMALE'))
print(F5)

F6=factor(c('M','F','F','F','M'),labels=c('MALE','FEMALE'))
print(F6)

F7=factor(c('M','F','F','F','M'),levels = c('M','F'),labels = c('MALE','FEMALE'))
print(F7)

# USAGE OF ORDER AND CONVERTING FACTOR TO ORDINAL SET
F8=factor(c('M','F','F','F','M'),levels = c('M','F'),labels = c('MALE','FEMALE'),ordered = T)
print(F8)

# NO SIGNIFICANCE OF ORDINAL VALUE IN DATA
F9=factor(c('M','F','F','F','M'),levels = c('M','F'),labels = c('MALE','FEMALE'),ordered = F)
print(F9)

# SIGNIFICANCE OF ORDINAL VALUE IN DATA
F10=factor(c(1,1,1,2,3),ordered = T)
print(F10)

F11= factor(c('GOOD','BETTER','BEST','BETTER','BETTER','BEST'),levels=c('GOOD','BETTER','BEST'),labels=c('G','BE','BES'),ordered=T)
print(F11)

# FUNCTIONS HELPFUL FOR FACTORS
levels(F9)
summary(F9)
summary(F10)
table(F8)
is.factor(F8)
as.factor(F8)

# READING DATASET
mtcars
summary(mtcars)

# DIRECTLY CONVERTING ANY COLUMN OF DATASET TO FACTOR
FACTOR0=as.factor(mtcars$cyl)
summary(FACTOR0)

# MENTION LEVELS FOR FACTOR (MEANS THE SCOPE OF THE DATA and LEVELS SHOULD ALWAYS MATCH THE DATA)
FACTOR1=factor(mtcars$cyl,levels=c(4,6,8))
summary(FACTOR1)
levels(FACTOR1)
head(FACTOR1)

# MENTION LEVELS FOR FACTOR (MEANS THE SCOPE OF THE DATA and IF LEVELS SHOULD NOT MATCH THE DATA, NAs WOULD INTRODUCE)
FACTOR2=factor(mtcars$cyl,levels=c(6,8,10))        
# AS DATA HAVE ONLY 6 and 8 VALUES THAT MATCHES WITH LEVELS SO HAVE SHOWN 6 and 8, REST 10 IS NOT IN DATA 
# SO 10 HAVE 0 VALUES and LEVEL 4 VALUES ARE ASSIGNED TO NA
summary(FACTOR2)
levels(FACTOR2)
head(FACTOR2)


# MENTION LABELS FOR FACTOR (MEANS IF LEVELS VALUES NEEDS TO BE CUSTOMIZED THEN LABEL KEYWORD WILL BE USED)
FACTOR3=factor(mtcars$cyl,levels=c(4,6,8),labels=c("4 CYLINDERS","6 CYLINDERS","8 CYLINDERS"))
# NAMES OF LEVELS WOULD UPDATE BY THE VALUES MENTIONED IN LABELS AND DATA WOULD ALSO BE UPDATED AS LABELS i.e 4 will be updated as 4 GEARS
summary(FACTOR3)
levels(FACTOR3)
head(FACTOR3)


# MENTION THAT CATEGORICAL FIELD IS ORDINAL VALUES (MEANS DATA or LEVEL ORDER HAVE SIGNIFICANCE)
FACTOR4=factor(mtcars$cyl,levels=c(4,6,8),labels=c("4 CYLINDERS","6 CYLINDERS","8 CYLINDERS"),ordered=T)
summary(FACTOR4)
levels(FACTOR4)
head(FACTOR4)

# MENTIONING FOR CATEGORICAL FIELD AS ORDINAL WILL BE FOR SOME ATTRIBUTES FOR THOSE ORDER HAVE SIGNIFICANCE BUT NOT FOR THOSE WHERE ORDER SIGNIFICANCE NOT REQUIRED
FACTOR5=factor(mtcars$am,levels=c(0,1),labels=c("AUTOMATIC","MANUAL")) # ORDER NOT REQUIRED
summary(FACTOR5)
levels(FACTOR5)
head(FACTOR5)


# ASSIGNING ATTRIBUTE AS FACTOR DIRECTLY IN DATASET
mtcars$cyl=factor(mtcars$cyl,levels=c(4,6,8),labels=c("4 CYLINDERS","6 CYLINDERS","8 CYLINDERS"),ordered = T)
summary(mtcars)
levels(mtcars$cyl)
head(mtcars)
head(mtcars$cyl)


mtcars$am=factor(mtcars$am,levels=c(0,1),labels=c("AUTOMATIC","MANUAL"))
summary(mtcars)
levels(mtcars$am)
head(mtcars)
head(mtcars$am)


# DELETING UPDATED LEVELS FROM MTCARS (MTCARS IS INBUILT DATASET)
rm(mtcars)
summary(mtcars)

# AUTOMATICALLY CONVERTING COLUMNS TO FACTOR 
# CTRL+ENTER on 1st OPENING PARANTHESIS

{
data=mtcars
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


# CHECKING AGAIN

{
  data=mtcars
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
