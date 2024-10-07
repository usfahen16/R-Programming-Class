# Module 6 Doing math in R part 2

# Create matrices
A <- matrix(c(2,0,1,3),ncol=2)
B <- matrix(c(5,2,4,-1),ncol=2)
A+B
A-B
# use diag function to build a matrix of size 4
# with the following values in the diagonal 4,1,2,3
diagonal_values <- c(4,1,2,3)
matrix_diag <- diag(diagonal_values)
matrix_diag

#Generate the matrix as seen in the instructions.
matrix_2 <- diag(3,5)

#Modify first row
matrix_2[1,] <- 1
matrix_2[1,1] <- 3

# Modify the first column
matrix_2[2:5,1] <- 2

matrix_2
