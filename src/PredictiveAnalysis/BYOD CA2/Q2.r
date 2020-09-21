Q2_DATA = read.csv(file.choose(), sep = ',')
str(Q2_DATA)
summary(Q2_DATA)
Q2_DATA = Q2_DATA[-1]

set.seed(1234)
index <- sample(2, nrow(Q2_DATA), replace = T, prob = c(0.6, 0.4))
Train_Data<- Q2_DATA[index == 1,]
Test_Data<- Q2_DATA[index == 2,]


Q2_Model = rpart(PlayTennis~., Train_Data, method = "class")

Predicted_Value = predict(Q2_Model, Test_Data, type="class")

CheckValidation = table(Test=Test_Data$PlayTennis, predicited=Predicted_Value)

Q2_Accuracy = sum(diag(CheckValidation))/sum(CheckValidation)*100

newdata = data.frame(Outlook = 'Sunny', Temperature = 'Hot', Humidity = 'High', Wind = 'Weak')

Final_output = predict(Q2_Model, newdata)
Final_output
