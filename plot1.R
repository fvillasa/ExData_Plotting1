#Plot 1
png(filename = "plot1.png", width = 480, height = 480, units = "px") 
par(mfrow = c(1,1), mar = c(4, 4, 2, 1))
hist(Data1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()