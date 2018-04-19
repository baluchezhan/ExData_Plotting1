> data<-file("household_power_consumption.txt")
> table <- read.table(text = grep("^[1,2]/2/2007",readLines(data),value=TRUE), sep = ';', col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
> #plot 2
  > table$Date <- as.Date(table$Date, format = '%d/%m/%Y')
  > table$DateTime <- as.POSIXct(paste(table $Date, table $Time))
  > png(filename = './figures/plot2.png', width = 480, height = 480, units='px')
  > # plot figure
    > 
    > plot(table$DateTime, table$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
  > dev.off()
  