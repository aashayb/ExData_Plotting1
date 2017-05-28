filename <- "household_power_consumption.txt"
data <- read.table(filename,sep = ";",header = TRUE)
## Getting required Data
data <- data[data$Date == "1/2/2007"| data$Date == "2/2/2007",]
png("Plot1.png",width = 480, height = 480)
hist(as.numeric(data$Global_active_power),main = "Global Active Power",xlab = "Global Active Power (kilowatts)", col = "red")
dev.off()