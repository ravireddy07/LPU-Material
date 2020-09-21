
# Q.1 Find the cars having MPG greater than 20?
# Q.2 What is the MPG of cars that are automatic?
# Q.3 Find the cars weight of cars that have mileage about 20?
# Q.4 What is horsepower of cars that are having Gears 4 and 5?
# Q.5 How many cylinders do cars have v shaped engine?
# Q.6 Find the number of cars that are automatic and have gears more than 4?




# Q.1 Find the cars having MPG greater than 20?
mtcars[which(mtcars$mpg>20),]
subset(mtcars,mpg>20)

{
filter(mtcars,mpg>20)
}

# Q.2 What is the MPG of cars that are automatic?
mtcars[which(mtcars$am==0),'mpg']
subset(mtcars,am==0,select='mpg')

{
mtcars%>%
  filter(am==0)%>%
  select(mpg)
}


# Q.3 Find the cars and their weight that have mileage about 20?
mtcars[which(mtcars$mpg>20),'wt']
subset(mtcars,mpg>20,select='wt')

{
mtcars%>%
  filter(mpg>20)%>%
  select(wt)
}

# Q.4 What is horsepower of cars that are having Gears 4 and 5?
mtcars[which(mtcars$gear==4|mtcars$gear==5),'hp']
subset(mtcars,gear==4|gear==5,select='hp')

{
mtcars%>%
filter(gear==4|gear==5)%>%
select(hp)
}

# Q.5 How many cylinders do cars have those are having v shaped engine?
mtcars[which(mtcars$vs==0),'cyl']
subset(mtcars,vs==0,select='cyl')

{
mtcars%>%
filter(vs==0)%>%
select(cyl)
}


# Q.6 Find the number of cars that are manual and have gears more than 4?
nrow(mtcars[which(mtcars$am==1 & mtcars$gear>4),])
nrow(subset(mtcars,am==1&gear>4))

{
mtcars%>%
filter(am==1,gear>4)%>%
group_by(gear)%>%
summarise(total=n())
}

