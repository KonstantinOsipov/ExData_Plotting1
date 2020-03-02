setwd("d:/Work/2019/R")
dataset <- read.delim('household_power_consumption.txt', header = TRUE, sep = ";", nrows = 120120, colClasses = c('character','character',rep('numeric',7)), na.strings = "?")
tail(dataset)