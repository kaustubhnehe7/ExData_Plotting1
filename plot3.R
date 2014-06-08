plot3<-function(){
library(datasets)

power_consump_Feb<- read.table("./household_power_consumption.txt", sep=";", header=FALSE, dec=".", skip=66637,nrows=2880 )
temp<-paste(as.Date(power_consump_Feb$V1,"%m/%d/%Y"),power_consump_Feb$V2)
collec_timeStamps<-strptime(temp, "%Y-%d-%m %H:%M:%S")

png(filename="plot3.png",width=480,height=480)
plot(collec_timeStamps,power_consump_Feb$V7,xlab="",ylab="Energy sub metering",lty="solid",type="l")
lines(collec_timeStamps,power_consump_Feb$V8,type="l",col="red")
lines(collec_timeStamps,power_consump_Feb$V9,type="l",col="blue")
legend("topright",cex=0.95, lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
}
