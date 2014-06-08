## #############################################################################
# Exploratory Data Anlysis Course Project 1 / plot4.R
#
# Gabriel Ortiz / gabeortiz@icloud.com
#
# Generates plot4.png
#
## #############################################################################

## Get working directory.
wd <- getwd()

## Source dataprep function.
source(paste(wd, "/dataprep.R", sep=""))

##  Read in data.
df <- dataprep()

## Open graphics device.
png(filename = "plot4.png", width = 480, height = 480, units = "px", bg = "transparent")

## Generate plots.
par (mfrow = c(2, 2))
with(df, {
        plot(DateTime, Global_active_power, xlab = "", ylab = "Global Active Power", type = "l")
        plot(DateTime, Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
        
        plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
        lines(DateTime, Sub_metering_2, type = "l", col = "red")
        lines(DateTime, Sub_metering_3, type = "l", col = "blue")
        cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
        colors = c("black", "blue", "red")
        legend("topright", lty = 1, lwd = 1, col = colors, legend = cols, bty = "n")
        
        plot(DateTime, Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
        }
)

## Close graphics device.
dev.off()