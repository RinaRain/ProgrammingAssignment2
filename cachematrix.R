## These two functions will store a matrix and also create its inverese


## This function will create a matrix which is in reality a list 
## This list, as in the vector function that contains a function to 
## 1) set the value of the matrix 2) get the value of the matrix 
## 3) set the value of the inverse 4) get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

  imatrix <- NULL
  set <- function(y){
    x <<- y
    imatrix <<- NULL
  }
  
  get <- function() x

  setinverse <- function(inverse) imatrix <<- inverse
  getinverse <- function() imatrix
  
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

  
}


#This function will calculate the inverse of a matrix
#But first it will check whether there is already a cached inverse
#If so it will give the results of the cache 

cacheSolve <- function(x, ...) {
  imatrix <- x$getinverse()
  if (!is.null(imatrix)) {
    message("getting cached data")
    return(imatrix)
  }
  data <- x$get()
  imatrix <- solve(data, ...)
  x$setinverse(imatrix)
  imatrix
}

