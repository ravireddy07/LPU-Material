## CONDITIONAL STATEMENT

# APPLYING CONDITIONAL STATEMENTS USING IF ELSE
# Print weather given number is Negative or Positive.
x <- -5
if(x > 0){
  print("Positive number")
} else {
  print("Negative number")
}

# APPLYING CONDITIONAL STATEMENTS USING IF ELSE AND ELSE IF
# Print weather given number is Negative or Positive or Zero. 
x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


# APPLYING CONDITIONAL STATEMENTS OVER VECTOR
# NOTE: Conditional Statement on any data structure having more than single value can be used for their 
# AGGREGATE FUNCTIONS only but if required to use condition of every element of datastructure than loops are required.

# Print the All the elements of vector if their length is above 5 else print Elements less than 5
x <- c(2,5,3,9,8,11,6)
if (length(x)>5)
{
  print(x)
}else{
  print("ELEMENTS LESS THAN 5")
}


# APPLYING CONDITIONAL STATEMENTS OVER VECTOR
# Print the All the Attribute Name of Data  frame if their length is above 5 else print Elements less than 5 Attribute
x <- mtcars
if (length(x)>5)
{
  print(names(x))
}else{
  print("ELEMENTS LESS THAN 5 Attributes")
}

## LOOPS

# APPLYING LOOPS
# Print the series from 1 to 10  
for (i in 1:10) 
{
    print(i)
}
print(i-1)


# APPLYING LOOP OVER VECTOR
# Print the number of elements in vector 
x <- c(2,5,3,9,8,11,6)
count <- 0
for (i in 1:length(x)) 
{
  count = count+1
}
print(count)



# APPLYING LOOPS OVER DATASET
# Print datatype of every attribute of mtcars
View(mtcars)
for (i in 1:length(mtcars)) 
{
 print(class(mtcars[,i]))
}


# APPLYING LOOPS OVER DATASET AND ADDING DATA IN OTHER VARIABLE
# Print the datatype of every column from mtcars and later save it in dataframe with name as MTCARSDATATYPE having
# attributes as MTCARSCOLNAME and MTCARSTYPE.
View(mtcars)
MTCARSDATATYPE=data.frame(MTCARSCOLNAME=NA,MTCARSTYPE=NA)
for (i in 1:length(mtcars)) 
{
  print(class(mtcars[,i]))
  MTCARSDATATYPE[i,]=rbind(names(mtcars[i]),class(mtcars[,i]))
}
print(MTCARSDATATYPE)


## COMBITION OF LOOPS AND CONDITIONAL STATEMENTS

# APPLYING CONDITIONAL STATEMENTS WITH LOOPS 
# Find Factorial of a number
{
# Take input from the user
num = as.integer(readline(prompt="Enter a number: "))
factorial = 1
# Check is the number is negative, positive or zero
if(num < 0) {
  print("Sorry, factorial does not exist for negative numbers")
} else if(num == 0) {
  print("The factorial of 0 is 1")
} else {
  for(i in 1:num) {
    factorial = factorial * i
  }
  print(paste("The factorial of", num ,"is",factorial))
}
}


# APPLYING CONDITIONAL STATEMENTS WITH LOOPS OVER VECTOR
# Find the number of even elements in vector
x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
  if(val %% 2 == 0){  
    count = count+1
  }
}
print(count)


# APPLYING CONDITIONAL STATEMENTS WITH LOOPS OVER DATASET
# From Dataset of Mtcars PRINT and SAVE the values for every car as 'Manual' or 'Automatic'
# if their am is 0 and 1 respectively and save result in attribute named 'MANUAL/AUTOMATIC' in mtcars dataset.
for (i in 1:length(mtcars$am)) 
{
  if (mtcars[i,'am']==0)
  {
    print('Manual')
    mtcars[i,'MANUAL/AUTOMATIC']='Manual'
  }
  else
  {
    print('Automatic')
    mtcars[i,'MANUAL/AUTOMATIC']='Automatic'
  }
}


