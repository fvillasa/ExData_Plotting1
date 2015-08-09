#Plot 1
par(mfrow = c(1,1), mar = c(4, 4, 2, 1))
hist(Data1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png")
dev.off()