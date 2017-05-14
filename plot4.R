source("loadData.R")
data <- loadData()

#convert the global active power column to numeric, to be able to display the histogram
globalActivePower <- as.numeric(data$Global_active_power)

subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

globalReactivePower <- as.numeric(data$Global_reactive_power)
voltage <- as.numeric(data$Voltage)

png("plot4.png", width=480, height=480)

#create a table to display the 4 plots
par(mfrow = c(2, 2)) 
#first plot
plot(data$Time, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

#second plot
plot(data$Time, voltage, type="l", xlab="datetime", ylab="Voltage")

#third plot
plot(data$Time, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(data$Time, subMetering2, type="l", col="red")
lines(data$Time, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

#fourth plot
plot(data$Time, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()