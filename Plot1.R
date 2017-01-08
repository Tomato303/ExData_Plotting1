#Create working directory, download raw data, unzip and set working diretory
getwd()
setwd("~/Coursera_tom/Exploratory_Analysis/Week_1")
if(!file.exists("./Assignment")){dir.create("./Assignment")}
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "./Assignment/raw.zip")
unzip("./Assignment/raw.zip", exdir = "./Assignment")
setwd("~/Coursera_tom/Exploratory_Analysis/Week_1/Assignment")

#Load some packages
library(dplyr)
library(lubridate)
library(data.table)

#Read in data
data <- read.table("./household_power_consumption.txt", sep = ";", header = TRUE)

#Create datetime character variable
data$datetime <- paste(as.character(data[,1]), as.character(data[,2]))

#Format date and use to subset on 1st and 2nd Feb 2007
data$Date <- dmy(data$Date)
data_red <-data[data$Date %between% c("2007-02-01", "2007-02-02"),]

#Format all other variables and save reduced dataset
data_red$datetime <- strptime(data_red$datetime, format = "%d/%m/%Y %H:%M:%S")
options(digits = 9)
data_red$Global_active_power <- as.numeric(as.character(data_red$Global_active_power))
data_red$Global_reactive_power <- as.numeric(as.character(data_red$Global_reactive_power))
data_red$Voltage <- as.numeric(as.character(data_red$Voltage))
data_red$Global_intensity <- as.numeric(as.character(data_red$Global_intensity))
data_red$Sub_metering_1 <- as.numeric(as.character(data_red$Sub_metering_1))
data_red$Sub_metering_2 <- as.numeric(as.character(data_red$Sub_metering_2))

#Create plot 1
par(mfcol = c(1,1))
hist(data_red$Global_active_power, col = "RED", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12)

#Create plot 1 for png
dev.cur()
?Devices
png(filename = "Plot1.png", width = 480, height = 480)
hist(data_red$Global_active_power, col = "RED", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 12)
dev.off()