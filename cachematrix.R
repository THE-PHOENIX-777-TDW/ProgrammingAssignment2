## Put comments here that give an overall description of what your
## functions do

## This makes a cache of matrix

makeCacheMatrix <- function(x = matrix()) {
  v <- NULL
  set <- function(y){
    x <<- y
    v <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) v <<- inverse
  getInverse <- function() v
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
       
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## The Function cachesolve return an inverse 
  v <- x$getInverse()
  if(!is.null(v)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  v <- solve(mat,...)
  x$setInverse(v)
  v
}
