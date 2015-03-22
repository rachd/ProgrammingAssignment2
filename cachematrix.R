##These functions create a matrix and cache its inverse for future use

##this function creates a matrix
##set creates the matrix, get retrives it from the cache
##setinverse calculates the inverse, getmean retrieves it
makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, get = get, setinverse=setinverse, getinverse=getinverse)
}



##this function calculates the inverse of the matrix and caches it\
##it checks if the inverse has already been calculated, returning it if it has
##otherwise, the inverse is calculated and stored
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}