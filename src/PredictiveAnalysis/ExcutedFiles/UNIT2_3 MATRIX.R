# CREATING MATRIX
M1 <- matrix(c(3:14), nrow = 4, byrow = TRUE)
print(M1)

M2 <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(M2)

M3 <- matrix(c(3:14), nrow = 3, byrow = FALSE)
print(M3)

M4 <- matrix(c(3:14), ncol = 2, byrow = FALSE)
print(M4)

M5 <- matrix(c(3:14), ncol = 2, nrow = 4 ,byrow = FALSE)
print(M5)

M6 <- matrix(c(3:14), ncol = 5, nrow = 4, byrow=TRUE)
print(M6)

M7 <- matrix(c(3:14), ncol = 4, nrow = 4, byrow=TRUE)
print(M7)

M8 <- matrix(c(3:14), nrow = 4, byrow = FALSE)
print(M8)

# ASSIGNING COLUMN NAMES AND ROW NAMES 
rownames = c("row1", "row2", "row3", "row4")
colnames = c("col1", "col2", "col3")

MATRIX1 <- matrix(c(3:14), nrow = 4, byrow = TRUE, dimnames =list(rownames, colnames))
print(MATRIX1)

# ACCESSING VALUES FROM MATRIX

print(MATRIX1[4,2])
print(MATRIX1[,2])
print(MATRIX1[4,])
print(MATRIX1[4])

# ASSIGNING VALUES IN CREATED MATRIX
MATRIX1[4,2]=5
print(MATRIX1)

(MATRIX1[1,1]=4)

# MATCHING VALUES OF MATRIX
MATRIX1[4,2]==5
MATRIX1[4,2]!=5

# CALCULATION USING MATRIX
MATRIX2 <- matrix(c(3, 9, -1, 4, 2, 6), nrow = 2)
MATRIX3 <- matrix(c(5, 2, 0, 9, 3, 4), nrow = 2)
Result=MATRIX2+MATRIX3
Result
cat("Result of MATRIX2+MATRIX3","\n",Result)
print(paste("Result of MATRIX2+MATRIX3",Result))

# TRANSPOSE OF A MATRIX
MATRIX1
t(MATRIX1)
MATRIX1+t(MATRIX1)

# FOR ADDING MATRIX WITH ITS TRANSPOSE DIMENSIONS OF MATRIXES SHOULD BE SAME
MATRIX4 <- matrix(c(1:9), nrow = 3)
print(MATRIX4)
MATRIX4+t(MATRIX4)
