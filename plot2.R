# Plot 2

colnames = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
"Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
"Sub_metering_3")
yy <- read.csv("household_power_consumption.txt",col.names=colnames,skip=66636,nrows=2880, sep=';',na.strings='?') 

datetime=paste(yy$Date,yy$Time)
datetime=strptime(datetime,'%d/%m/%Y %H:%M:%S')
plot(datetime,yy[,3],'l', ylab='Global Active Power (kilowatts)',xlab='')
dev.copy(png,'plot2.png',width=480,height=480)
dev.off()
