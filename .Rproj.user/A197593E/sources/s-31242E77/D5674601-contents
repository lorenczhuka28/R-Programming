
# Split takes a vector(or list or dataframe) and splits it into groups determined by a factor or list of factors and returns a list

str(split)

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3,10)
split(x, f)

lapply(split(x,f), mean) # same as tapply function

library(datasets)
head(airquality)

# find mean of Ozone, Solar.R and Wind in each group grouping the df by Month
s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[ , c("Ozone", "Solar.R", "Wind")])) # output is a list where each element is a vector of length 3

sapply(s, function(x) colMeans(x[ , c("Ozone", "Solar.R", "Wind")])) # output is a matrix (result will be simplified)

sapply(s, function(x) colMeans(x[ , c("Ozone", "Solar.R", "Wind")], na.rm = TRUE)) # remove NA values

s <- split(airquality, airquality$Month, airquality$Day) # airquality dataframe group by Month,Day
lapply(s, function(x) colMeans(x[ , c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))

# Splitting(Grouping) on more than one level(variable)

s <- split(airquality, airquality$Month, airquality$Day) # airquality dataframe group by Month,Day
lapply(s, function(x) colMeans(x[ , c("Ozone", "Solar.R", "Wind")], na.rm = TRUE))


var <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
f1
interaction(f1, f2)

str(split(x , list(f1,f2)))

str(split(x , list(f1,f2), drop=TRUE)) # drop the empty levels
