source("loadData.R")
data <- loadData()

#convert the global active power column to numeric, to be able to display the histogram
globalActivePower <- as.numeric(data$Global_active_power)

png("plot1.png", width=480, height=480)
hist(globalActivePower, xlab = "Global Active power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()