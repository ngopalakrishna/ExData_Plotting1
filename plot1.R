## Plot-1

## Open png device to create plot1.png
png("plot1.png")

## Plot the histogram
with(reqdata, hist(Global_active_power, xlab = "Global Active Power (kilowatts)", 
                   ylab = "Frequency", col = "red", main = "Global Active Power"))
## Close the device png
dev.off()