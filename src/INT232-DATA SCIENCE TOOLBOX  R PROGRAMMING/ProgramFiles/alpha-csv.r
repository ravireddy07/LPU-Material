#Draw 10 random letters from alphabetcal series in lowercase & sort them in order

sort(sample(letters,10))
letters[1:10]
LETTERS
#
A<-sort(sample(letters,5))
B<-sort(sample(letters,5))
c<-c(A,B)
c
#or 
sort(c(sample(letters,5),sample(letters,5)),decreasing = FALSE)

sort(c(sample(LETTERS,5),sample(letters,5)),decreasing = TRUE)

#In Decending Order
sort(c(sample(letters,5),sample(letters,5)),decreasing = TRUE)

length(letters)
letters[26]

letters[(length(letters)/2)*2]

x=c(1,5,7,9,11)
y=c(11,10,9,8,7)
intersect(x,y)

setdiff(x,y) # values in x, but not in y
setdiff(y,x) # values in y, but not in x

union(x,y)

one<-sample(letters,15,replace = TRUE) #Repeated values
any(duplicated(one))
two<-sample(letters,15)
any(duplicated(two))

which(duplicated(one))

anyDuplicated(one)
getwd()
data<-read.csv("week.csv")
data[1]
data[1,1]

is.data.frame(data)
max(data$value)
