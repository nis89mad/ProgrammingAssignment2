## these functions will be used in caching an inverse of matrix

## folowing function will be used generate a special matrix

makeCacheMatrix <- function(x = matrix()) {
    inv_mat <- NULL
    set_matrix <-  function(y) {
        x <<- y
        inv_mat <<- NULL
    }
    get_matrix <- function() x
    get_inv_matrix <- function() inv_mat
    set_inv_matrix <- function(in_ma) inv_mat <<- in_ma
    list(set_matrix = set_matrix,get_matrix = get_matrix,get_inv_matrix = get_inv_matrix, set_inv_matrix = set_inv_matrix)
}


## Following function will be used to calaculte the inverse of the matrix or to retrive the inverse
## if it is alredy cached

cacheSolve <- function(x, ...) {
    inv_mat <- x$get_inv_matrix() 
    if (!is.null(inv_mat)) {
        message("Getting cached data")
        return (inv_mat)
    }
    matrixx <- x$get_matrix()
    inv_mat <- solve(matrixx)
    x$set_inv_matrix(inv_mat)
    inv_mat
}
