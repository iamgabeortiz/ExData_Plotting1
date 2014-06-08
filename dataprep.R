dataprep <- function() {
        ## Select the column names to populate our data drame.
        col <- read.table("household_power_consumption.txt"
                , sep = ";"
                , header = FALSE
                , as.is = TRUE
                , nrows = 1
                )
        
        ## Read in the portions of the file we need.
        data <- read.table("household_power_consumption.txt"
                , sep = ";"
                , header = FALSE
                , as.is = TRUE
                , na.strings = "?"
                , col.names = as.vector(col[1,])
                , skip = 66637
                , nrows = 2880
                )
        
        ## Create the Date/Time object.
        data$DateTime <- strptime(paste(data$Date, data$Time)
                        , "%d/%m/%Y %H:%M:%S"
                        )
        
        ## Return data frame.
        return(data)
}