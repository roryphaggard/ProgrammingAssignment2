## Matrix calculation can be costly from a computational perspective.
## These functions will allow you to work from a cache when available. 

## This function can supply a cached inverse matrix to cacheSolve if available
makeCacheMatrix <- function(x = matrix()) {
    initialMatrix <- function()
        x <<- y
        m <<- NULL
    getMatrix <- function() x
    setCache <- function(cache) m <<- m
    getCache <- function() m
    ## List the available functions when calling this function directly
    list(setCache = setCache, 
         getCache = getCache,
         initialMatrix = initialMatrix)
    }

## This function will provide the inverse of the input matrix
cacheSolve <- function(x, ...) {
    ## Retrieve cache if available
    m <- x$getCache
    if(!is.null(m)){
        message("retrieving cached matrix")
        return(m)
    }else{
    ## If no cache is available, invert the matrix provided and then cache it  
    invertMatrix <- solve(x$`initialMatrix`)
    x$setCache(invertMatrix)    
    m <- invertMatrix
    ## Return a matrix that is the inverse of 'x'
    return(m)
    }
}
