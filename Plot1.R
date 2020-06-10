
setwd("C:/Users/H/Documents/Assignment 8/")

library(data.table)

mydata<-fread("./household_power_consumption.txt", na.strings="?")


mydata$strDate <- as.Date(mydata$Date,"%d/%m/%Y")


mydata.filter<-mydata[mydata$strDate=="2007-02-01" | mydata$strDate=="2007-02-02",]
mydata.filter$Global_active_power<-as.numeric(mydata.filter$Global_active_power)
rm(mydata)


png(filename="plot1.png", width=480, height=480)
hist(mydata.filter$Global_active_power, 
     col="red", 
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")

dev.off()
