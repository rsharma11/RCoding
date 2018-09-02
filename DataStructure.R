v <- runif(10, -100, 100)
a <- matrix(data = seq(from = 26, length.out = 25, by = 2), nrow = 5, ncol = 5)
s <- LETTERS[match("C", LETTERS):(match("C", LETTERS)+19)]

l <- list(a = v,b = a,c = s)
length(l)
structure(l)

m <- unlist(l, use.names=FALSE)
x <- array(l)