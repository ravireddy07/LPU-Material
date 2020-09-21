data<-read.xlsx("TITANIC.xls",sheetIndex = 1 )
data

str(data)
nrow(data)
nrow(data$PClass)

table(data$PClass == "1st")

#take 15 random names of passengers from the Titanic, and sort them alphabet
s<-sample(data$Name,15)
sort(s)

#How many observations of 'Age' are missing from the dataframe?
summary(data$Age)
nrow(data$Age)
sum(is.na(data$Age))


#make two new dataframes a subset of male survivers, and a subset of female survivers
data_male <- subset(data, Sex =="male" & Survived ==1)
data_female <- subset(data, Sex =="female" & Survived ==1)

#What was the name of the oldest surviving male?
#In what class was the youngest surviving female?
data_male$Name[which.max(data_male$Age)]
data_female$Name[which.min(data_female$Age)]


#Make a new variable called 'Status', based on the 'survived' variable
data$Status <- factor(ifelse(data$Survived==0,"dead","alive"))

#Count teh number of passengers in each class (1st,2nd,3rd)
table(data$PClass)

#For what proportion of the passengers is the unkown?
data_missage<-subset(data,is.na(Age))
table(data_missage$PClass)

#Finally, Divide by the total no. of rows to get the proportions:
table(data_missage$PClass)/nrow(data_missage)
