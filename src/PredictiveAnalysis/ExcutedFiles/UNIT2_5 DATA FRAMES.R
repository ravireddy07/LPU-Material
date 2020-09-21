# CREATING DATA FRAMES AND ASSIGNING VALUES TO DATA FRAME#

Vector1=c("Ram","Sham")
Vector2=c(20,50)
df=data.frame(Vector1,Vector2)
df

df1=data.frame(Name=c("RAM","SHAM"),AGE=c(20,30),GENDER=factor(c("MALE","FEMALE")),stringsAsFactors = F)
df1

levels(df1$GENDER)

Name=c("RAM","SHAM")
COURSE=c("C++","PYTHON")
GRADES=c("B","A")
df2=data.frame(Name,COURSE,GRADES,stringsAsFactors = F)
df2

# Usage of StringAsFactors while creating DATA FRAME

df1=data.frame(Name=c("RAM","SHAM"),AGE=c(20,30),GENDER=factor(c("MALE","FEMALE")))
is.factor(df1$Name)

df1=data.frame(Name=c("RAM","SHAM"),AGE=c(20,30),GENDER=factor(c("MALE","FEMALE")),stringsAsFactors =F)
is.factor(df1$Name)


# Assigning RowNames to dataframes
mtcars
rownames(mtcars)

df3=c("Student1","Student2")
df3
rownames(df1)=(df3)
df1

# Adding Rownames as attribute in dataset
mtcarscopy=cbind(CARNAMES=rownames(mtcars),mtcars)
mtcarscopy

# Removing Rownames from dataset
rownames(mtcarscopy)=NULL
mtcarscopy

# Creating Data Frames via combining other data frames
df5=data.frame(df1,df2[-1])
df5
df6=data.frame(Name=c("MAN","SHAM","KAMAL"),AGE=c(20,30,50),GENDER=factor(c("MALE","FEMALE","MALE")))
df7=data.frame(Name,COURSE,GRADES)
df6
df7

# Data Frame Can only be combined if have equal number of rows 
df8=data.frame(df6,df7)
df8


# ACCESSING VALUES FROM DATA FRAMES#

df1
print(df1)
View(df1)

# Finding rownames and columnnames of data frame
rownames(df1)
colnames(df1)

# Accessing attribute using $ and via attaching them
df1$Name
df1$GENDER
GENDER
attach(df1)
GENDER
detach(df1)
GENDER

# Accessing particluar data from data frame 

df1$AGE
df1[,]
df1[,1]
df1[1,]
df1[1,2]
df1[2,3]

df1[,'AGE']
df1['Student1',]

df1[2]
df1[,2]
df1[[2]]
df1$AGE
df1[2]
df1['AGE']
df1[c('AGE','GENDER')]


df1[1,]
df1[-1,]
df1['Student1',]
df1['Student1']



df1[1,2]
df1[-1,2]
df1['Student1',2]
df1[2,'GENDER']
df1[,]

df1[Name=='SHAM',]
df1[Student1=,]
subset(df1,Name=='SHAM')


# Changing Values in DATA FRAMES#

df1$Name='Harman'
df1$Name=c('Harman','Raman')
df1[1,'Name']='Sachin'

df1['Student2',2]=100
df1[2,3]='MALE'



# CALCULATION ON DATA FRAMES#

df1[2]+1
df9=c(20,30)
df1[2]+df9
df10=data.frame(weight=c(20,30),height=c(5.2,6.4))
df1[2]+df10[2]



# ADDING VALUES IN DATA FRAMES

df11=data.frame(df1,df2)
df12=cbind(df1,df2)
colu=colnames(df1)
df13=data.frame("Sushil",30,'MALE','Sushil','R','A')
colnames(df13)=colu
rbind(df1,df13)
rbind(df1,df13[1:3])


# REMOVING VALUES FROM DATA FRAME 

df1[1,"GENDER"]=NA
df1
df1[1,'GENDER']=NULL

df1=df1[,-3]
df1$AGE=NULL
rm(df2)
df2

# FUNCTIONS OF DATAFRAMES
str(df1)
levels(df1$Name)
colnames(df1)
rownames(df1)
length(df1)
nrow(df1)
ncol(df1)
