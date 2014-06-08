plot1<-function(){
library(datasets)
power_consump_Feb<- read.table("./household_power_consumption.txt", sep=";", header=FALSE, dec=".", skip=66637,nrows=2880 )
temp<-paste(as.Date(power_consump_Feb$V1,"%m/%d/%Y"),power_consump_Feb$V2)
collec_timeStamps<-strptime(temp, "%Y-%d-%m %H:%M:%S")

png(filename="plot1.png",width=480,height=480)
hist(power_consump_Feb$V3,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
}
