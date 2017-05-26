#Imports the data file
dataFile <- "household_power_consumption.txt"

#Reads the data file
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#Subsets the data to pull information from Jan 2nd - Feb 2nd, 2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

globalActivePower <- as.numeric(subSetData$Global_active_power)

#Creates plot.png
png("plot1.png", width=480, height=480)

#Creates a histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
