complete_data <- read.csv("household_power_consumption.txt",header=T, sep=";",
                          na.strings="?", stringsAsFactors=F)

data_req <- subset(complete_data, Date %in% c("1/2/2007","2/2/2007"))

data_req$Date <- as.Date(data_req$Date, format="%d/%m/%Y")

hist(data_req$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

png("plot1.png",width = 480, height = 480)
dev.off()

