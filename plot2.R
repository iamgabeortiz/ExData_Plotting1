## #############################################################################
# Exploratory Data Anlysis Course Project 1 / plot2.R
#
# Gabriel Ortiz / gabeortiz@icloud.com
#
# Generates plot2.png
#
## #############################################################################

## Get working directory.
wd <- getwd()

## Source dataprep function.
source(paste(wd, "/dataprep.R", sep=""))

##  Read in data.
df <- dataprep()

## Open graphics device.
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")

## Generate plot.
plot(df$DateTime, df$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")

## Close graphics device.
dev.off()