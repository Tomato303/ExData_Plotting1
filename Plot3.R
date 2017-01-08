#To save time this code is to be run on data_red file which should now be in your working directory if you have run Plot1.R.
#Please go back and run Plot1.R if data_red is not in your directoty.

#Create plot 3
par(mfcol = c(1,1))
with(data_red, plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering"))
with(data_red, lines(datetime, Sub_metering_1, col = "Black", lwd = 1))
with(data_red, lines(datetime, Sub_metering_2, col = "Red", lwd = 1))
with(data_red, lines(datetime, Sub_metering_3, col = "Blue", lwd = 1))
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c(1,2,4))

#Ceate plot 3 for csv
dev.cur()
?Devices
png(filename = "Plot3.png", width = 480, height = 480)
with(data_red, plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering"))
with(data_red, lines(datetime, Sub_metering_1, col = "Black", lwd = 1))
with(data_red, lines(datetime, Sub_metering_2, col = "Red", lwd = 1))
with(data_red, lines(datetime, Sub_metering_3, col = "Blue", lwd = 1))
legend ("topright", pch = 3, col = C("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
legend ("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), lwd=c(1,1,1), col=c(1,2,4))
dev.off()