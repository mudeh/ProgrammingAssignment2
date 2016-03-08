## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  calc_val <- NULL
  set <- function (y) {
    x <<- y
    calc_val <<- NULL
  }
  get <- function () x
  set_inv <- function (inv){
    #inv <- solve(x)
    calc_val <<- inv
  } 
  get_inv <- function () calc_val
  list(set = set, get = get, set_inv=set_inv,get_inv=get_inv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  if(identical(x,get)) { 
    calc_val <- x$get_inv()
  
   if(!is.null(calc_val)) {
    message("getting cached data")
    return(calc_val)
  }
}

  data <- x
  calc_val <- solve(data)
  x$set_inv (calc_val)
  calc_val
}
