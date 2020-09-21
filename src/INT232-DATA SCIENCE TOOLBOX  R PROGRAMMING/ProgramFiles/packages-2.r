install.packages("xlsx")
library(xlsx)

cereals <-read.csv("cereal.csv")
cereals
str(cereals)

cereals$totalcrab <- cereals$carbo + cereals$sugars
print(cereals$totalcrab)
cereals$totalcrab <- with(cereals, carbo + sugars)
print(cereals$totalcrab)

hotcereals <-subset(cereals, type="H")
print(hotcereals)

nrow(hotcereals)

hot <- cereals$type[cereals$type == "H"]
hot
length(hot)

length(unique(cereals$mfr))

K_Cereals<-subset(cereals,mfr == "K")
print(K_Cereals)

subset(cereals, calories <80 & vitamins >20)

cereals_subs<- subset(cereals, sugars>=1, select = c(cereals.name, calories, vitamins))
print(cereals_subs)

write.csv(cercereals_subs, "cerealssubset.csv", row.names = FALSE)

names(cereals)[names(cereals) == "mfr"] <- "Producer"


