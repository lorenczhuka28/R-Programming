
# linear model y = 0.5 + 2*x + e where b0 = 0.5 and b1 = 2

# Normal Distribution
# x is normal random variable
set.seed(20)
x <- rnorm(100)
e <- rnorm(100, 0, 2)
y <- 0.5 + 2*x + e
summary(y)
plot(x, y)

# Binomial Distribution
# x is binary variable (0,1)
set.seed(10)
x <- rbinom(100, 1, 0.5)
e <- rnorm(100, 0 ,2)
y <- 0.5 + 2*x + e
summary(y)
plot(x,y)

# Poisson Distribution
# log(u) = 0.5 + 0.3*x where b0 = 0.5 and b1 = 0.3
set.seed(1)
x <- rnorm(100)
log.mu <- 0.5 + 0.3*x
y <- rpois(100, exp(log.mu))
summary(y)
plot(x,y)

set.seed(1)
rpois(5, 2)

