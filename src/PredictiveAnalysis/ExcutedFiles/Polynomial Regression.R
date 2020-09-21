year = c(1959:1969)
population = c(4835,4970,5085,5160,5310,5260,5235,5255,5235,5210,5175)

data = data.frame(year,population)
View(data)
summary(data)
str(data)

#Adding a new column having the difference from 1964
data$value = data$year-1964
#or
count = 1
value = 0
for (i in year) {
  diff = i - 1964
  value[count] = diff
  count = count+1
}

data = data.frame(year,population,value)


# DATA SUBSETTING AND PREPARATION
set.seed(1234)
ind=sample(2,nrow(data),replace=T,prob=c(0.6,0.4))
TRAINING=data[ind==1,]
TESTING=data[ind==2,]
str(TRAINING)
summary(TRAINING)
str(TESTING)
summary(TESTING)


model1 = lm(population~year,TRAINING)
plot(year, population)
abline(model1,col='green')

model2 = lm(population~year+I(year)^2, TRAINING)
summary(model2)
plot(year, population)
abline(model1,col='red')

model3 = lm(population~year+I(year)^3, TRAINING)
summary(model3)
plot(year, population)
abline(model1,col='black')

pred = (predict(model2, TESTING[,2]))
DIFFERENCE=abs(TESTING[,2]-pred)
ERROR_PERCENTAGE=DIFFERENCE/TESTING[,2]*100
ACCURACY_PERCENTAGE=100-ERROR_PERCENTAGE
(cbind(ACTUAL=TESTING,PREDICTED=pred,ERROR=DIFFERENCE,ERROR_PERCENTAGE,ACCURACY_PERCENTAGE))
(FINAL_ACCURACY=mean(ACCURACY_PERCENTAGE))
