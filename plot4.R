source("read_data.R")
#Plot 4
plot4 <- function(data=NULL) {
  pwrData <- read_data()
  
  png("plot4.png", width=480, height=480)
  
  par(mfrow=c(2,2))
  
  plot(pwrData$Time, pwrData$Global_active_power,
       type="l",
       xlab="",
       ylab="Global Active Power")
 
  
  plot(pwrData$Time, pwrData$Voltage, type="l",
       xlab="datetime", ylab="Voltage")

  
  plot(pwrData$Time, pwrData$Sub_metering_1, type="l", col="black",
       xlab="", ylab="Energy sub metering")
  lines(pwrData$Time, pwrData$Sub_metering_2, col="red")
  lines(pwrData$Time, pwrData$Sub_metering_3, col="blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1,
         box.lwd=0)
 
  plot(pwrData$Time, pwrData$Global_reactive_power, type="n",
       xlab="datetime", ylab="Global_reactive_power")
  lines(pwrData$Time, pwrData$Global_reactive_power)
  
  
  dev.off()
}