#Reading the adjusted csv file
adjusted_mpg <- read.csv("Auto_mpg_adjust.csv", fileEncoding="UTF-8-BOM")

#Getting the z-value for Miles per gallon. Removes NA values.
#Getting the mean and standard deviation.
mpg_mean<-mean(adjusted_mpg$Miles.per.gallon, na.rm=TRUE)
mpg_sd<-sd(adjusted_mpg$Miles.per.gallon, na.rm=TRUE)
#Calculating the z-values which are directly greater than 3 and less than -3, returns index.
miles_per_gallon_z<-which((adjusted_mpg$Miles.per.gallon-mpg_mean)/mpg_sd > 3 | (adjusted_mpg$Miles.per.gallon-mpg_mean)/mpg_sd < -3)
#Calculation the values which are at the z values index.
mpg_outliers<-adjusted_mpg$Miles.per.gallon[miles_per_gallon_z]
#Printing out the outliers
mpg_outliers

#Getting the z-value for Cylinders
cyl_mean<-mean(adjusted_mpg$Cylinders, na.rm=TRUE)
cyl_sd<-sd(adjusted_mpg$Cylinders, na.rm=TRUE)
cylinders_z<-which((adjusted_mpg$Cylinders-cyl_mean)/cyl_sd > 3 | (adjusted_mpg$Cylinders-cyl_mean)/cyl_sd < -3)
cyl_outliers<-adjusted_mpg$Cylinders[cylinders_z]
#Printing out the outliers
cyl_outliers

#Getting the z-value for Displacement
disp_mean<-mean(adjusted_mpg$Displacement, na.rm=TRUE)
disp_sd<-sd(adjusted_mpg$Displacement, na.rm=TRUE)
displacement_z<-which((adjusted_mpg$Displacement-disp_mean)/disp_sd > 3 | (adjusted_mpg$Displacement-disp_mean)/disp_sd < -3)
disp_outliers<-adjusted_mpg$Displacement[displacement_z]
#Printing out the outliers
disp_outliers

#Getting the z-value for Horsepower
hp_mean<-mean(adjusted_mpg$Horsepower, na.rm=TRUE)
hp_sd<-sd(adjusted_mpg$Horsepower, na.rm=TRUE)
horsepower_z<-which((adjusted_mpg$Horsepower-hp_mean)/hp_sd > 3 | (adjusted_mpg$Horsepower-hp_mean)/hp_sd < -3)
hp_outliers<-adjusted_mpg$Horsepower[horsepower_z]
#Printing out the outliers
hp_outliers

#Getting the z-value for Weight
wht_mean<-mean(adjusted_mpg$Weight, na.rm=TRUE)
wht_sd<-sd(adjusted_mpg$Weight, na.rm=TRUE)
weight_z<-which((adjusted_mpg$Weight-wht_mean)/wht_sd > 3 | (adjusted_mpg$Weight-wht_mean)/wht_sd < -3)
wht_outliers<-adjusted_mpg$Weight[weight_z]
#Printing out the outliers
wht_outliers

#Getting the z-value for Acceleration
acc_mean<-mean(adjusted_mpg$Acceleration, na.rm=TRUE)
acc_sd<-sd(adjusted_mpg$Acceleration, na.rm=TRUE)
acceleration_z<-which((adjusted_mpg$Acceleration-acc_mean)/acc_sd > 3 | (adjusted_mpg$Weight-acc_mean)/acc_sd < -3)
acc_outliers<-adjusted_mpg$Acceleration[acceleration_z]
#Printing out the outliers
acc_outliers

#Getting the z-value for Model Year
my_mean<-mean(adjusted_mpg$Model.year, na.rm=TRUE)
my_sd<-sd(adjusted_mpg$Model.year, na.rm=TRUE)
model_year_z<-which((adjusted_mpg$Model.year-my_mean)/my_sd > 3 | (adjusted_mpg$Model.year-my_mean)/my_sd < -3)
my_outliers<-adjusted_mpg$Model.year[model_year_z]
#Printing out the outliers
my_outliers

#Getting the z-value for Origin
org_mean<-mean(adjusted_mpg$Origin, na.rm=TRUE)
org_sd<-sd(adjusted_mpg$Origin, na.rm=TRUE)
origin_z<-which((adjusted_mpg$Origin-org_mean)/org_sd > 3 | (adjusted_mpg$Origin-org_mean)/org_sd < -3)
org_outliers<-adjusted_mpg$Origin[origin_z]
#Printing out the outliers
org_outliers

