currwd <- getwd()
setwd("C:/fvillasa/Certification/Coursera/Data Science Specialization/Exploratory Data Analysis (EDA)/Program Assignments/Program Assignment 1")


# When loading the dataset into R, please consider the following:
# 1) The dataset has 2,075,259 rows and 9 columns. First calculate a rough estimate of how much memory the dataset will require in memory before reading into R. Make sure your computer has enough memory (most modern computers should be fine).
# 2) We will only be using data from the dates 2007-02-01 and 2007-02-02. One alternative is to read the data from just those dates rather than reading in the entire dataset and subsetting to those dates.
# 3) You may find it useful to convert the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions.
# 4) Note that in this dataset missing values are coded as ?.
# 5) File Structure
#    a) Date
#    b) Time
#    c) Global_active_power
#    e) Global_reactive_power
#    f) Voltage
#    g) Global_intensity
#    h) Sub_metering_1
#    i) Sub_metering_2
#    j) Sub_metering_3
# 6) Sample Data (Including header)
#    Date;Time;Global_active_power;Global_reactive_power;Voltage;Global_intensity;Sub_metering_1;Sub_metering_2;Sub_metering_3
#    16/12/2006;17:24:00;4.216;0.418;234.840;18.400;0.000;1.000;17.000
#    16/12/2006;17:25:00;5.360;0.436;233.630;23.000;0.000;1.000;16.000
#    16/12/2006;17:26:00;5.374;0.498;233.290;23.000;0.000;2.000;17.000
#    16/12/2006;17:27:00;5.388;0.502;233.740;23.000;0.000;1.000;17.000

temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
initial <- read.table(file = unz(temp, "household_power_consumption.txt"), header = TRUE, sep = ";", nrows = 100)
classes <- sapply(initial, class)
Data <- read.table(file = unz(temp, "household_power_consumption.txt"), header = TRUE, sep = ";", na.strings = "?", colClasses = classes)
unlink(temp)

Data1 <- Data[which(Data$Date == "1/2/2007" | Data$Date == "2/2/2007"),]
Data1$Time <- strptime(paste(Data1$Date, Data1$Time, sep = " "), format= "%d/%m/%Y %H:%M:%S")
Data1$Date <- as.Date(Data1$Date, format= "%d/%m/%Y")

setwd(currwd)
