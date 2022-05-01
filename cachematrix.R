## Assignment Week 3 - programming (Lexical Scoping) & peer review


## This function receives a matrix (which is invertible by assumption), calculates its inverse,
## and then caches the inverse into an object "inv" that is accessible in global environment.

makeCacheMatrix <- function(x = matrix()) {
  inv = NULL
  y <- solve(x)
  inv <<- y
}


## This function first checks whether there is already a value for the invserse of matrix x, and
##  if so, it returns that. Otherwise it calculates the invserse of matrix x and returns its value.

cacheSolve <- function(x) {
  if (!is.null(inv) && solve(x)==inv) {
    message("getting cached data")
    return(inv) 
  }
  else {
    inv <- solve(x)
    message("calculating anew")
    return (inv)
  }  
}
