## this function calculates a matrix and gets its inverse
## and stores it in cache
makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
}
get <- function()x
setinv <- function(solve) inv <<- solve 
getinv <- function()inv
list(set = set, get = get, setinv = setinv, getinv = getinv)
}




## this function calculates the inverse of a matrix set by the function makeCacheMatrix, checking first if such an inverse has been
## previously calculated and stored


cacheSolve <- function(x = matrix(), ...){
  m <- x$getinv()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
mat <- x$get()
m <- solve(mat, ...)
x$setinv(m)
m
}


