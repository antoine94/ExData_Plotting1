source("loadData.R")
data <- loadData()

#convert the global active power column to numeric, to be able to display the histogram
globalActivePower <- as.numeric(data$Global_active_power)

subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(data$Time, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(data$Time, subMetering2, type="l", col="red")
lines(data$Time, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

dev.off()