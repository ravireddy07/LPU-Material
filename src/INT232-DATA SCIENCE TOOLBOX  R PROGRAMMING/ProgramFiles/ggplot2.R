install.packages("ggplot2")
library(ggplot2)

fun1 <- function() {
  var <- read_excel("SALES DATASET.xls")
  var
}

fun1()

plot(var$Sales_Amt,var$`Item Name`, "l",xlim= c(0,5),ylim= c(1,5))
