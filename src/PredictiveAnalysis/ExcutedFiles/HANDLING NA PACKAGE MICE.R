install.packages("missForest")
library("missForest")
iris.mis <- prodNA(iris, noNA = 0.1)

summary(iris.mis)

iris.mis <- subset(iris.mis, select = -c(Species))
summary(iris.mis)

install.packages("mice")
library(mice)
md.pattern(iris.mis)


install.packages("VIM")
library(VIM)
mice_plot <- aggr(iris.mis, col=c('navyblue','yellow'),
                  numbers=TRUE, sortVars=TRUE,
                  labels=names(iris.mis), cex.axis=.7,
                  gap=3, ylab=c("Missing data","Pattern"))

imputed_Data <- mice(iris.mis, m=5, maxit = 50, method = 'pmm', seed = 500)
summary(imputed_Data)
summary(iris.mis)


imputed_Data$imp$Sepal.Width
completeData <- complete(imputed_Data,2)
View(completeData)
View(iris)

iris$Sepal.Length==completeData$Sepal.Length
