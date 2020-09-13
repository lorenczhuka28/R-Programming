file <- read.csv("hw1_data.csv")
head(file)

colnames(file)

head(file, 2)
nrow(file)
tail(file)
tail(file, 2)

file[47, "Ozone"]
file["Ozone"] # return dataframe
file[ ,"Ozone"] # return vector


na <- is.na(file[ , "Ozone"])
na
file[ , "Ozone"][!na]  # Elements of Ozone column that are not NaN
length(file[ ,"Ozone"][na]) # Nr of NA values in Ozone column

mean(file[ , "Ozone"][!na]) # Mean of Ozone column exluding NA values

install.packages("dplyr")
library(dplyr)
filter(file, Ozone>31) # rows where Ozone > 31
filter(file, (Ozone>31 & Temp>90)) # rows where Ozone>31 and Temp>90

# Mean of solar.r column where Ozone > 31 and Temp > 90
dataf <- filter(file, (Ozone>31 & Temp>90)) # filter returns dataframe
mean(dataf[ , "Solar.R"])   
# OR 
mean(filter(file, (Ozone>31 & Temp>90))[ , "Solar.R"])

# Mean of Temp where Month = 5
mean(filter(file, Month == 6)[ , "Temp"])

h <- is.na(filter(file, Month == 5)[ , "Ozone"])
max(filter(file, Month == 5)[ , "Ozone"][!h])
