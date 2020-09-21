
#*******NAMING CONVENTIONS********#

var_name2.=10
varname2=30
.var_name=20
var.name=30


#*******VARIABLE ASSIGNMENT********#

var.1 = c(0,1,2,3) 
var.2 <- c("learn","R")
c(TRUE,1) -> var.3 

print(var.1)
print(var.2)
print(var.3)


#*******VARIABLE DATATYPE********#

var_x <- "Hello"
cat("The class of var_x is ",class(var_x),"\n")

var_x <- 34.5
cat("  Now the class of var_x is ",class(var_x),"\n")

var_x <- 27L
cat("   Next the class of var_x becomes ",class(var_x),"\n")


#*******FINDING VARIABLE********#

print(ls())
print(ls(pattern = "var"))
Live Demo
print(ls(all.name = TRUE))


#*******DELETING VARIABLE********#

rm(var.3)
print(var.3)
rm(list = ls())
print(ls())

