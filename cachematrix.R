## these functions will be used caching an inverse of matrix

## folowing function will be used generate a special matrix

makeCacheMatrix <- function(x = matrix()) {
    inv_mat <- matrix()
    get_matrix <- function() x
    get_inv_matrix <- function() inv_mat
    set_inv_matrix <- function(in_ma) inv_mat <<- in_ma
    list(get_matrix = get_matrix,get_inv_matrix = get_inv_matrix, set_inv_matrix = set_inv_matrix)
    
}


## Following function will be used to calaculte the inverse of the matrix or to retrive the inverse
## of a matrix

cacheSolve <- function(x, ...) {
    inv_mat <- x$get_inv_matrix() 
    if (!is.na(inv_mat[1,1])) {
        message("Taking the value from cache")
        return (inv_mat)
    }
    matrixx <- x$get_matrix()
    inv_mat <- solve(matrixx)
    x$set_inv_matrix(inv_mat)
    inv_mat
}
