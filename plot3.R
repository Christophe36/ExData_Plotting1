# read data
# assuming that data frame, so called "Data" is already present in your workspace

Sub_met_1 <- Data$Sub_metering_1[Date == "2007-02-01"| Date == "2007-02-02"]
Sub_met_2 <- Data$Sub_metering_2[Date == "2007-02-01"| Date == "2007-02-02"]
Sub_met_3 <- Data$Sub_metering_3[Date == "2007-02-01"| Date == "2007-02-02"]

# plot DateTime vs these subsets data  
plot(DateTime,Sub_met_1,type ="l", xlab="",ylab="Energy sub metering",col="black")
lines(DateTime,Sub_met_2,type ="l",xlab ="" ,ylab ="", col="red")
lines(DateTime,Sub_met_3,type = "l",xlab ="" , ylab = "",col="blue")
legend("topright",col= c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd = 2)

# plot data to a PNG file 

dev.copy(png,file = "Plot3.png",height= 480,width = 480,units = 'px')
dev.off()
 
