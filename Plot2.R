#Imports the data file
dataFile <- "household_power_consumption.txt"

#Reads the data file
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subsets the data to pull information needed
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(subSetData$Global_active_power)

#Creates plot2.png
png("plot2.png", width=480, height=480)

#Plots Datetime VS GlobalActivePower
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
