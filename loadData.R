loadData <- function() {
  filePowerConsumption <- "./household_power_consumption.txt"
  #read all the file
  data <- read.table(filePowerConsumption, header=TRUE, sep=";", stringsAsFactors=FALSE, na="?", dec=".")
  
  #convert type of time and date columns
  data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
  data$Date <- as.Date(data$Date, "%d/%m/%Y")
  
  #subset on requested days
  #reqData <- subset(data, Date == as.Date("1/2/2007") | Date == as.Date("2/2/2007"))
  requestedDates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  data <- subset(data, Date %in% requestedDates)
  return (data)
}