## Graeme Hoyle
## Programming Assignment 2
## 07:29 21/06/2014

## 
## Set value of the matrix
## Get value of the matrix
## Set value of the inverse
## Get value of of the inverse

makeCacheMatrix <- function(x = matrix()) {
    
    ## create the cache
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    
    ## create the functions
    get <- function() x
    setimatrix <- function(invert) m <<- invert
    getimatrix <- function() m
    
    
    ## return the list of functions
    list(set = set, get = get,
         setimatrix = setimatrix,
         getimatrix = getimatrix)

}

## check the matrix is not chached
## check the matrix is unchanged
## return the inverted matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    ## inspect the cache for the inverted matrix
    im <- x$getimatrix()
    
    ## return inverted matrix if cache is not null
    if(!is.null(im)) {
        
        message("getting cached matrix")
        
        ## before returning the matrix check it is the inverse
        ## of the matrix passed in
        
        if(##matrix compare is true){
            return(im)            
        }
        else {
            message("matrix has changed")            
        } 
    }
    
    ## get the matrix and invert
    m <- x$get()
    solve(m)
    
    ## set the cache with the inverted matrix and return
    x$setimatrix(m)
    return m
}
