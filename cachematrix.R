## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <- y
        inv <- NULL}
    get <- function(){
        x}
    getinv <- function(){
        inv}    
    setinv <- function(invmatrix){
        inv <<- invmatrix}
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    output <- x$getinv()
    if(!is.null(output)){
        message("getting cached data")
        return (output)
    }
    data <- x$get()
    output <- solve(data, ...)
    x$setinv(output)
    output
}
