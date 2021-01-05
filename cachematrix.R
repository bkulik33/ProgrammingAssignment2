## Put comments here that give an overall description of what your
## functions do

## Function caches a matrix & its inverse

makeCacheMatrix <- function(x = matrix()) {
      xinv <- NULL
      set <- function(y){
            x <<- y
            xinv <<- NULL
      }
get <- function() x
setxinv <- function(inv) xinv <<- inv
getxinv <- function() xinv
list(set=set,get=get,setinverse=setxinv,getinverse=getinv)
}


## Function inverts a matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      xinv <- x$getinverse()
      if(!is.null()){
            message("Getting cached data...")
            return(xinv)
      }
      matrixx <- x$get()
      xinv <<- solve(x)
      x$setinverse(xinv)
      xinv
}
