library(magrittr)

data<-read.table("C:/Users/jgomez/Desktop/Cursos 2024/household_power_consumption.txt", header = T, sep = ";") 
data$Global_active_power<-as.numeric(data$Global_active_power)
data<-data %>% subset(Date=="1/2/2007"| Date=="2/2/2007")


plot1<-hist(data$Global_active_power , breaks = 12, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")


