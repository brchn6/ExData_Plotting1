#assuming i have the df and df2 from the first script

#change the time into new com name TimeOnly under specific format
df2$TimeOnly <- format(df2$Time, "%H:%M:%S")

# Get unique dates
unique_dates <- unique(as.Date(df2$DateTime))

# Corresponding day names
day_names <- weekdays(unique_dates)

# Generate positions for axis labels - start of each day
day_positions <- as.POSIXct(unique_dates, format = "%Y-%m-%d")

# Plot the graph without default x-axis
plot(Global_active_power ~ DateTime, data = df2, type = "l", 
     xlab = "Day of the Week", ylab = "Global Active Power", xaxt = 'n')

# Add the custom x-axis labels at the position of the start of each day
axis(1, at = day_positions, labels = day_names, cex.axis = 0.7, las = 2)







# #change the time into new com name TimeOnly under specific format
# df2$TimeOnly <- format(df2$Time, "%H:%M:%S")

# #combine cate and time together
# df2$DateTime <- as.POSIXct(paste(df2$Date, df2$TimeOnly), format = "%Y-%m-%d %H:%M:%S") 


# #ASSIGN DATE INTO NAMES OF DAYS IN THE WEEK:
# unique_dates <- unique(df2$DateTime)

# #CREATING DF WITH THE NAMES OF THE UNIQUE DAYS + USING THE WEEKDAY FUNC TO GET THE ACTUAL NAME # nolint
# day_labels_df <- data.frame(DateTime = unique_dates, DayName = weekdays(unique_dates)) 

# # Plot the graph without the default x-axis
# plot(Global_active_power ~ DateTime, data = df2, type = "l", 
#      xlab = "", ylab = "Global Active Power", xaxt = 'n')

# # Find the positions for the axis labels (converting the unique dates to POSIXct for accurate positioning)
# day_positions <- as.POSIXct(paste(unique_dates, "00:00:00"), format = "%Y-%m-%d %H:%M:%S")

# # Add the custom x-axis labels at the position of the unique dates
# axis(1, at = day_positions, labels = DayName, cex.axis = 0.1, las = 2)
