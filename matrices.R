# matrices

A = matrix(1:10, nrow = 5)
B = matrix(21:30, nrow = 5)
C = matrix(21:40, nrow = 2)
D = matrix(21:40, nrow = 2, byrow = TRUE)

A
B
C
D
t(C) #transpose
nrow(A)
ncol(A)
dim(A)

# add them
A + B

# multiply them
A * B

# see if the elements are equal
A == B

# matrix multiplication
A %*% t(B)

colnames(A)
rownames(A)

colnames(A) = c("Left", "Right")
rownames(A) = c("1st", "2nd", "3rd", "4th", "5th")

A
B

A[1,]
A[2, 1]
A[,1]

A[1,1] = 100
A

A[2,] = c(10, 10)
A

A[1, 1] = "10"
A
