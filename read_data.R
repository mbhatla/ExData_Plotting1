read_data <- function() {
  filename <- "household_power_consumption.txt"
  #Skipping to the first  row of the desired date and then reading only the 
  #desired number of rows
  skiplines<- grep("1/2/2007", readLines(filename))
  
  PowerData <- read.table(filename,skip=skiplines-1,nrows=2880,
             sep=";",
             colClasses=c("character", "character", rep("numeric",7)),
             na="?")
  head_names<-read.table(filename,nrows=1, header=TRUE,
                         sep=";",
                         colClasses=c(rep("character",7)))
  #inserting the variable names again
  names(PowerData)<-names(head_names)
  
  # convert date and time variables to Date/Time class
  PowerData$Time <- strptime(paste(PowerData$Date, PowerData$Time), "%d/%m/%Y %H:%M:%S")
  PowerData$Date <- as.Date(PowerData$Date, "%d/%m/%Y")
  
  return(PowerData)
  
}