#Create a Predictive Model  for Sepal.Width of iris for only Setosa Flowers.
install.packages('missForest')
library(rpart)
library(rpart.plot)
library(missForest)

data = iris

data = iris[1:50,]
View(data)

is.na(data)
(data[!complete.cases(data),])
data = data[-5]

loadModel = lm(Sepal.Width~., data)

#correlation
cor(data[,-5])


plot(data$Sepal.Length,data$Sepal.Width)
#abline(loadModel, col="Red")
summary(data)


TRAIN = data[1:35,]
TEST = data[36:50,]

trainModel = lm(Sepal.Width~Sepal.Length, TRAIN[-5])
plot(TRAIN$Sepal.Length, TRAIN$Sepal.Width) #Plotting
abline(trainModel, col="green") #coloring

#Predicting the Train Model with Test data
Prediction = predict(trainModel, TEST[1])
cbind(TEST[,2],Prediction)

#Seeing difference
diff = Prediction-TEST[,2]
abs(diff)  #getting Absolute values

#Error Percentage
#Acc = (diff/TEST[,2])*100    #To get Actual, remove from 100

Acc = 100 - diff
Acc

#create a prediction model for finding MPG from the dataset of mtcars and also find prediction accuracy

data1 = mtcars
View(data1)

