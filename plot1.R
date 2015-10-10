source("read_data.R")

plot1 <- function(data=NULL) {
  pwrData <- read_data()
  
  png("plot1.png", width=480, height=480)
  
  hist(pwrData$Global_active_power,
       main="Global Active Power",
       xlab="Global Active Power (kilowatts)",
       ylab="Frequency",
       col="red")
  
  dev.off()
}
