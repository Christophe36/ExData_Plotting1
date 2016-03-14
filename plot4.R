# read data
# assuming that data frame, so called "Data" is already present in your workspace
#      Data subsets
# Global : Global_active_power variable 

 Voltage <- Data$Voltage[Date == "2007-02-01"| Date == "2007-02-02"]
 Global_rp <- Data$Global_reactive_power[Date == "2007-02-01"| Date == "2007-02-02"] 
 
 #multiple plot 
par(mfrow = c(2,2))
plot(DateTime,Global,type = "l",xlab= "",ylab = "Global Active Power(kilowatts)")

plot(DateTime,Voltage,xlab = "datetime",ylab = "voltage",type= "l")

plot(DateTime,Sub_met_1,type ="l", xlab="",ylab="Energy sub metering",col="black")
lines(DateTime,Sub_met_2,type ="l",xlab ="" ,ylab ="", col="red")
lines(DateTime,Sub_met_3,type = "l",xlab ="" , ylab = "",col="blue")
legend("topright",col= c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 2)

plot(DateTime,Global_rp,type = "l",xlab= "datetime",ylab = "Global_reactive_power(kilowatts)")


# plot data to a PNG file 
dev.copy(png,file = "Plot4.png",height= 480,width = 480,units = 'px')
dev.off()
