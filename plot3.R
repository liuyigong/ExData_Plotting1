if (!file.exists("plot3.png")){
  png(file = "plot3.png",width = 480,height = 480)
  plot(hpcdata$datetime,hpcdata$Sub_metering_1,type = "l",ylab = "Energy sub metering",xlab = "")
  lines(hpcdata$datetime,hpcdata$Sub_metering_2,col="red")
  lines(hpcdata$datetime,hpcdata$Sub_metering_3,col="blue")
  legend("topright",col = c("black","red","blue"),lty = c(1,1,1),
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
}