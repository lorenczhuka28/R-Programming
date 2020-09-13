# STR function
# str show the structure of an R object. It is an alternative to summary.

str(str)
str(ls)
x <- rnorm(100, 2, 4)
summary(x)
str(x)
f <- gl(4,7)
str(f)
summary(f)

library(datasets)
head(airquality)
str(airquality)

m <- matrix(rnorm(100), 10, 10)
str(m)

s <- split(airquality, airquality$Month)
str(s)