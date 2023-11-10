plot(Sub_metering_1 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n', col = "black")
plot(Sub_metering_2 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n' ,col = "red")
plot(Sub_metering_3 ~ DateTime, data = df2, type = "l", 
     xlab = "", ylab = "Global Active Power", xaxt = 'n')


legend()
# Add the custom x-axis
custom_axis()
