## Matrix inversion is usually a costly computation and there 
## may be some benefit to caching the inverse of a matrix 
## rather than compute it repeatedly. These functions cache 
## a matrix once an inversion has been calculated.

## This function creates a list object to hold a matrix,
## the matrices inverse and two functions to get and set
## the cached inverse of the matrix.

makeCacheMatrix <- function(x = matrix()) {
  inv <-NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv <<- solve
  getinv <- function () inv
  list(set = set, get = get, 
       setinv = setinv,
       getinv = getinv)
}


## This function calculates the inverse of a matrix 
## if it has not already been cached. If it has already 
## been computed and cached the cached value is retireved.
## It uses the object created in the makeCacheMatrix function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}