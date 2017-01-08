#To save time this code is to be run on data_red file which should now be in your working directory if you have run Plot1.R.
#Please go back and run Plot1.R if data_red is not in your directoty.

#Create plot 4
par(mfcol = c(2,2))

with(data_red, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))

with(data_red, plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering"))
with(data_red, lines(datetime, Sub_metering_1, col = "Black", lwd = 1))
with(data_red, lines(datetime, Sub_metering_2, col = "Red", lwd = 1))
with(data_red, lines(datetime, Sub_metering_3, col = "Blue", lwd = 1))
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty=c(1,1,1), lwd=c(1,1,1), col=c(1,2,4))

with(data_red, plot(datetime, Voltage, type = "l", ylab = "Voltage"))

with(data_red, plot(datetime, Global_reactive_power, type = "l", ylab = "Global_reactive_power"))

#Ceate plot 4 for csv
dev.cur()
?Devices
png(filename = "Plot4.png", width = 480, height = 480)
par(mfcol = c(2,2))

with(data_red, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))

with(data_red, plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering"))
with(data_red, lines(datetime, Sub_metering_1, col = "Black", lwd = 1))
with(data_red, lines(datetime, Sub_metering_2, col = "Red", lwd = 1))
with(data_red, lines(datetime, Sub_metering_3, col = "Blue", lwd = 1))
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty=c(1,1,1), lwd=c(1,1,1), col=c(1,2,4))

with(data_red, plot(datetime, Voltage, type = "l", ylab = "Voltage"))

with(data_red, plot(datetime, Global_reactive_power, type = "l", ylab = "Global_reactive_power"))
dev.off()