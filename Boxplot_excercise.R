#source('D:/OneDrive/study/R/stat_by_R/03/Boxplot_excercise.R')
cat("\014")

# set plot for 1 row 2 columns
par(mfrow=c(1,2))

male=c(62, 75, 58, 45, 60, 86, 75, 90, 67, 45)
female=c(50, 25, 40, 38, 75, 49, 50, 44, 80, 30, 33, 46, 57, 68, 74)

#1 find mean
male_mean<-mean(male)
female_mean<-mean(female)
cat(sprintf("mean male=\"%0.2f\" female=\"%0.2f\"\n", male_mean, female_mean))

#2 find median
male_median<-median(male)
female_median<-median(female)
cat(sprintf("median male=%0.2f female=%0.2f\n", male_median, female_median))

#3 quatile 1, 3
male_q1<-quantile(male,0.25,na.rm = TRUE)
male_q3<-quantile(male,0.75,na.rm = TRUE)
female_q1<-quantile(female,0.25,na.rm = TRUE)
female_q3<-quantile(female,0.75,na.rm = TRUE)
cat(sprintf("q1 male=%0.2f female=%0.2f\n", male_q1, female_q1))
cat(sprintf("q3 male=%0.2f female=%0.2f\n", male_q3, female_q3))

boxplot(female, male, names = c("female", "male"),horizontal = TRUE)


male_s <- sd(male)
female_s <- sd(female)
male_cv<-(male_s/male_mean)*100
female_cv<-(female_s/female_mean)*100

cat(sprintf("cv male=%0.2f female=%0.2f\n", male_cv, female_cv))
