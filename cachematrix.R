## Function to cache the matrix inverse
## 

## Input only invertible square matrices

makeCacheMatrix <- function(mat = matrix()) {
        mat_inv <- NULL
        set <- function(y) {
                mat <<- y
                mat_inv <<- NULL
        }
        get <- function() mat
        setinv <- function(inv) mat_inv <<- inv
        getinv <- function() mat_inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Returns the INVERSE of the matrix passed as argument
## Returns the CACHED INVERSE MATRIX, if the matrix has not changed
## Returns the CALCULATED INVERSE and caches it, if the matrix is new

cacheSolve <- function(mat, ...) {
        mat_inv <- mat$getinv()
        if(!is.null(mat_inv)) {
                message("Getting cached data")
                return(mat_inv)
        }
        mat <- mat_inv$get()
        mat_inv <- solve(mat, ...)
        mat$setinv(mat_inv)
        mat_inv
        ## Return a matrix that is the inverse of 'mat'
}
