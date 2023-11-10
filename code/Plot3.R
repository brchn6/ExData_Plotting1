plot(Sub_metering_1 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n', col = "black")
points(Sub_metering_2 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n' ,col = "red")
points(Sub_metering_3 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n', col ="blue")


legend("topleft", legend = c(Sub_metering_1,Sub_metering_2,Sub_metering_3)
# Add the custom x-axis
custom_axis()
