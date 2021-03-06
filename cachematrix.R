## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	matrix_inverse<-NULL
	set <- function (y){
		x <<-y
		matrix_inverse<<-NULL
	}
	get <- function() x
	setinverse <- function(solve) matrix_inverse <<-solve
	getinverse <- function() matrix_inverse
	list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrix_inverse<-x$getinverse()
	if(!is.null(matrix_inverse)){
		message("getting cached data")
		return(matrix_inverse)
	}
	data<-x$get()
	matrix_inverse<-solve(data,...)
	x$setinverse(matrix_inverse)
	matrix_inverse
}
