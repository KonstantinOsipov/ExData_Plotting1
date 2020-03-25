#setwd("d:/Work/2019/R")
setwd('ExData_Plotting1')
DF <- read.csv('data_cut.txt', header = TRUE, colClasses = c('character','character',rep('numeric',7)), na.strings = "?")
DF$DateTime <- paste(DF$Date, DF$Time)
DF$DateTime <- as.POSIXct(DF$DateTime)
#Weekdays is in Russian due to Russian localization.
png(file="figure2.png", type = "cairo", bg = "transparent")
plot(DF$Global_active_power ~ DF$DateTime, type="l", ylab = 'Global Active Power (kilowatts)', xlab = "")
dev.off()


