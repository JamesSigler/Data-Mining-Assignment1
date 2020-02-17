library(ggplot2)

cereals <- read.csv("cereals.CSV", fileEncoding="UTF-8-BOM")

#Manufacture with Type overlay bar graph
ggplot(cereals, aes(Manuf))+ geom_bar(aes(fill=Type)) + coord_flip()

#Manufacture with Type overlay bar graph normailized
ggplot(cereals, aes(Manuf))+ geom_bar(aes(fill=Type), position="fill") + coord_flip()

#Manufacture with Type contingency table
MT_CTable<-table(cereals$Manuf, cereals$Type)
#Printing the contingency table
MT_CTable

#Calories with Manufacture overlay histogram
ggplot(cereals, aes(Calories)) + geom_histogram(aes(fill=Manuf), color="black")

#Calories with Manufacture overlay histogram normalized
ggplot(cereals, aes(Calories)) + geom_histogram(aes(fill=Manuf), color="black", position="fill")


#Binning Calories
cereals$Calories_binned<-cut(x=cereals$Calories, breaks=c(0,90,91,200), right = FALSE, labels=c("Under 90", "91 to 110", "Over 110"))

#Binned Calories with Manufacture overlay bar graph
ggplot(cereals, aes(Calories_binned)) + geom_bar(aes(fill=Manuf)) + coord_flip()