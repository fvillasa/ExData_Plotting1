#Plot 2
par(mfrow = c(1,1), mar = c(4, 4, 2, 1))
plot(Data1$Time, Data1$Global_active_power, type = "n", xlab="", ylab="Global Active Power (kilowatts)" )
lines(Data1$Time, Data1$Global_active_power, type = "l")
dev.copy(png, file = "plot2.png")
dev.off()
