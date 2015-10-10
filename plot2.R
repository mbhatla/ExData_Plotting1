source("read_data.R")

plot2 <- function(data=NULL) {
  pwrData <- read_data()
  
  png("plot2.png", width=480, height=480)
  
  plot(pwrData$Time, pwrData$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power (kilowatts)")
  
  dev.off()
}