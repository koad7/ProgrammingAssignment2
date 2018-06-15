## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    ## set the matrix
    matrixset <- function( matrix ) {
                    innermatrix <<- matrix
                    inv <<- NULL
    }

    ## Method the get the matrix
    matrixget <- function() {
    	innermatrix
    }

    ## Setting the inverse of the matrix
    matrixInversSet <- function(matrixInverse) {
        inv <<- matrixInverse
    }

    ## getting the inverse of the matrix
    matrixInversGet <- function() {
        ## Return the inverse property
        inv
    }

    ## Return value
    list(matrixset = matrixset, matrixget = matrixget,
         matrixInversSet = matrixInversSet,
         matrixInversGet = matrixInversGet)


}


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        matrix <- x$matrixInversGet()
        ##In case the inverse is already there
        if( !is.null(m) ) {
                return(m)
        }
        ## Get the matrix
        matrixdata <- x$matrixget()
        
        ##Matrix inverse 
        innermatrix <- solve(matrixdata) %*% matrixdata
        
        x$matrixInversSet(innermatrix)
        
        innermatrix
}
