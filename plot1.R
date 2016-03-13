#import Data 
library(dplyr)
Data <- read.csv("./Exploratory data analysis/Assignement1/household_power_consumption.txt",
header = TRUE,sep =";", na.strings="?")
# plot Global_active_power subset data
Date <- as.Date(Data$Date,"%d/%m/%Y") # read data into date format
Global <- Data$Global_active_power[Date == "2007-02-01"|
                                       Date == "2007-02-02"]

          # histogram
hist(Global,main = "Global Active Power",
     xlab = "Global Active Power(kilowatts)",col = "red")
#PNG file 
    
dev.copy(png,file = "Plot1.png")
dev.off()
