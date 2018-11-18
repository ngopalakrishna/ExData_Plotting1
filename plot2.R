## Plot-2

## Open png device to create plot1.png
png("plot2.png")

## Plot the timeseries plot
with(reqdata, plot(as.POSIXct(paste(Date, Time)), Global_active_power, xlab = "", 
                   ylab = "Global Active Power (kilowatts)", type = "l"))

## Close the device png
dev.off()