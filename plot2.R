source("loadData.R")
data <- loadData()

#convert the global active power column to numeric, to be able to display the histogram
globalActivePower <- as.numeric(data$Global_active_power)

png("plot2.png", width=480, height=480)

plot(data$Time, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()