file_path <- "pngfiles\\plot3.png"
png(file_path)

plot(Sub_metering_1 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Energy sub metering", xaxt = 'n', col = "black")
points(Sub_metering_2 ~ DateTime, data = df2, type = "l", 
     xlab = "", xaxt = 'n' ,col = "red")
points(Sub_metering_3 ~ DateTime, data = df2, type = "l", 
     xlab = "", xaxt = 'n', col ="blue")


legend("topright", 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       col = c("black", "red", "blue"), 
       lty = 1)

x_range <- range(df2$DateTime)
# Calculate the positions
beginning <- x_range[1]  # start of the x-axis
end <- x_range[2]        # end of the x-axis
middle <- beginning + (end - beginning) / 2  # midpoint of the x-axis
custom_axis <- function() {
  axis(1, at = c(beginning, middle, end), labels = c("Thu", "Fri", "Sat"))
}

# Add the custom x-axis
custom_axis()

dev.off()

# Check if the file exists
if (file.exists(file_path)) {
  print("PNG file has been created")
} else {
  print("PNG file does not exist.")
}