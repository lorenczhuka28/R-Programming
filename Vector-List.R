# SEQUENCE

sek1 <- seq(1, 20) # or 1:20, by default it increments by 1
sek2 <- seq(0, 10, by=0.5) # increments by 0.5
sek3 <- seq(5, 10, length=30) # generate 30 random numbers between 5 and 10
sek4 <- 1:length(sek1) # or seq(along.with = sek1)
sek5 <- seq_along(sek1)
sek6 <- rep(0, times=40) # sequence with 40 zeros
sek7 <- rep(c(0, 1, 2), times=10) # sequence where vector c replicates 10 times (same order)
sek8 <- rep(c(0, 1, 2), each=10) # sequence with 10 zeros, 10 ones, 10 twos
x <- 1:20
print(x)

## VECTORS 
## Vectors include elements of same class
v1 <- c(0.5, 0.6)
v1
v2 <- c(TRUE, FALSE)
v3 <- c("A", "b", "C")
v4 <- c(0.5, 0.6)
v5 <- c(1+5i, 2+5i)
v5
length(v5)

new <- numeric() # create empty numeric vector
new

an <- numeric(10) # create a vector with zeros of length 20
an

v3[2] # access vector elements


myvec <- c(5,7,11,15,16)
myvec[myvec > 10] <- 4
myvec

y <- vector("numeric", length=10)
y

# every element of vector will be in the same class
z <- c(1.6, "h")
z

var <- c(TRUE, 2)
var

# create vectors using other vectors
newvec <- c(v1, 3, 5, v2)

char <- c("My", "name", "is", "Lorenc")
p <- paste(char, collapse = " ")
paste("Hello", "world!", sep = " ") # concatenate strings
paste(1:3, c("X", "Y", "Z"), sep = "") # concatenate 2 vectors of same length, returns vector 1X, 2Y, 3Z
paste(LETTERS, 1:4, sep = "-") # returns vector

# convert object from one class to another using as.* function (must initialize with x to convert)
x <- 0:6
class(x)
as.numeric(x)
class(x)
as.logical(x)
x <- as.character(x)
class(x)

# can not convert from character to numeric
var1 <- c("a","b")
as.numeric(var1)


# length of vector -> nr of elements in vector
# each element has its own length for example element a has length 5
another <- c(a = 1:5, 2, 6, b = matrix(1:6, 2, 3), c = list(7,9,"lori"))


# LISTS
# List contain element of different classes (elements have double brackets)
list1 <- list(1, "a", TRUE, 1+4i)
list1
list1[3]

list2 <- list(5.6, "lori", FALSE, 7)
list2

t <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
t