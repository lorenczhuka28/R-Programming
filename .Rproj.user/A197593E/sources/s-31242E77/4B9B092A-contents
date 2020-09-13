
# lapply function takes as arguments a list and a function and applies the function to each element of the list and returns a list
x <- list(a = 1:5, b = rnorm(10))
lapply(x, mean)

y <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1) , d = rnorm(100, 5))
lapply(y , mean)

z <- 1:4
lapply(z, runif) # runif function -> Normal Distribution

p <- 1:4
lapply(p, runif, min = 0, max = 10)


# lapply function with anonymous function (anonymous function are functions without name)
mat <- list(a = matrix(1:4, 2, 2), b = matrix(1:6, 3, 2))
mat

lapply(mat, function(X) X[ , 1])

# sapply simplifies the result of lapply

t <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
lapply(t, mean)

sapply(t, mean)
mean(t) # error


# flag is dataframe
res <- lapply(flags, class) # find class of each column of dataframe
class(res) # list
as.character(res) # convert from list to character vector

cls_vect <- sapply(flags, class)
class(cls_vect) # character (vector)

sum(flags$orange) # total nr of countries with the color orange in their flag (1 indicates country has the color in his flag, 0 otherwise)
flag_colors <- flags[ , 11:17] # dataframe with columns from 11-17
lapply(flag_colors, sum) # sum of each column in flag_colors

unique(c(3,4,5,5,6,6)) # unique function returns vector with only unique elements
unique_vals <- lapply(flags, unique) # show unique values in each column in flags df
# unique vals is a list with elements where each element is a vector of different(unique) length

sapply(unique_vals, length) # length of each column in unique_vals
sapply(flags, unique) # output same as lapply (result can not be simplified because list has element with different lengths)

lapply(unique_vals, function(elem) elem[2]) # vector with 2nd element of each element(vector) of the list