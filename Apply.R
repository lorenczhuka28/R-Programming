
# apply is used to evaluate a function (often an anonymous function) over the margins of array
# it is mostly used to apply a function to the rows or columns of a matrix, can be used with general arrays

str(apply)

x <- matrix(rnorm(200), 20, 10)
apply(x, 2, mean) # find mean of each column of matrix

apply(x, 1, sum) # find sum of each row of matrix

# For sums and means of matrix dimensions, there are some shortcut functions (they are faster)
# rowSums = apply(x, 1, sum)
# rowMeans = apply(x, 1, mean)
# colSums = apply(x, 2, sum)
# colMeans = apply(x, 2, mean)

colSums(x)
colMeans(x)

# calculate for each row of matrx the 25% and 75% quartile
apply(x, 1, quantile, probs = c(0.25, 0.75))

a <- array(rnorm(2 * 2 * 10), c(2, 2, 10)) # array with dimensions 2, 2, 10
apply(a, c(1,2), mean) # collapse the 3d dimension

rowMeans(a, dims=2)
