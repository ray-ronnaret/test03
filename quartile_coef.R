#source('D:/OneDrive/study/R/stat_by_R/03/quartile_coef.R')
cat("\014")
#set 1 row 2 columns for plot
par(mfrow=c(1,2))
#plot dataset.airquality  
# na.rm logical; 
#     If TRUE, missing values are removed from x. 
#     If FALSE any missing values cause an error.
plot(density(airquality$Solar.R, na.rm=TRUE))
plot(density(airquality$Wind, na.rm=TRUE))



Q3=quantile(airquality$Solar.R,0.75,na.rm = TRUE)
Q1=quantile(airquality$Solar.R,0.25,na.rm = TRUE)
CD1=(Q3-Q1)/(Q3+Q1)


Q3_W=quantile(airquality$Wind,0.75,na.rm = TRUE)
Q1_W=quantile(airquality$Wind,0.25,na.rm = TRUE)
CD2=(Q3_W-Q1_W)/(Q3_W+Q1_W)
CD2
print(CD1)
print(CD2)