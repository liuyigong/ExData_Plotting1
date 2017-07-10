if (!file.exists("plot4.png")){
  png(file = "plot4.png",width = 480,height = 480)
  par(mfrow=c(2,2))
  plot(hpcdata$datetime,hpcdata$Global_active_power,type = "l",xlab = "",ylab = "Global Active Power")
  plot(hpcdata$datetime,hpcdata$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")
  plot(hpcdata$datetime,hpcdata$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = "")
  lines(hpcdata$datetime,hpcdata$Sub_metering_2,col="red")
  lines(hpcdata$datetime,hpcdata$Sub_metering_3,col="blue")
  legend("topright",col = c("black","red","blue"),lty = c(1,1,1),bty = "n",
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(hpcdata$datetime,hpcdata$Global_reactive_power,type = "l",xlab = "datetime",ylab = "Global_reactive_power")
  dev.off()
}