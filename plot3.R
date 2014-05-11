# Plot 3

colnames = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
"Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
"Sub_metering_3")
yy <- read.csv("household_power_consumption.txt",col.names=colnames,skip=66636,nrows=2880, sep=';',na.strings='?') 

datetime=paste(yy$Date,yy$Time)
datetime=strptime(datetime,'%d/%m/%Y %H:%M:%S')

plot(datetime,yy[,7],'l', ylab='Energy sub metering',xlab='')
lines(datetime,yy[,8],col='red')
lines(datetime,yy[,9],col='blue')
legend('topright',c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c('black','red','blue'),lty=1)
dev.copy(png,'plot3.png',width=480,height=480)
dev.off()

