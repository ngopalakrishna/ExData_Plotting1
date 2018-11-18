library(lubridate)

## Download the data and extract and store in the file - household_power_consumption.txt

rawdata <- read.table("household_power_consumption.txt", na.strings = "?",header = TRUE, sep = ";", skipNul = TRUE)

rawdata$Date <- dmy(rawdata$Date)

## Subset the required data for dates 1st Feb 2007 and 2nd Feb 2007
reqdata <- subset(rawdata, rawdata$Date == as.Date("2007-2-1") | rawdata$Date == as.Date("2007-2-2"))

