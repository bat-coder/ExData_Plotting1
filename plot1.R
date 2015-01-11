hpc_data<-read.csv(file="household_power_consumption.txt", header=FALSE, sep=";", na.string="?", skip=1)
colnames(hpc_data)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2", "Sub_metering_3")
hpc_data$Date<-as.Date(as.character(hpc_data$Date), "%d/%m/%Y")
first_date<-as.Date("2007-02-01")
second_date<-as.Date("2007-02-02")
hpc_data_subset<-hpc_data[hpc_data$Date>=first_date & hpc_data$Date<=second_date,]
png(file="plot1.png", width=480, height=480,units="px")
hist(hpc_data_subset$Global_active_power, xlab="Global Active Power (kilowatts)", col=c("red"), main="Global Active Power")
dev.off()