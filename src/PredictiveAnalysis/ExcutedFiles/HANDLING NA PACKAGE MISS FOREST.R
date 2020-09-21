install.packages("missForest")
library(missForest)
iris.mis <- prodNA(iris, noNA = 0.1)

summary(iris.mis)

iris.imp <- missForest(iris.mis)

completeDataForest=as.data.frame(iris.imp[[1]])

summary(completeDataForest)
