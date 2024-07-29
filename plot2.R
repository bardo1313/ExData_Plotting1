library(magrittr)

data<-read.table("C:/Users/jgomez/Desktop/Cursos 2024/household_power_consumption.txt", header = T, sep = ";") 
data$Global_active_power<-as.numeric(data$Global_active_power)
data<-data %>% subset(Date=="1/2/2007"| Date=="2/2/2007")



data$Date <- strptime(data$Date, format = "%d/%m/%Y")
data$dia<- weekdays(data$Date)


png(filename ="C:/Users/jgomez/Desktop/Cursos 2024/plot2.png" )

plot2<-plot(data$Global_active_power,  type="l", xaxt = "n", xlab = "", ylab ="Global active power (kilowats)" )
axis(1, at = c(0, 1500, 2800), labels = c("Thu", "Fri", "Sat"))

dev.off()

