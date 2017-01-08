#To save time this code is to be run on data_red file which should now be in your working directory if you have run Plot1.R.
#Please go back and run Plot1.R if data_red is not in your directoty.


#Create plot 2
par(mfcol = c(1,1))
with(data_red, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))

#Ceate plot 2 for png
dev.cur()
?Devices
png(filename = "Plot2.png", width = 480, height = 480)
with(data_red, plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)"))
dev.off()