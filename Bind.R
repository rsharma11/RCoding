a <- 1:5 ; b <- 1:5
cbind(a,b)
a <- 1:5 ; b <- c('1', '2', '3', '4', '5')
a <- 1:5 ; b <- 1:4; c <- 1:3
rbind(a,b)
a <- matrix(1:12, ncol=4); b <- matrix(21:35, ncol=5)
a <- matrix(1:12, ncol=4); b <- matrix(21:35, ncol=3) #Not Possible to bind column wise
a <- matrix(1:39, ncol=3); b <- matrix(LETTERS, ncol=2)

a <- matrix(1:1089, ncol=33)
head(rep(a,20))