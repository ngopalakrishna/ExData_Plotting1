## Plot-4

## Open png device to create plot1.png
png("plot4.png")

# set the device rendition to 2 rows and 2 columns
par(mfrow = c(2,2))

# Plot-1
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Global_active_power, xlab = "", 
                   ylab = "Global Active Power (kilowatts)", type = "l"))

# Plot-2
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Voltage, type ="l", ylab = "Voltage", xlab = "datetime"))

# Plot-3
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Sub_metering_1, xlab = "", 
                   ylab = "Energy Sub Metering", type = "l"))

lines(as.POSIXct(paste(reqdata$Date, reqdata$Time)),reqdata$Sub_metering_2, type = "l", col = "orange")
lines(as.POSIXct(paste(reqdata$Date, reqdata$Time)),reqdata$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("red", "orange", "blue"), lty=1:2, cex=0.8, bty = "n")

# Plot-4
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Global_reactive_power, type ="l", xlab = "datetime"))


## Close the device png
dev.off()