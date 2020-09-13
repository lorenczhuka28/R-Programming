

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


var <- matrix(c(0,1,1,0,1,0,1,0,1), 3, 3)
mat1 <- makeCacheMatrix(var)
mat1 # list with functions implementation 
mat1$get() # matrix


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

mat1$getInverse() # inverse is NULL
cacheSolve(mat1) # inverse matrix 

inverse <- solve(mat1$get()) # inverse of matrix x
mat1$setInverse(c())
cacheSolve(mat1) # inverse matrix is already calculated
