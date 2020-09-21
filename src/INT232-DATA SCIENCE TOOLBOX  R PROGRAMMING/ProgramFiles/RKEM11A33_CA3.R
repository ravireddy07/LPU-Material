install.packages("xlsx")
library(xlsx)
install.packages("data.table")

case1 <- read.csv("ACME DATA.csv", header = TRUE)
case1

#i
var1 <- case1[2]
var2 <- case1[3]

for(i in 1:6){
  if(var1[i,1]>=var2[i,1]){
  print("Achieved")
    print(case1[i,1])
}else{
  print("Not Achieved")
}
}


#ii
two <- ifelse(is.nan(case1$Ad.costs) ==TRUE | is.nan(case1$Social.network.costs) ==TRUE,NaN,case1$Ad.costs-case1$Social.network.costs)
two
two_final <- data.frame(case1,two)
two_final

#iii

#iv

case1$Months %like%

#CASE2

#i
fun1 <- function(){
  print(is.null(case1))
}
fun1()

#ii
fun2 <-function(){
  df <- data.frame(col1 = c(case1$Months),
                 col2 = c(case1$Gross.sales), 
                 col3 = c(case1$Target.sales), 
                 col4 = c(case1$Ad.costs),
                 col5 = c(case1$Social.network.costs),
                 col6 = c(case1$Unit.prices..per.oz..),
                 stringsAsFactors = TRUE)

is.na(df)                 
colSums(is.na(df))
sum(is.na(df))

new_vec <- C(which(is.na(df)))
#Now, Here we have position of Null values in the DataFrame or Dataset, 
#So we can check those NULL values with Positions in new_vec

}#end of function

fun2()

#or

na_values <- function(df) {
  print(is.na(df))
  ALLNA <- df[!complete.cases(df),]
  print(ALLNA)
  new_df <- na.omit(df)
  print(new_df)
}

#iii
fun3 <- function(){
  rem <- rbind(case1)
rem
}

fun3()

#iv

# we can do with na.omit() function
#It will return the dataset without having NULL values

newdata <- na.omit(case1)
newdata


case3 <- read.csv("OLYMPICS SUMMER.csv", header = TRUE)
case3

#i
#Error in taking Full Dataset
# Error Name: "attempt to make a table with >= 2^31 elements"
num <- table(case3$Year)
barplot(num, main = 'Visualizing the Dataset',col=c('red','orange', 'steelblue'),
        legend=rownames(num),xlab='dataset',
        ylab='count' )

#ii

