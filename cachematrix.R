## Matrix calculation can be costly from a computational perspective.
## These functions will allow you to work from a cache when available. 

## This function supply a cached inverse matrix to cacheSolve if available
makeCacheMatrix <- function(x = matrix()) {

}


## This function will provide the inverse of the input matrix
cacheSolve <- function(x, ...) {
        if(is.null(m)){
            library(MASS)
            solution <- ginv(x)
            makeCacheMatrix(solution)
        }else{
            retrieveM
            solution <- m
        }
        ## Return a matrix that is the inverse of 'x'
        return(solution)
}

