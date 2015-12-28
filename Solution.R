source("makecachematrix.R")
source("cacheSolve.R")

#Set the matrix
my_matrix <- makeCacheMatrix(matrix(1:4, 2, 2))

#Get the matrix
my_matrix$get()

#Get the inverse
my_matrix$getInverse()

#Get the cache result - will return NULL value
cacheSolve(my_matrix)

#get the cached data
cacheSolve(my_matrix)

#get the inverse
my_matrix$getInverse()

#set the matrix
my_matrix$set(matrix(c(2, 2, 1, 4), 2, 2))

#get the matrix
my_matrix$get()

#Get the inverse
my_matrix$getInverse()

#Get the cache result - will return NULL value
cacheSolve(my_matrix)

#get the cached data
cacheSolve(my_matrix)

#Get the inverse
my_matrix$getInverse()
