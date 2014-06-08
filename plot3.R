## Get working directory.
wd <- getwd()

## Source dataprep function.
source(paste(wd, "/dataprep.R", sep=""))

##  Read in data.
df <- dataprep()

## Open graphics device.
png(filename = "plot3.png", width = 480, height = 480, units = "px", bg = "transparent")

## Generate plot.
plot(df$DateTime, df$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df$DateTime, df$Sub_metering_2, type = "l", col = "red")
lines(df$DateTime, df$Sub_metering_3, type = "l", col = "blue")

## Generate legend.
cols = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
colors = c("black", "blue", "red")
legend("topright", lty = 1, lwd = 1, col = colors, legend = cols)

## Close graphics device.
dev.off()