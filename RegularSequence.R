#Expected output: 2, 5, 8, 11
seq(from = 2, to = 11, by = 3)

#Expected output: 9, 18, 27, 36, 45
seq(from = 9, to = 45, by = 9)

#Expected output:9, 18, 27, 36, 45, 54, 63, 72, 81, 90
seq(from = 9, to = 90, by = 9)
seq(from = 9, to = 90, length.out =  10)

seq(from = -10, to = 10, length.out = 5)

x <- 5
1:x-1
1 : (x-1)

a <- c(1,2,3,4)
seq(along.with = a)

#Expected output:5, 4, 3, 2, 1
seq(from = 5, to = 1, by = -1)

x <- c(1, 2, 3, 4)
#Expected output: 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4
rep(x, 3)

#Expected output: 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4
rep(x, each=3)
