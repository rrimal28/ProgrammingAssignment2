## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# it is given that x is invertible matrix
# contains function to
# set the matrix
# get the matrix
# set the inverse
# get the inverse

 inv = NULL
  set = function(y){
  x << y 
  inv << NULL
  }
 get = function(x)
 setinviron = function(inverse) inv << inverse
 getinviron = function() inv
 list(set=set,get=get,setinviron=setinviron,getinviron=getinviron)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inv = x$getinv()
		# condition for inverse calculation
		# if inverse is already calculated
		if(!is.null(inv)){
		message("Cached data is available")
		return(inv)}
		
		# if not use following logic
		mData = x$get()
		inv = solve(mData,...)
		
		# set the values
		x$setinv(inv)
		return(inv)
		
		
}
