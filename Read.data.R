setwd("d:/Work/2019/R")
#We will use only data from the dates 2007-02-01 and 2007-02-02. 
dataset <- read.delim('household_power_consumption.txt', header = TRUE, sep = ";", nrows = 120120, colClasses = c('character','character',rep('numeric',7)), na.strings = "?")
tail(dataset)
# then let's convert the Date and Time columns to Date/Time classes in R using the strptime() and as.Date() functions.
dataset$Date <- as.Date(dataset$Date, format = "%d/%m/%Y")
data <- (dataset[((dataset$Date>="2007-02-01") & (dataset$Date<="2007-02-02")) ,])
hist(data$Global_active_power, col="red", main = "Global Active Power", xlab = 'Global Active Power (kilowatts)')
