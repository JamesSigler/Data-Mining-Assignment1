#Sources found from R/RStudio documentation
mpg <- read.csv("Auto_mpg_raw.csv", fileEncoding="UTF-8-BOM")#Reading in the Auto mpg CSV. Had weird symbols in places so I looked up the encoding part

#Creating a histogram for every column
hist(mpg$Miles.per.gallon, 
     main="Histogram of Miles per gallon",
     xlab="Miles per gallon",
     col="black")

hist(mpg$Cylinders,
     main="Histogram of Cylinders",
     xlab="Cylinders",
     col="black")

hist(mpg$Displacement,
     main="Histogram of Displacement",
     xlab="Displacement",
     col="black")

hist(mpg$Horsepower,
     main="Histogram of Horsepower",
     xlab="Horsepower",
     col="black")

hist(mpg$Weight,
     main="Histogram of Weight",
     xlab="Weight",
     col="black")

hist(mpg$Acceleration,
     main="Histogram of Acceleration",
     xlab="Acceleration",
     col="black")

hist(mpg$Model.year,
     main="Histogram of Model Year",
     xlab="Model Year",
     col="black")

hist(mpg$Origin,
     main="Histogram of Origin",
     xlab="Origin",
     col="black")

#Setting all the misleading values in Miles per gallon to NA
mpg$Miles.per.gallon[mpg$Miles.per.gallon == 1000] <- NA

#Setting all misleading values in horsepower to NA
mpg$Horsepower[mpg$Horsepower == 0] <- NA

#Recreating the histograms that had misleading values
hist(mpg$Miles.per.gallon, 
     main="Histogram of Miles per gallon(adjusted)",
     xlab="Miles per gallon",
     col="red")

hist(mpg$Horsepower,
     main="Histogram of Horsepower(adjusted)",
     xlab="Horsepower",
     col="red")

#Exporting the modified data to requested file
write.csv(mpg,"Auto_mpg_adjust.csv", row.names = FALSE)
