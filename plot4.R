# Plot 4

colnames = c("Date", "Time", "Global_active_power", "Global_reactive_power", 
"Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", 
"Sub_metering_3")
yy <- read.csv("household_power_consumption.txt",col.names=colnames,skip=66636,nrows=2880, sep=';',na.strings='?') 

datetime=paste(yy$Date,yy$Time)
datetime=strptime(datetime,'%d/%m/%Y %H:%M:%S')

par(mfrow = c(2,2),cex=.65)
plot(datetime,yy[,3],'l', ylab='Global Active Power',xlab='')
plot(datetime,yy[,5],'l', ylab='Voltage')
plot(datetime,yy[,7],'l', ylab='Energy sub metering',xlab='')
lines(datetime,yy[,8],col='red')
lines(datetime,yy[,9],col='blue')
legend('topright',c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),col=c('black','red','blue'),lty=1,bty='n')
plot(datetime,yy[,4],'l', ylab='Global_reactive_power')

dev.copy(png,'plot4.png',width=480,height=480)
dev.off()

