install.packages("missForest")

library(missForest)
nrow(iris)
summary(iris)

# ......................................REMOVING NAs Using OMIT......................................

D1= prodNA(iris, noNA = 0.1)
summary(D1)
nrow(D1)

View(D1[!complete.cases(D1),])         # Viewing only NA Data from Dataset
nrow(D1)                               # Total Rows in Dataset
nrow(D1[!complete.cases(D1),])         # Counting NA rows
D1=na.omit(D1)                         # All NA rows will be omitted from dataset
nrow(D1)                               # Total Rows in Dataset will be now less 
nrow(D1[!complete.cases(D1),])         # 0 NA rows
summary(D1)
D1omit=D1


#.......................................IMPUTING NAs......................................
D1= prodNA(iris, noNA = 0.1)
summary(D1)
nrow(D1)

nrow(D1[!complete.cases(D1),])         # Check the COLUMNS with NA values
for(i in 1:ncol(D1))
{
D1[is.na(D1[,i]),i]=round(mean(D1[,i], na.rm = TRUE))
} 
nrow(D1[!complete.cases(D1),])         # 0 NAs left 
summary(D1)

