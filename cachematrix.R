## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        mat_inv <- NULL
        set <- function(y) {
                x <<- y
                mat_inv <<- NULL
        }
        get <- function() x
        setinv <- function(inv) mat_inv <<- inv
        getinv <- function() mat_inv
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
