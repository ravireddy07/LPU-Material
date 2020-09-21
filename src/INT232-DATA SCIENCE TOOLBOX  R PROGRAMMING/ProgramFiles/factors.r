colors<- c("Red","Green","Yellow","Green","Blue")
fac_colors<-factor(colors)
fac_colors
nlevels(fac_colors)

is.factor(fac_colors)

check <- factor(c("Harry",'Ravi',"Potter",TRUE)); nlevels(check)


height<- c(132,151,162,139,166,147,122)
weight <- c(48,49,66,53,67,52,40)
gender <- c("male","male","female","female","male","female","male")

input_data <- data.frame(height,weight,gender)
input_data; input_data[1]; input_data[2]; input_data[3]
is.factor(input_data$height)
is.factor(input_data$weight)
is.factor(input_data$gender)

