# CALLING LIBRARIES
library(class)
library(missForest)

# GETTING DATA
data <- read.csv(file.choose(), header = T)

# DATA VIEWING
str(data)
summary(data)
is.na(data)
(data[!complete.cases(data),])

# DATA CLEANING AND PREPARATION
data$admit[data$admit == 0] <- 'No'
data$admit[data$admit == 1] <- 'Yes'
data$admit <- factor(data$admit)
data$rank<- factor(data$rank)
datacleaned=data
summary(datacleaned)

# REMOVING NA
if (nrow(datacleaned[!complete.cases(datacleaned),])==0)
{
  datanona=datacleaned
}else{
  datamissforest <- missForest(datacleaned)
  datanona=as.data.frame(datamissforest[[1]])
}

summary(datanona)


# NORMALIZE DATASET
Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
datanorm=as.data.frame(lapply(datanona[2:3],Normalize))
datanorm=cbind(datacleaned[,c(1,4)],datanorm)
summary(datanorm)

# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind <- sample(2, nrow(datanorm), replace = T, prob = c(0.7, 0.3))
training <- datanorm[ind == 1,]
testing <- datanorm[ind == 2,]
training_label=training[,1]
testing_label=testing[,1]

training <- training[,-1]
testing <- testing[,-1]

summary(training)
summary(testing)

# CREATING KNN MODEL
nearestneighbours=round(sqrt(nrow(datacleaned)))
print(nearestneighbours)
for (i in 1:nearestneighbours)
{
PREDICTION=knn(train=training,test=testing,cl=training_label,k=i)
VALIDATION=table(testing_label,PREDICTION)
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)
print(paste("When Nearest neighbour= ",i,"Then Accuracy = ",ACCURACY))
}

# CROSS VALIDATION
(VALIDATION=table(testing_label,PREDICTION))

# CHECKING ACCURACY PERCENTAGE
(ACCURACY=sum(diag(VALIDATION))/sum(VALIDATION)*100)


# PREDICTION
NEW=data.frame(rank=1,gre=1,gpa=0.95)
summary(NEW)
check=knn(train=training,test=NEW,cl=training_label,k=17)
check
