m1 <- matrix(c(1/2, -1/4, -1, 3/4), nrow = 2, ncol = 2)
I2 <- matrix(c(1,0,0,1), nrow = 2, ncol = 2)
n1 <- matrix(c(6,2,8,4), nrow = 2, ncol = 2)
m1 %*% n1
n1 %*% m1
solve(m1)
solve(n1)
myMatrix_object <- makeCacheMatrix(m1)
cacheSolve(myMatrix_object)
cacheSolve(myMatrix_object)

n2 <- matrix(c(5/8, -1/8, -7/8, 3/8), nrow = 2, ncol = 2)
myMatrix_object$set(n2)
cacheSolve(myMatrix_object)
cacheSolve(myMatrix_object)

source("cachematrix.R")
testmtx <- matrix(c(1,0,0,1), 2,2)
testmtx
solve(testmtx)
cachedtestmtx <- makeCacheMatrix(testmtx)
cacheSolve(cachedtestmtx)
cacheSolve(cachedtestmtx)
testmtx2 <- matrix(c(9,1,9,7,2,3,6,7,8,0,3,1,4,1,5,9), 4,4)
testmtx2
cachedtestmtx$set(testmtx2)
cachedtestmtx$get() 
cacheSolve(cachedtestmtx)
cacheSolve(cachedtestmtx)
cacheSolve(cachedtestmtx) %*% testmtx2
round(cacheSolve(cachedtestmtx) %*% testmtx2, digits = 4)
