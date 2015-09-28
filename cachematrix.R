## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#  makeCacheMatrix() function takes a matrix as a argument. It has two setter and getter method 
#  to set the matrix values and get the matrix values and set inverse of the matrix and get th einverse of the matrix.
##
makeCacheMatrix <- function(x = matrix()) {
inverse<- NULL
  set<- function(y){
    x<<-y
    inverse<<-NULL
  }
  
  get<- function(){
    x
  }
  
  setInv<- function(inv) {
    inverse<<- inv
  }
  getInv<- function() {
        inverse
  }
  list(set = set, 
       get = get,
       setInv = setInv,
       getInv = getInv
       )
  
}


## Write a short comment describing this function
#  cacheSolve calculate inverse of a matrix and store it into the cache using setInv method if it is not set already.
##
cacheSolve <- function(x, ...) {
 ## Return a matrix that is the inverse of 'x'
 
 # get the inverse of the matrix 
  inverse<- x$getInv()
  
  # check if the inverse of the matrix is not null
  if(!is.null(inverse)){
   message("getting cached Data")
   return (inverse)
  }
  ## get the matrix
  DataMatrix<- x$get()
  ## calculate inverse of the matrix
  inv<- solve(DataMatrix)
  x$setInv(inv)
  inv
}

