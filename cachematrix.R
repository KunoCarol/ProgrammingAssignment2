## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## A matrix inversion is usually a costly computation
## It may therefore be easier to cache it rather than compute repeatedly which is time cumberson
## The following functions illustrate the computation

makeCacheMatrix <- function(x = matrix()) {
        in<- NULL        
        set <- function(y)                
             x<<-y        in<<-NULL
}
        get <- function() x
                setInverse <- function(inverse) inv <<- inverse
                        getInverse <- function() inv
                         list(set = set, get = get, setInverse = setInverse,getInverse = getInverse)
          }

   ## Write a short comment describing this function
  
   ## This function computes the inverse of the special "matrix" created
   ## makeCacheMatrix above. If the inverse has already been calculated
   ## If the matrix has not changed, then it will retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()        
        if (!is.null(inv)) {  message("getting cached data")                
                            return(inv)}
        mat <- x$get()        
        inv <- solve(mat, ...)       
        x$setInverse(inv)       
        inv
}
