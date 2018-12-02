## These are functions that cache an inverse of a matrix and then computes and returns that inverse.

## This function takes the matrix, sets, gets and stores the inverse for other use.

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
        set <- function(y) {
                x <<- y
                a <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) a <<- inverse
        getinverse <- function() a
        list(set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## This function computes the inverse returned by the makeCacheMatrix function.

CacheSolve <- function(x, ...) {
        a <- x$getinverse()
        if (!is.null(a)) {
                message("getting cached data")
                return(a)
        }
        data <- x$get()
        a <- solve(data, ...)
        x$setinverse(i)
        a
}