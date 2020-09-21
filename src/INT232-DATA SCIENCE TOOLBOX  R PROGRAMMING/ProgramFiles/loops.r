start<-as.integer(readline(prompt="Enter Starting Number: "))
end<-as.integer(readline(prompt="Enter Ending Number: "))

array_range <-c(start:end)

num=0

repeat{
  num = num+1
  if(array_range[num]%%2==0){
    print(array_range[num])
  } else if(array_range[num] == end){
    break
  }
  else {
    next
  }
}

number = as.integer(readline(prompt="NUmber of Values"))
n1 = 0
n2 = 1
count = 2

if(number <= 0) {
  print("Enter a positive integer")
} else {
  if(number == 1) {
    print(n1)
  } else {
    print(n1)
    print(n2)
    while(count < number) {
      nth = n1 + n2
      print(nth)
      n1 = n2
      n2 = nth
      count = count + 1
    }
  }
}


value<-as.integer(readline(prompt="Enter the Fabbonaci Number: "))
n1 = 0
n2 = 1
count = 2

if(value == 1) {
  print(n1)
  } else{
    print(n1)
    print(n2)
    repeat{
      count = count+1
      if(count<value){
        nth1 = n1+n2
        print(nth1)
        n1= n2
        n2 = nth
        
      }
      else{
        print("fabbonaci Series has ended...Increase the number and try")
        break
      }
    }
  }


#Take the dataset of rainfall amount(10 values) along with date.Read this dataset.
#find the date which has highest rainfall
#calculate the accumumlative rainfall over first 10 days
#Find the mean and standard devation of this data along with the summary