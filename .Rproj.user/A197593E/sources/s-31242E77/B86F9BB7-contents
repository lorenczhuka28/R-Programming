

makeCacheMatrix <- function(x){
  inverse <- NULL
  set <- function(y){
    x <<- y 
    inverse <<- NULL
  }
  
  get <- function() x
  
  setInverse <- function(y){
    inverse <<- y
  }
  
  getInverse <- function() inverse  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}



cacheSolve <- function(x){
  inverse <- x$getInverse()
  if(!is.null(inverse)){
    message("Inverse matrix is already calculated")
    return(inverse)
  }
  
  matrix <- x$get()
  inverse <- solve(matrix)
  x$setInverse(inverse)
  inverse
}


