install.packages("Amelia")
library(Amelia)
library(missForest)

iris.mis <- prodNA(iris, noNA = 0.1)
summary(iris.mis)
# amelia( data, noms = noms, ords = ords, idvars = idvars )
amelia_fit <- amelia(iris.mis, m=5, parallel = "multicore", noms = "Species")
amelia_fit$imputations[[1]]
amelia_fit$imputations[[2]]
amelia_fit$imputations[[3]]
amelia_fit$imputations[[4]]
amelia_fit$imputations[[5]]

completeDataAmilia=as.data.frame(amelia_fit$imputations[1])
summary(completeDataAmilia)
View(completeDataAmilia)



iris.imp <- missForest(iris.mis)




