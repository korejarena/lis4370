#input the matrices
matrix1 <- matrix(1:100, nrow = 10)
matrix2 <- matrix(1:1000, nrow = 10)

#transpose matrix1 and 2
t(matrix1)
t(matrix2)

#create two vectors for each matrix
mat_vec1 <- c(1:2)
mat_vec2 <- c(1:4)

#multiply them by the matrices
mat_vec1_sum = matrix1 * mat_vec1
mat_vec2_sum = matrix2 * mat_vec2

#recreate vectors equal to the number of rows and columns for previous matrices
mat_vec1 = c(1:10)
mat_vec2 = c(1:100)

#multiply the matrices
matrix1 %*% mat_vec1
matrix2 &8& mat_vec2

#create the inverse of the matrices
mat_inverse = matrix(2:5, nrow = 2)

#Check matrix inverse
mat_inverse