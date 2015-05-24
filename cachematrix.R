# Cache Matrix

## makeCacheMatrix can cache its inverse matrix object
#1. sets the value of the matrix
#2. gets the value of the matrix
#3. sets the value of the inverse
#4. gets the vlaue of the inverse

makeCacheMatrix  <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
		}
		get <- function() x
		setinv <- function(solve) i <<- solve
		getinv <- function() i
		list(set = set,get = get,setinv = setinv, getinv - getinv)
		}
		
# CacheSolve is a function that computes the inverse of the matrix created above. 
		
cachesolve <- function(x, ...) {
	i<- x$getinv()
	if (!is.null(i)) {
		message("getting cached data")
		return(i)
		}
		data <- x$get()
		i <- solve(data, ...)
		x$setinv(i)
		i
		}
