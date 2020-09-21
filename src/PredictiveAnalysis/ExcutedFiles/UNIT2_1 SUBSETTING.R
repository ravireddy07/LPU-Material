# SUBSETTING IN R #

View(mtcars)
head(mtcars)
tail(mtcars)
str(mtcars)
summary(mtcars)
nrow(mtcars)
ncol(mtcars)
length(mtcars)


# **** SUBSETTING DATA FROM DATASET NAME ONLY USING SQUARE BRACKETS **** #

# SUBSETTING AND VIEWING DATA THROUGH COLUMN NUMBER

#SYNTAX: Datasetname[Rownumber or 'Rowname' , Columnnumber or 'Columnname'] 

mtcars[]
mtcars[,]
mtcars[,1]
mtcars[1]
mtcars[,1]+mtcars[,2]
mtcars[1]+mtcars[2]
mtcars[1]
mtcars[c(1,3,4)]
mtcars[,c(1,3,4)]
mtcars[2,c(1,3,4)]

# SUBSETTING AND VIEWING DATA THROUGH COLUMN NAMES AND ROW NAMES

mtcars['am']
mtcars[,'am']
mtcars[,c('am','mpg')]
mtcars['Volvo 142E',]
mtcars[c('Volvo 142E','Maserati Bora'),]


# SUBSETTING AND VIEWING DATA USING CONDITIONS

mtcars[which(mtcars$am==0),]
mtcars[which(mtcars$gear>4),]
mtcars[which(mtcars$am==0),'hp']
mtcars[which(mtcars$vs==0 & mtcars$cyl>4),]
mtcars[which(mtcars$vs==0 & mtcars$cyl>4),c('hp','gear')]


# **** SUBSETTING DATA FROM SUBSET FUNCTION ONLY **** #

#SYNTAX: subset(Datasetname,Condition(selection of Data),Columns(Projection of Data)) 


subset(mtcars)
subset(mtcars,)

# Selection  (Selection would always be logical)
subset(mtcars,am==0)
subset(mtcars,gear>3)
subset(mtcars,cyl>4)
subset(mtcars,row.names(mtcars) %in% c('Mazda RX4','Merc 450SL'))



# Projection
subset(mtcars,select=mpg)
subset(mtcars,select=am)
subset(mtcars,select=3)
subset(mtcars,select=c(1,3,4))
subset(mtcars,select=c(1))+subset(mtcars,select=c(2))

# Selection and Projection
subset(mtcars,am==0,select=hp)
subset(mtcars,vs==0 & cyl>4,select=c(hp,gear))

# DIFFERENCE OF SUBSET FUNCTION WITH DATASET NAME SUBSETTING
# DISADVANTAGE..............................................
# Using Dataset Name subsetting we can easily access any row through its number or by name but
# while using Subset function we can only give conditions or can project columns, there is no defined 
# way to access any row directly i.e.
# Q. If we want to see data of 4th row then 
# Code: mtcars[4,] but using Subset function we would get the error as it would only work on logical conditions.
mtcars[4,]
subset(mtcars,row_number(4))

# ADVANTAGE..............................................
# Using Subset function programmer do not need to write dataset name again and again as the Dataset once 
# mentioned in subset function system automatically understand that condition would be on same dataset, so
# repeating of dataset name with column name is not required which was required in other of subsetting using
# dataset name only i.e.
# Q. Code For viewing data of those cars having V-Shaped Engine and Cylinders more than 4
# Code: mtcars[which(mtcars$vs==0 & mtcars$cyl>4),] or subset(mtcars,vs==0 & cyl>4)

mtcars[which(mtcars$vs==0 & mtcars$cyl>4),]
subset(mtcars,vs==0 & cyl>4)


# **** SUBSETTING DATA FROM DPLYR PACKAGE **** #

install.packages('dplyr')
library(dplyr)


# DPLYR is grammar of data manipulation and is used for data cleaning
# DPLYR have following functions
# i.   SELECT:    Used to Project the data (Selecting Columns, Projection) 
# ii.  FILTER:    Used to Filter the data (Filter Rows, Condition based filtering)
# iii. MUTATE:    Used to Add columns to Predifined Data
# iv.  ARRANGE:   Used to Arrange (Sort) data in Ascending or Descending Order 
# v.   SUMMARIZE: Used to summarize the data using Aggregate functions
# Vi.  GROUP_BY:  Used to Group the data 
# Vii. %>% (PIPE SIGN):       Used to continue the selection of data for further analysis

# ADVANTAGE..............................................
# DPLYR is better than other subsetting methods as it is more flexible and have more functions to perform 
# different tasks.

# USING SELECT KEYWORD
select(mtcars,cyl)
select(mtcars,hp,cyl)
select(mtcars,am,hp,cyl)
select(mtcars,-am)
select(mtcars,am:cyl)
select(mtcars,starts_with("c"))
select(mtcars,ends_with("p"))
select(mtcars,contains("t"))
select(mtcars,contains("at"))


#USING FILTER KEYWORD
filter(mtcars,am==0)
filter(mtcars,am==0|cyl==4)
filter(mtcars,am==0,cyl==4)
filter(mtcars,am==0&cyl==4)

# USING %>% SIGN, SELECT KEYWORD
filter(mtcars,row.names(mtcars) %in% c('Mazda RX4','Merc 450SL'))%>%
  select(mpg,cyl)

mtcars %>%
  filter(row.names(mtcars) %in% c('Mazda RX4','Merc 450SL'))%>%
  select(mpg,cyl)


# USING %>%, SELECT AND ARRANGE KEYWORD
mtcars %>%
  select(am,disp,hp)%>%
  arrange(hp) %>%
  head()

mtcars %>%
  select(am,disp,hp)%>%
  arrange(hp,desc(disp))
  


# USING %>%, SELECT, ARRANGE AND FILTER KEYWORD
mtcars %>%
  select(am,disp,hp)%>%
  arrange(hp) %>%
  filter(am==1)


# USING %>%, SELECT, ARRANGE, FILTER AND HEAD FUNCTION
mtcars %>%
  select(am,disp,hp)%>%
  arrange(desc(hp)) %>%
  filter(am==1)%>%
  head()


# USING %>%, MUTATE, ARRANGE AND SELECT KEYWORD
mtcars %>%
  select(disp,hp)%>%
  mutate (DIFF=disp-hp)%>%
  arrange(DIFF)%>%
  select(DIFF,disp,hp)



# USING %>%, SUMMARISE, AND SELECT KEYWORD
mtcars%>%
  summarise(avghp=mean(hp),min(hp),max(hp),total=n())%>%
  select(total,avghp)

mtcars%>%
  summarise(avghp=mean(hp),m=min(hp),max(hp),total=n())%>%
  select(avghp,m)


# USING %>%, GROUP BY, SUMMARISE KEYWORD
mtcars%>%
  group_by(am)%>%
  summarise(total=n())


mtcars%>%
  group_by(gear)%>%
  summarise(total=n())


mtcars%>%
  group_by(gear,am)%>%
  summarise(total=n())










