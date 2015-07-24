## Matrix calculation can be costly from a computational perspective.
## These functions will allow you to work from a cache when available. 

## This function supply a cached inverse matrix to cacheSolve if available
makeCacheMatrix <- function(x = matrix()) {
    initialMatrix <- function()
        x <<- y
        m <<- NULL
    getMatrix <- function() x
    setCache <- function(cache) m <<- m
    getCache <- function() m
    list(setCache = setCache, 
         getCache = getCache,
         initialMatrix = initialMatrix)
    }


## This function will provide the inverse of the input matrix
cacheSolve <- function(x, ...) {
    library(MASS)
    m <- x$getCache
    if(!is.null(m)){
        message("retrieving cached matrix")
        return(m)
    }
    matrix <- x$getMatrix
    invertMatrix <- ginv(matrix)
    x$setCache(invertMatrix)    
    m <- invertMatrix
    ## Return a matrix that is the inverse of 'x'
    return(m)
}
