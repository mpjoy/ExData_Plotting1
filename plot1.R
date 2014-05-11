# Plot 1

colnames = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
yy <- read.csv("household_power_consumption.txt",col.names=colnames,skip=66636,nrows=2880, sep=';',na.strings='?') 

hist(yy[,3],xlab='Global Active Power (kilowatts)',ylab='Frequency', main='Global Active Power', col='red')
dev.copy(png,'plot1.png',width=480,height=480)
dev.off()
