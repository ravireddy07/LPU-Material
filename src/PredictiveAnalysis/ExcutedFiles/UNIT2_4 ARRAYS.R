
# ***** CREATING ARRAYS ***** #

# CREATING VECTORS OF DIFFERENT LENGTH
A1=c(6,8,7)
A2=c(10,11,12,9,13,14)

# USING VECTORS AS INPUT TO ARRAY
ARRAY1=array(c(A1,A2),dim=c(3,3,2))
ARRAY1

A3=c(10,11,12,9,13,14,15)
ARRAY2=array(c(A1,A3),dim=c(3,3,1))
ARRAY2

ARRAY3=array(c(A1,A3),dim=c(3,3,2))
ARRAY3

# ASSIGNING NAMES TO ARRAYS
column.names <- c("COL1","COL2","COL3")
row.names <- c("ROW1","ROW2","ROW3")
matrix.names <- c("Matrix1","Matrix2")

ARRAY4 <- array(c(A1,A3),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
ARRAY4

# ***** ACCESSING ARRAY ELEMENTS ***** #

print(ARRAY4[3,,1])
print(ARRAY4[1,3,1])
print(ARRAY4[,,2])

# ***** MANIPULATING ARRAY ELEMENTS ***** #
A4 <- c(9,1,0)
A5 <- c(6,0,11,3,14,1,2,6,9)

ARRAY5=array(c(A4,A5),dim = c(3,3,2),dimnames = list(row.names,column.names,matrix.names))
ARRAY5

ARRAY5[3,3,2]=15
ARRAY5

A6=ARRAY5[3,3,2]
A6

A7=ARRAY5[3,,2]
A7
class(A7)

A8=ARRAY5[,,2]
A8
class(A8)

# ***** CALCULATION USING ARRAYS AND ARRAY ELEMENTS ***** #

ARRAY4[3,3,1]+5
ARRAY4[3,3,]+5
ARRAY4[,,]+5

ARRAY4+ARRAY5
ARRAY4-ARRAY5

MATRIX1=ARRAY4[,,2]
MATRIX2=ARRAY5[,,1]
class(MATRIX1)

MATRIX1+MATRIX2


# CALCULATIONS WITHIN ARRAY ELEMENTS

ARRAY1
ARRAY7=apply(ARRAY1,c(1),sum)
ARRAY7
