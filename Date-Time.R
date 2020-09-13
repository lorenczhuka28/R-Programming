#dates are stored as the number of days since 1970-01-01 and times are stored as either the number of
#seconds since 1970-01-01 (for 'POSIXct') or a list of seconds, minutes, hours, etc. (for 'POSIXlt').

# Dates are stored as object of Date class

date <- as.Date("1970-01-01")
date
class(data)
unclass(date) # nr of days since 01.01.1970
weekdays(date) # returns day of the week
months(date) # returns months of date
quarters(date) # return quarter of the year (Q1-Q4)

unclass(as.Date("1970-01-02"))

date1 <- as.Date("1972-01-01")
unclass(date1) # nr of days since 01.01.1970


# Times are represented using POSIXct and POSIXlt
# POSIXct is a large number (nr sec since 01.01.1970) and stores time in something like a dataframe
# POSIXlt is a list and stores information like day of the week, day of the year, month, day of the month

time <- Sys.time()
time
class(time) # POSIXct and POSIXlt


# Times can be converted to POSIXct and POSIXlt using as.POSIXct and as.POSIXlt functions
p1 <- as.POSIXlt(time)
names(unclass(p1))
unclass(p1)  # list where name = sec,min,yday,mday and their corresponding values
str(unclass(p1))
p1$mday
p1$yday
p1$min
months(p1) # returns month


time1 <- Sys.time()
p2 <- as.POSIXct(time1)
p2
unclass(p2)  # nr sec since 01.01.1970
p2$min # error because POSIXct does not have sec,min,hours etc like POSIXlt


# Convert string date into date POSIXct and POSIXlt
datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
converted <- strptime(datestring, "%B %d, %Y %H:%M")
converted
class(converted)
# check the help page for strptime

date_object <- as.Date("2012-01-01") # date object
posixct_object <- strptime("9 Jan 2011 11:31:45", "%d %b %Y %H:%M:%S") # POSIXct object
date_object - posixct_object # dates can not be substracted because their have different classes
date_object <- as.POSIXct(date_object)
date_object - posixct_object

mydate1 <- as.Date("2012-03-01"); mydate2 <- as.Date("2012-02-28")
mydate1 - mydate2

date1 <- as.POSIXct("2012-10-25 01:00:00")
date2 <- as.POSIXct("2012-10-25 06:00:00", tz="GMT")
date1 - date2
date2 - date1

Sys.time() > time # true
Systime() - time
difftime(Sys.time(), time, units = "days") # nr of days that has passed since we created time