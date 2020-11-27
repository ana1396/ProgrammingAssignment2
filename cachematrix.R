## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function creates a special matrix, which contains those calculations:
#1.set the value for the matrix
#2 get the value for the matrix
#3 set the value for the matrix
#4 get the value for the matrix 

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) m <<- inverse
    getinverse <- function() m
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
  }
  
## Write a short comment describing this function
#this function returns an inverse of matrix 

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}

