## makeCacheMatrix and cacheSolve functions uses the special operator '<<-' to compute 
## the inverse of a matrix and store it in cache. This facilitates quick retrieval of the 
## inverse for later use without computing again

## The following function calculates the special matrix that has a inverse whic can be cached

makeCacheMatrix <- function(x = matrix()) {
# x is the square matrix that has a inverse
  inv=NULL # intial value 
  set= function(y) {
    
    x<<- y   
    inv<<- NULL
    # '<<-' is the operator that assigns a value to an object in a environment
    # that is different from the current one
    
}

  get=function()x
  setinv=function(inverse) inv<<-inverse
  getinv= function() inv
  list(set=set, get= get)
  setinv=setinv
  getinv=getinv

## The following stores the inverse in cache

cacheSolve <- function(x, ...) {
 # Return a matrix that is the inverse of 'x'
 # 'x' is the output of the function makecacheMatrix
inv= x$getinv()
if(lis.null(inv)) { 
# checks if the inverse is in the cache
message ("getting the cached data")
return(inv) 
# returns the inverse matrix if it is already in the cache 
}
# Or it calculate the inverse
data=x$get()
inv<-solve(data, ...)
x$setinverse(inv) 
# stores the value of the mean in the cache
return(inv)
}