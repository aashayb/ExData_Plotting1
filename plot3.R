filename <- "household_power_consumption.txt"
data <- read.table(filename,sep = ";",header = TRUE)
## Getting required Data
data <- data[data$Date == "1/2/2007"| data$Date == "2/2/2007",]
##getting the Date and time as a date function
date <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S") 
png("Plot3.png",width = 480, height = 480)
plot(date,(data$Sub_metering_1),
     ylab = "Energy Submetering",xlab="",type="l")
lines(date,(data$Sub_metering_2),type="l",col="red")
lines(date,(data$Sub_metering_3),type="l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
      lwd=2, lty = 1,col=c("black", "red", "blue"))
dev.off()