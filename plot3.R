## Plot-3

## Open png device to create plot1.png
png("plot3.png")

## Plot the timeseries plot
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Sub_metering_1, xlab = "", 
                   ylab = "Energy Sub Metering", type = "l"))

lines(as.POSIXct(paste(reqdata$Date, reqdata$Time)),reqdata$Sub_metering_2, type = "l", col = "orange")
lines(as.POSIXct(paste(reqdata$Date, reqdata$Time)),reqdata$Sub_metering_3, type = "l", col = "blue")

legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("red", "orange", "blue"), lty=1:2, cex=0.8)
## Close the device png
dev.off()
