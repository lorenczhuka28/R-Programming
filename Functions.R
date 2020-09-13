
add1 <- function(a,b){
        a+b   # function returns the last expression
}

add1(3,5)

above_ten <- function(V){
             use <- V > 10
             V[use] # returns vector
}

above <- function(V, x = 10){
         use <- V > x
         V[use]
}

VV <- 1:20
above(VV, 12)
above(VV)
above_ten(VV)


# calculate mean of each column in a matrix or a dataframe

columnsmean <- function(M, removeNA = TRUE){
               nc <- ncol(M)
               colv <- vector("numeric", length=nc)
               for(i in 1:nc){
                 colv[i] <- mean(M[ , i], na.rm = removeNA)
               }
               colv
}

columnsmean(airquality)
columnsmean(airquality, FALSE)

colMeans(airquality, na.rm = TRUE) # OR there is a built in function to calculate mean of each column in dataframe

mydata <- rnorm(100)
sd(mydata)
sd(x=mydata, na.rm=FALSE)

args(lm) # show arguments of a function

f <- function(a, b=1, c=2, d=NULL){
  print(a)
  print(b)
  print(c)
  print(d)
}

f(d=4, a=1)


fun <- function(a,b){
    a^2
}

fun(3)


fu <- function(a,b){
      print(a)
      print(b)
}

fu(45) # error because b is not incialized (has no default value)

# The ... argument
# The ... argument is used when we extend a function (for example plot function)
# we might replicate some arguments and don't want to copy the entire other arguments of the function
myplot <- function(x, y, type="l", ...){
  plot(x, y, type="l", ...)
}

# The ... argument is also used when the nr of argument is not known
args(paste) # paste function takes some strings and concatinates them

# Any argument that appear after ... must be named explicitly(default values) and can not be partially matched
paste("a", "b", sep=":")
paste("a", "b", se=":")

paste("Programming", "is", "fun!")

telegram <- function(...){
  paste("START", ... , arg = "STOP", sep = " ") 
}

telegram("Lorenc", "Zhuka")

mad_libs <- function(...){
  args <- list(...)
  place <- args[["place"]]
  adjective <- args[["adjective"]]
  noun <- args[["noun"]]
  paste("News from", place, "today where", adjective, "students took to the streets in protest of the new", noun, "being installed on campus.")
}

mad_libs(place = "Tirane", adjective = "mbiemer", noun = "Emer")



mean(c(2, 4, 5))


# ?ls to find information about a specific function
# ls to find source code for a function

my_mean <- function(my_vector) {
  s <- sum(my_vector)
  l <- length(my_vector)
  s/l
}

my_mean(c(4, 5, 10))

remainder <- function(num, divisor=2) {
  rem <- num %% divisor
  rem
}

remainder(5)
remainder(11, 5)
remainder(divisor = 11, num = 5)
remainder(4, div = 2) # partiall matching arguments

args(remainder) #  see arguments of a function

# We can pass function as arguments in a function
evaluate <- function(func, dat){
  func(dat)
}

evaluate(sd, c(1.4, 3.6, 7.9, 8.8))
evaluate(sum, c(1.4, 3.6, 7.9, 8.8))

# anonymous function
evaluate(function(x){x+1}, 6) 
evaluate(function(V){ V[1]}, c(8, 4, 0)) # return first element of vector 
evaluate(function(V){V[length(V)]}, c(8, 4, 0)) # return last element of vector

# Create own binary operations 

"%mult_add_one%" <- function(left, right){
    left * right + 1
}

5 %mult_add_one% 2  # using the binary operator


"%p%" <- function(...){ # Remember to add arguments!
  paste(...)
}

"I" %p% "love" %p% "R!" # using the binary operator
