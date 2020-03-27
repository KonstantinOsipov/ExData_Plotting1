#setwd("d:/Work/2019/R")
setwd('ExData_Plotting1')
DF <- read.csv('data_cut.txt', header = TRUE, colClasses = c('character','character',rep('numeric',7)), na.strings = "?")
DF$DateTime <- paste(DF$Date, DF$Time)
DF$DateTime <- as.POSIXct(DF$DateTime)
#Weekdays is in Russian due to Russian localization.
#png(file="figure3.png", type = "cairo", bg = "transparent")
par(mfrow=c(2,2))
plot(DF$DateTime, DF$Global_active_power, type = 'l', ylab = 'Global active power', xlab = "")
plot(DF$DateTime, DF$Voltage, type = 'l', ylab = 'Voltage', xlab = "datetime")
plot(DF$DateTime, DF$Global_reactive_power, type = 'l', ylab = 'Global_reactive_power', xlab = "datetime")
plot(DF$DateTime, DF$Sub_metering_1, type = 'l', ylab = 'Energy sub metering', xlab = "")
lines(DF$DateTime, DF$Sub_metering_2, type = 'l', col = "red")
lines(DF$DateTime, DF$Sub_metering_3, type = 'l', col = "blue")
legend("topright", legend=colnames(DF)[c(7:9)], col=c("blue","red","black"), lty=c(1,1,1))
dev.off()


