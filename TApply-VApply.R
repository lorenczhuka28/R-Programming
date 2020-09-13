
# TApply is used to apply a function over subsets of a vector 
# It is used to split data into groups based on the value of same variable, then apply function to each group

str(tapply)

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10) # 3 groups repeated 10 times
f

# x is subsetting to 3 groups und tapply calculates mean of each group
tapply(x, f, mean, simplify = TRUE) # if we simplify the result is a vector, otherwise a list
tapply(x, f, range) # calculate range (min max) for each group

table(flags$landmass) # distribution of landmass variable
table(flags$animate) # distribution of animate variable
tapply(flags$animate, flags$landmass, mean) # group by landmass, mean of animate of each group
tapply(flags$population, flags$red, summary) # group by red variable, summary of each group(dataset) of population

# VApply 
#If the result doesn't match the format you specify, vapply() will throw an error, causing the operation to stop
# VApply is faster than SApply for larger datasets
# It is helpful when writing your own functions

vapply(flags, unique, numeric(1)) # we expect each element of the result to be a numeric vector of length 1(each value)

sapply(flags, class) # result is a character vector of length 1 (each column of df flags)
vapply(flags, class, character(1)) # same result as sapply since result is character vector of length 1(each value)


