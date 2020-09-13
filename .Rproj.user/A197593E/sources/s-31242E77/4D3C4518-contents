
# makeVector is function but it behaves like a R class(object) with has same attributes and functions

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}

vec <- makeVector() # create empty vector
vec # list with the functions
vec[2] # prints second function (get)
vec$set(c(4,5,6,7,8)) # initilatizes the vector
vec$get()  # returns the vector
vec$getmean() # NULL at this moment mean is not calculated

vect <- makeVector(c(4,5,6,7,8))
vect
vect$get()
vect$getmean()
vect$set(c(12,13,14))
vect$get()
vect$getmean() # NULL because mean is not calculated


cachemean <- function(x, ...) { # takes argument the function makeVector (instance of the function)
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}

cachemean(vec) # mean is not calculated, it calculates the mean of te vector and returns it

mean <- mean(vec$get())
vec$setmean(mean) 
cachemean(vec) # mean is already calculated
