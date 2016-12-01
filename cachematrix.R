## Week3-Assigment
## Function to chache the inverse of matrix
makeCacheMatrix <- function(x = matrix()) {
## Initialize inverse
   inv <- NULL
## Setup the matrix   
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  
## Get the matrix
  get <- function() x
## To set the inverse
  setfunc <- function(inverse) inv <<- inverse
## To get the inverse of matrix  
  getfunc <- function() inv
## Returns a list of functions  
  list(set = set, get = get, setfunc = setfunc, getfunc = getfunc)

}


## To retrive the inverse

cacheSolve <- function(x, ...) {

## Return inverse of matrix
  inv <- x$getfunc()
## Return the inverse matrix if it is already in memory  
  
  if (!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  
## Get the original matrix
  data <- x$get()
## Compute the reverse
  inv <- solve(data, ...)
## Sets the inverse 
  x$setfunc(inv)
## Returns the inverse of original matrix  
  
  inv
       
}
