if (!file.exists("plot2.png")){
  png(file = "plot2.png",width = 480,height = 480)
  plot(hpcdata$datetime,hpcdata$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
  dev.off()
}
