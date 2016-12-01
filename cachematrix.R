## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setfunc <- function(inverse) m <<- inverse
  getfunc <- function() m
  list(set = set, get = get, setfunc = setfunc,getfunc = getfunc)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getfunc()
  if (!is.null(m)){
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setfunc(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
