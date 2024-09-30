# Module 5 HW
A <- matrix(1:100,nrow=10)
B <- matrix(1:1000,nrow=10)

# Transpose
At <- t(A)
Bt <-t(B)

# Create vectors
A_vector <- c(1:10)
B_vector <- c(1:100)

#Multiply the matrices by the vectors
A_multiplied <- A%*%A_vector
B_multiplied <- B%*%B_vector

#reassign the vectors a and b to equal the number of rows of the column for the
#corresponding matrix.
A_vector <- nrow(A)
B_vector <- nrow(B)

# Multiply the matrix by a matrix
AB <- A%*% B

# Inverse the matrix
S <- matrix(2:4,nrow=2)
solve(S)

#check det
det(S)
det(A)
det(B)
