library(hms)

# Import df
df <- read.table('Data\\household_power_consumption.txt', sep = ';', header = TRUE)

# Reclass the Date col on the original df
df$Date <- as.Date(df$Date, format = "%d/%m/%Y")

# Subsetting the big df into df2 that holds only dates from 01/02/2007 to 02/02/2007
df2 <- subset(df, Date >= as.Date("01/02/2007", format = "%d/%m/%Y") & Date <= as.Date("02/02/2007", format = "%d/%m/%Y"))

#re-class the Time col using hms
df2$Time <- as.hms(strptime(df2$Time, format = "%H:%M:%S"))

#re-class the Global_active_power col
df2$Global_active_power <- as.numeric(as.character(df2$Global_active_power)) 

#disable the scientific way of writing numbers
options(scipen = 999)

#plot the hist plot
hist(df2$Global_active_power, col = "red", xlim= c(0,6),ylim= c(0,1200), main = " Global Active Power") # nolint