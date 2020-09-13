# Mapply is a multivariate apply of sorts which applies a function in parallel over a set of arguments

str(mapply)

li <- list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
li

mapply(rep, 1:4, 4:1) # list with 4 ones, 3 twos, 2 threes and 1 four

noise <- function(n, mean, sd){
  rnorm(n, mean, sd)
}

noise(4, 1, 2)

noise(1:5, 1:5, 2)

# 1 normal ds value with mean 1, 2 normal ds values with mean 2 , 3 normal ds values with mean 3, 4 normal ds values with mean 4, 5 normal ds values with mean 5, standard deviation is same (2)
mapply(noise, 1:5, 1:5, 2) 
