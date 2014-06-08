## #############################################################################
# Exploratory Data Anlysis Course Project 1 / plot1.R
#
# Gabriel Ortiz / gabeortiz@icloud.com
#
# Generates plot1.png
#
## #############################################################################

## Get working directory.
wd <- getwd()

## Source dataprep function.
source(paste(wd, "/dataprep.R", sep=""))

##  Read in data.
df <- dataprep()

## Open graphics device.
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")

## Generate plot.
hist(df$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

## Close graphics device.
dev.off()