if (!file.exists("household_power_consumption.txt")){
  fileUrl<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl,"./hpc.zip")
  unzip("hpc.zip")
}
filecon<-file("household_power_consumption.txt")
hpcdata<-read.table(text=grep("^[12]/2/2007",readLines(filecon),value = T),sep=";",na.strings = "?",
                    col.names = names(read.table("household_power_consumption.txt",sep = ";",header = T,nrows = 1)))
close(filecon)
rm(filecon)
hpcdata$datetime<-paste(as.character(hpcdata$Date),as.character(hpcdata$Time))
hpcdata$datetime<-strptime(as.character(hpcdata$datetime),"%d/%m/%Y %H:%M:%S")

