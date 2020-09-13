
# Functions for probability distributions : rnorm (normal distribution), dnorm(probability density), 
# pnorm(cumulative distribution function for normal distribution), rpois(Poisson distribution)
# d for density , r for random numbers distribution, p for cumulative distribution, q for quantile function

str(dnorm)
str(pnorm)
str(qnorm)
str(rnorm)

x1 <- rnorm(10)
x1

y1 <- rnorm(10, 20, 2)
y1
summary(y1)

# generate a particular sequence of random numbers
set.seed(1)
rnorm(5)
rnorm(5)

# if we set the seed=1 again, the same sequence will be generated
set.seed(1)
rnorm(5)
rnorm(5)

# We always must set seed to ensure reproducibility (we can go back to same result)

rpois(10, 1)
rpois(10, 2)
my_pois <- replicate(100, rpois(5, 10)) # matrix, each column has 5 poisson observations with mean 10 
cm <- colMeans(my_pois) 
hist(cm)

# cumulative distribution
ppois(2, 2) # probability that x<=2 where lambda=2 
ppois(4, 2) # probability that x<=4 where lambda=2 
ppois(6, 2) # probability that x<=6 where lambda=2 


rbinom(1, size=100, prob=0.7)
flips2 <- rbinom(100, 1, prob=0.7)
sum(flips2) # close to 70

