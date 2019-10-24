#source('D:/OneDrive/study/R/stat_by_R/03/range.R')
cat("\014")

#Set collection of 5 "Group A" and 5"Group B" 
g = c(rep("group A",5), rep("group B",5))
#Set collection of 10 data
d = c(10,12,15,18,20,2,8,15,22,28)

#Set frame of by collection set and dat
table = data.frame(g,d)
print(table)
#apply function over a  ragged array
tapply(Info$dat,set,range)
# return min/max of argument
range(d)


library(UsingR)
#exec.pay

diff(range(exec.pay))

#updated