#Creating vector and binding to make 2 by 3 matrix
A <- c(1,2,3)
B <- c(4,5,6)
rbind(A, B)

#Creating matrix (3*3) from 1 to 9 and checking the class
mat <- matrix(data = 1:9, nrow = 3)
mat
class(mat)
is.matrix(mat)

#Creating matrix (5*5) from 1 to 25 and toprow 1-5
mat2 <- matrix(data = 1:25, nrow = 5, byrow = T)
mat2

#Slicing from mat2
mat2[2:3, 2:3]
mat2[4:5, 4:5]

#Sum of mat2
sum(mat2)

# Use runif to create 4*5 matrix of 20 random numbers
matrix(data = runif(n = 20, min = 1, max = 100), nrow = 4)

