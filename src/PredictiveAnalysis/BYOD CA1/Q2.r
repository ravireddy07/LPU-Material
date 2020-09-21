install.packages("MASS")
library(MASS)

normalizPainData = painters
str(normalizPainData)
summary(normalizPainData)

Normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
summary(normalizPainData)

newData=as.data.frame(lapply(normalizPainData[c(1:4)],Normalize))
ncol(newData)
summary(newData)
newData=cbind(normalizPainData[c(5)],newData)
View(head(newData))
summary(newData)
