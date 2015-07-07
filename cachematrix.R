## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(original = matrix()) {
  inverse <- NULL
  
  get <- function()
  {
    original
  }
  
  set <- function(newMatrix)
  {
    original <<- newMatrix
    inverse <<- NULL
  }
  
  setInverse <- function(newInverse)
  {
    inverse <<- newInverse
  }
  
  getInverse <- function()
  {
    inverse
  }

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inverse <- x$getInverse()
  
  if(!is.null(inverse))
  {
    message("getting cached data")
    return(inverse)
  }
  
  original <- x$get()
  inverse <- solve(original)
  x$setInverse(inverse)
  inverse
}
