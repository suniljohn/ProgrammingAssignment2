# This function computes the inverse of the special "matrix" created by makeCacheMatrix above. If the inverse 
# has already been calculated (and the matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
  # Return a matrix that is the inverse of 'x'
  i <- x$getInverse()
  
  if (!is.null(i)) {
    message("getting the cached data")
    return(i)
  }
  
  m <- x$get()
  i <- solve(m, ...)
  
  x$setInverse(i)
  
  i
}