# Vectorized operations

vector1 <- 1:4; vector2 <- 6:9
vector1 + vector2
vector1 > 2
vector2 == 8
vector1 * vector2
vector1 / vector2

myvec <- v1 * 2 + 100 # vector 
sqrt(myvec) # vector


ma <- matrix(1:4 , 2, 2); mx <- matrix(rep(10,4), 2, 2)  # mx is a matrix with all elements 10
ma * mx # elemeny by element multiplication
ma / mx

ma %*% mx # true matrix multiplication

mir1 <- 1:4
mir2 <- 2
mir1 + mir2