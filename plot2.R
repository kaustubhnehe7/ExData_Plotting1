plot2<-function(){
library(datasets)
power_consump_Feb<- read.table("./household_power_consumption.txt", sep=";", header=FALSE, dec=".", skip=66637,nrows=2880 )
temp<-paste(as.Date(power_consump_Feb$V1,"%m/%d/%Y"),power_consump_Feb$V2)
collec_timeStamps<-strptime(temp, "%Y-%d-%m %H:%M:%S")

png(filename="plot2.png",width=480,height=480)
plot(collec_timeStamps,power_consump_Feb$V3,xlab="",ylab="Global Active Power (kilowatts)",lty="solid",type="l")
dev.off()
}

