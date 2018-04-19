>data<-file("household_power_consumption.txt")
> table <- read.table(text = grep("^[1,2]/2/2007",readLines(data),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
> png(filename = './figures/plot3.png', width = 480, height = 480, units='px')
> 
  > plot(table$DateTime, table $Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'l')
> lines(table$DateTime, table$Sub_metering_2, col = 'red')
> lines(table$DateTime, table$Sub_metering_3, col = 'blue')
> legend('topright', col = c('black', 'red', 'blue'), legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
> 
  > dev.off()