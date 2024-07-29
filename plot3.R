library(magrittr)
library(dplyr)
data<-read.table("C:/Users/jgomez/Desktop/Cursos 2024/household_power_consumption.txt", header = T, sep = ";") 
data$Global_active_power<-as.numeric(data$Global_active_power)
data<-data %>% subset(Date=="1/2/2007"| Date=="2/2/2007")



data$Date <- strptime(data$Date, format = "%d/%m/%Y")
data$dia<- weekdays(data$Date)
data <- data %>% select(Sub_metering_1, Sub_metering_2, Sub_metering_3)

png(filename ="C:/Users/jgomez/Desktop/Cursos 2024/plot3.png" )

plot3<- plot(data$Sub_metering_1, type="l", xaxt = "n", xlab = "", ylab ="Energy sub metering" )
axis(1, at = c(0, 1500, 2800), labels = c("Thu", "Fri", "Sat"))
lines(data$Sub_metering_1)
lines(data$Sub_metering_2,col="red")
lines(data$Sub_metering_3,col="blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 2, col = c("black", "red", "blue"))

dev.off()



