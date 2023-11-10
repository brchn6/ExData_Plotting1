#import df
#df <- read.table('Data\\household_power_consumption.txt',sep=';', header=TRUE)
#re-class the Date col
as.Date(df$Date, format="%d/%m/%Y")
#re-class the Time col
df$Time <- strptime(df$Time, format = "%H:%M:%S")
#re-class the Global_active_power col
df$Global_active_power <- as.numeric(as.character(df$Global_active_power)) 
#disable the scientific way of writing numbers
options(scipen = 999) 
#plot the hist plot
hist(df$Global_active_power, col = "red", xlim= c(0,6), main =" Global Active Power")