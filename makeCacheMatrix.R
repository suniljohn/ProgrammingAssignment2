# Caching the Inverse of a Matrix:
# Matrix inversion is usually a costly computation and there may be some benefit to caching the inverse 
# of a matrix rather than compute it repeatedly. Below are a pair of functions that are used to create 
# a special object that stores a matrix and caches its inverse.

#This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
    }
  
  get <- function() x
  
  setInverse <- function(inverse) i <<- inverse
  getInverse <- function() i
  list(set = set, 
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  }