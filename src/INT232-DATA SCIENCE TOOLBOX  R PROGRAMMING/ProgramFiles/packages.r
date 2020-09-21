library()

install.packages("xlsx")
install.packages("rJava")
library(xlsx)
search()
data<-read.xlsx("input1.xlsx",sheetIndex=1)
summary(data)
library(MASS)

print(ships)
summary(ships)

#1) Check ships dataset is a dataframe or not?
#2) Display number of row and columns?
#3) find the Maximum number of incidents took place.?
#4) find the cooresponding details of the data in which maximum incidents took place.?
#5) find the details of all data having minimum number of incidents and maximum number of incidents.?
#6) find the year in which maximum incidents took place.?