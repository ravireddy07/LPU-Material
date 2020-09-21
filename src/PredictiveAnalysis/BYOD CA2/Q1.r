id=c(1:10)
height=c(5,5.11,5.6,5.9,4.8,5.8,5.3,5.8,5.5,5.6)
age=c(45,26,30,34,40,36,19,28,23,32)
weight=c(77,78,55,88,50,78,40,70,45,58)

Q1_DATA = data.frame(height,age,weight)

str(Q1_DATA)
summary(Q1_DATA)
cor(Q1_DATA)


set.seed(1234)
index=sample(2,nrow(Q1_DATA),replace=T,prob=c(0.6,0.4))
Train_Data=Q1_DATA[index==1,]
Test_Data=Q1_DATA[index==2,]



#height_age_Model = lm(weight~., Train_Data)
#summary(height_age_Model)

#height_age_PredResult = predict(height_age_Model, Test_Data)
#height_age_diff = abs(Test_Data[,3] - height_age_PredResult)
#height_age_error = height_age_diff/Test_Data[,3]*100
#height_age_Accuracy = 100 - height_age_error
#cbind(Actual_Data=Test_Data[,3], Predicted_Result=height_age_PredResult, Error=height_age_diff, height_age_error, height_age_Accuracy)
#height_age_Accuracy = mean(height_age_Accuracy)
#height_age_Accuracy



#height_Model = lm(weight~height, Train_Data)
#plot(Q1_DATA$height, Q1_DATA$weight)
#abline(height_Model, col='red')

#Height_PredResult = predict(height_Model, Test_Data)
#Height_diff = abs(Test_Data[,3] - Height_PredResult)
#Height_error = Height_diff/Test_Data[,3]*100
#Height_Accuracy = 100 - Height_error
#cbind(Actual_Data=Test_Data[,3], Predicted_Result=Height_PredResult,Error=Height_diff, Height_error,Height_Accuracy)
#Height_Accuracy = mean(Height_Accuracy)
#Height_Accuracy



age_Model = lm(weight~age, Train_Data)
plot(Q1_DATA$age,Q1_DATA$weight)
abline(age_Model,col='blue')

age_PredResult = predict(age_Model, Test_Data)
age_diff = abs(Test_Data[,3] - age_PredResult)
age_error = age_diff/Test_Data[,3]*100
age_Accuracy = 100 - age_error
cbind(Actual_Data=Test_Data[,3], Predicted_Result=age_PredResult, Error=age_diff, age_error, age_Accuracy)
age_Accuracy = mean(age_Accuracy)
age_Accuracy


new_entry = data.frame(height=5.5,age=38)
#predicited_Value_height_age = predict(height_age_Model, new_entry)
#predicited_Value_height = predict(height_Model, new_entry)
predicited_Value_age = predict(age_Model, new_entry)
#predicited_Value_height_age
#predicited_Value_height
predicited_Value_age

