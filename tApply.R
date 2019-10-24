#source('D:/OneDrive/study/R/stat_by_R/03/tApply.R')
cat("\014")

#Set collection of 5 "Group A" and 5"Group B" 
set = c(rep("group A",5), rep("group B",5))
#Set collection of 10 data
dat = c(10,12,15,18,20,2,8,15,22,28)

#Set frame of by collection set and dat
Info = data.frame(set, dat)


print(Info)
#calculate average of dat in each group
tapply(Info$dat, set, mean) 

#plot distribution compare fof dat/set from Info
stripchart(dat~set, data = Info)


tapply(Info$dat,set,range)
