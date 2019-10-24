#source('D:/OneDrive/study/R/stat_by_R/03/variance.R')
cat("\014")

num=c(25,28,35,50,54,55,74)
#variance
var(num)
#standard deviation
sd(num)

library(UsingR)
summary(exec.pay)
#Inter Quartile Range
IQR(exec.pay)
s<-sd(exec.pay)
mean<-mean(exec.pay)
cv<-(s/mean)*100


