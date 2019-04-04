complete_data <- read.csv("household_power_consumption.txt",header=T, sep=";",
                          na.strings="?", stringsAsFactors=F)

data_req <- subset(complete_data, Date %in% c("1/2/2007","2/2/2007"))

data_req$Date <- as.Date(data_req$Date, format="%d/%m/%Y")

date_time<-paste(as.Date(data_req$Date),data_req$Time)

data_req$Datetime<-as.POSIXct(date_time)

with(data_req,
     {
       plot(Global_active_power~Datetime,type="l" ,xlab="",ylab="Global Active Power (kilowatts)")
     }
     
)

dev.copy(png, file="plot2.png",height=480,width=480)

dev.off()

