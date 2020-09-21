ar <- c(2,4,6,8,10,12,14,16,18,20)
hist(ar,xlab="down",col="Yellow",xlim=c(0,40),ylim = c(1,5))

plot(ar,type="p",col="green",xlab="range",ylab="height")
plot(ar,type="l",col="green",xlab="range",ylab="height")

v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

plot(v,type="o",col="red",xlab="month",ylab ="Rain Fall",main="Rain Fall chart")

lines(t,type="o",col="blue") #It should be excuted after excuting plot only.


#Plotting the Data from The DataSet

input <-mtcars[,c('wt','mpg')]


plot(x=input$wt, y=input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),
     main = "Weight vs Milage")

dev.off()


pairs(~wt+mpg+disp+cyl, data=mtcars, main="Scatterplot Matrix")
dev.off()

pairs(~wt+mpg+disp+cyl, data=head(mtcars), main="ScatterPlot Matrix")
dev.off()


a<-c(1,2,3,4,5,NULL,6,7,8,9,10)
length(a)
print(mean(a))
print(median(a))
print(mode(a))
