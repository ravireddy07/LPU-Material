titanic <-read.csv("titanic.csv", header=TRUE)

#Drop duplicate rows and assign to neew dataframe object
titanic_clean <-titanic %>% distinct()
titanic_clean
nrow(titanic_clean)
nrow(titanic)

#Drop duplicates based on one or more variables
titanic %>% distinct(Sex, .keep_all = T)
titanic %>% distinct(Sex, SexCode, .keep_all = T)

#Sample 

