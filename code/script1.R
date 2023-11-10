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
#subsetting the big df into df that holds onky dates from the 01/02/2007 - 02/02/2007 # nolint
df<- subset(df , Date >= as.Date("01/02/2007") & Date <= as.Date("02/02/2007"))
#plot the hist plot
hist(df$Global_active_power, col = "red", xlim= c(0,6), main =" Global Active Power" , xlab= "Global active power (kilowatt)")
