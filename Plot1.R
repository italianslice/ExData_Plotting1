data_full <- read.csv("./Work/Data/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"') ##Here is where we import the TXT file and prepare it for analysis
data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02")) ##Now, I subset the data for show Data between 2007-02-01 and 2007-02-02
rm(data_full)
datetime <- paste(as.Date(data$Date), data$Time) ##Now we convert the dates
data$Datetime <- as.POSIXct(datetime)
##Create the Plot of Global Active Power
hist(data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480) ##Save the file
dev.off()