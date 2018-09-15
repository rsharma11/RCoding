#Reading file as vector
vec1 <- scan(file = "/Users/vimal/RCoding/scan function/scan01.txt")

#Reading file as vector and matrix
scan(file = "/Users/vimal/RCoding/scan function/scan02.txt")
scan(file = "/Users/vimal/RCoding/scan function/scan02.txt", n = 10)

#Reading file as vector
scan(file = "/Users/vimal/RCoding/scan function/scan03.txt", what = "character")

#Reading 5 first rows of file as matrix of 2 columns and convert it to a data frame. 
as.data.frame(matrix(scan(file = "/Users/vimal/RCoding/scan function/scan04.txt"),ncol = 2, nrow = 5))

#Reading file as list
scan(file = "/Users/vimal/RCoding/scan function/scan05.txt", what = "list")

#Reading first 50 rows of a file as list
scan(file = "/Users/vimal/RCoding/scan function/scan05.txt", list(name = "", x="character", y=1), nlines = 50)

#Reading csv file as a list
scan(file = "/Users/vimal/RCoding/scan function/scan.csv", what = "list", sep = ";")

#Reading 10 rows of file as a list
scan(file = "/Users/vimal/RCoding/scan function/scan06.txt", what = "list", nmax = 6)

#Reading csv file as a list
scan(file = "/Users/vimal/RCoding/scan function/scan2.csv", what = "list", sep = ",")


