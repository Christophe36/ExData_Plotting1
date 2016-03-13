#import Data 
Data <- read.csv("Data_file",header = TRUE,sep =";",na.strings="?")
#combine and convert to POSIXlt DateTime variable 
Data$DateTime <- strptime(paste(Data$Date, Data$Time), "%d/%m/%Y %H:%M") 
DateTime <- Data$DateTime[Date == "2007-02-01"| Date == "2007-02-02"]
# plot Global 
# Note :  "jeu", "ven" and "sam" in French are equal to "thu","fri" and "sat" in English
plot(DateTime,Global,type = "l",xlab="",ylab= "Global Active Power(kilowatts)")

# plot data to a PNG file 
dev.copy(png,file = "Plot2.png")
dev.off()
