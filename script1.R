#import df
df <- read.table('C:\\Users\\barc\\Dropbox (Weizmann Institute)\\MSc_Weizmann\\Learning_stuff\\R_coursera\\Peer-graded Assignment Course Project 1\\exdata_data_household_power_consumption\\household_power_consumption.txt',sep=';', header=TRUE)
#re-class the Date col
df$Date<- as.Date(df$Date)
#re-class the Time col
df$Time <- strptime(df$Time, "%H:%M:%S")
#re-class the Global_active_power col
df$Global_active_power <- as.numeric(df$Global_active_power)
#plot the hist plot
hist(df$Global_active_power,
col = "red", xlim= c(0,6), 
main =" Global Active Power", 
nclass = )

