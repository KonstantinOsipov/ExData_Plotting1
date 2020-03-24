setwd('ExData_Plotting1')
DF <- read.csv('data_cut.txt', header = TRUE, colClasses = c('character','character',rep('numeric',7)), na.strings = "?")
DF$Date <- as.Date(DF$Date)
png(file="figure1.png")
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = 'Global Active Power (kilowatts)')
dev.off()


