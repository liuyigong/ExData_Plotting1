if (!file.exists("plot1.png")){
  png(file = "plot1.png",width = 480,height = 480)
  hist(hpcdata$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",
       main = "Global Active Power")
  dev.off()
}
  

