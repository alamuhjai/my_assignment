#Number of Instances: 2075259
#Number of Attributes:9

main_data<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                     nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
data <- subset(main_data, Date %in% c("1/2/2007","2/2/2007"))
head <- head(data)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
date_time <- paste(as.Date(data$Date), data$Time)
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
data$Datetime <- as.POSIXct(datetime)
png("plot2.png", width=480, height=480)
with(data, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

dev.off()