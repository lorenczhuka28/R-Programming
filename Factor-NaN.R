# FACTOR
# factor is a special type of vector, which is used to create, to represent categorical data.
# There's two types of factor, there is unordered or ordered.

f <- factor(c("yes", "yes", "no", "yes", "no"))  # baseline level is no because it comes first in alfabetically order
f

table(f)

unclass(f) # converts into new vector : yes to 2 and no to 1


# Now this may not be something that you want you might want for example a yes to be the base line level 
# and no to be the second level and then in that case you have explicitly tell r. 

f1 <- factor(c("yes", "yes", "no", "yes", "no"), levels=c("yes","no"))
f1

# Nan and NA are missing values
# NaN is also NA but NA is not a NaN.
var2 <- c(1, 2, NA, 3)
is.na(var2)
is.nan(var2)

var3 <- c(1, NaN, NA, 2)
is.na(var3)
is.nan(var3)


vekt1 <- 1:4
vekt2 <- 2:3
class(vekt1 + vekt2)


xx <- rnorm(1000)  # vector with 1000 normal distribution values
yy <- rep(NA, 1000) # vector wit 1000 NA values
dt <- sample(c(xx, yy), 100) # select 100 random values from 2000
na <- is.na(dt)
sum(na) # numbers of na values (TRUE is counted as 1)

0/0 # NaN value
Inf - Inf # Nan Value
1 / Inf # 0   
