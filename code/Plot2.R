#Assuming thw env as the data loaded have the df and df2 from the first script

#CREATING DATETIME COL
df2$DateTime <- as.POSIXct(paste(df2$Date, df2$Time), format = "%Y-%m-%d %H:%M:%S")

#change the time into new com name TimeOnly under specific format
df2$TimeOnly <- format(df2$Time, "%H:%M:%S")

# Get unique dates
unique_dates <- unique(as.Date(df2$DateTime))

# Corresponding day names
day_names <- weekdays(unique_dates)

# Generate positions for axis labels - start of each day
day_positions <- as.POSIXct(unique_dates, format = "%Y-%m-%d")

# Add the custom x-axis labels at the position of the start of each day
# Assuming df2$DateTime is a POSIXct datetime
x_range <- range(df2$DateTime)
# Calculate the positions
beginning <- x_range[1]  # start of the x-axis
end <- x_range[2]        # end of the x-axis
middle <- beginning + (end - beginning) / 2  # midpoint of the x-axis
custom_axis <- function() {
  axis(1, at = c(beginning, middle, end), labels = c("Thu", "Fri", "Sat"))
}
#png file
png("pngfiles\\plot2.png")
# Plot without the default x-axis
plot(Global_active_power ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n')

# Add the custom x-axis
custom_axis()
dev.off()