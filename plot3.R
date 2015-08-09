#Plot 3
png(filename = "plot3.png", width = 480, height = 480, units = "px") 
par(mfrow = c(1,1), mar = c(4, 4, 2, 1))
plot(Data1$Time, Data1$Sub_metering_1, type = "n", xlab="", ylab="Energy sub metering")
lines(Data1$Time, Data1$Sub_metering_1, col="black", type = "l")
lines(Data1$Time, Data1$Sub_metering_2, col="red", type = "l")
lines(Data1$Time, Data1$Sub_metering_3, col="blue", type = "l")
legend("topright", pch = "___", col = c("black", "blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()