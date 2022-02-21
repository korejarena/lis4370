#Question 1
#make the matrices
mat_A <- matrix(c(2,0,1,3), ncol = 2)
mat_B <- matrix(c(5,2,4,-1), ncol = 2)

#add and subtract the matrices together
mat_A + mat_B
mat_A - mat_B

#-------------------------------------------------------------------------------
#Question 2
#make the diagonal matrix using diag()
mat_C <- diag(c(4,1,2,3))
mat_C

#-------------------------------------------------------------------------------
#Question 3
#generate the matrix using diag()
#to replicate the matrix I had to make the existing values/rows using diag()
mat_columns <- diag(x=3, nrow = 5)
#next I use rbind and cbind to include the rows and columns
mat_D <- cbind(mat_columns, rbind(c(1,1,1,1), diag(3,4)))
mat_D