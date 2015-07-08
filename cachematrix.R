## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(original = matrix()) {
  inverse <- NULL
  
  #gets the original matrix
  get <- function()
  {
    original
  }
  
  #sets the original matrix
  set <- function(newMatrix)
  {
    original <<- newMatrix
    inverse <<- NULL
  }
  
  #sets the inverse of the original matrix
  setInverse <- function(newInverse)
  {
    inverse <<- newInverse
  }
  
  #gets the inverse of the original matrix
  getInverse <- function()
  {
    inverse
  }
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  #assigns inverse as the inverse of the original matrix
  inverse <- x$getInverse()
  
  #if there exists an inverse then print it
  if(!is.null(inverse))
  {
    message("getting cached data")
    return(inverse)
  }
  
  #else
  #store the original
  #solve for the inverse
  #set and print the inverse
  original <- x$get()
  inverse <- solve(original)
  x$setInverse(inverse)
  inverse
}