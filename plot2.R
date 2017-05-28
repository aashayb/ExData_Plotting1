filename <- "household_power_consumption.txt"
data <- read.table(filename,sep = ";",header = TRUE)
## Getting required Data
data <- data[data$Date == "1/2/2007"| data$Date == "2/2/2007",]
##getting the Date and time as a date function
date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S") 
png("Plot2.png",width = 480, height = 480)
plot(date,as.numeric(data$Global_active_power),
     ylab = "Global Active Power (kilowatts)",xlab="",type="l")
dev.off()