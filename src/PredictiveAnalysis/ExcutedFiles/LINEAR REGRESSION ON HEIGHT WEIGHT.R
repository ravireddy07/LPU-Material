Height = c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
Weight = c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

linearregression=lm(Weight~Height)
print(linearregression)
print(summary(linearregression))

checkweight=data.frame(Height=170)
result=predict(linearregression,checkweight)
print(result)
plot(Weight,Height,col = "blue",main = "Height & Weight Regression")
abline(linearregression, col=2, lwd=3)
